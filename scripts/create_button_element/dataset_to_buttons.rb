require 'yaml'
require 'json'

sources = YAML.load_file("#{__dir__}/../../dataset/sources.yml")
data = []

Dir.glob("#{__dir__}/../../dataset/sounds/**.yml") do |filepath|
  data << YAML.load_file(filepath)
end

data.flatten!

sounds = data.sort_by { |sound| [sound['ruby'],sound['fileName']] }.map do |sound|
  source = sources['sources'].find { |s| s['tag'] == sound['source'] }
  puts "=== source が設定されていない #{sound['source']} ===" if source.nil?
  source_name = ''
  source_url = ''
  source_name = source['title'] unless source.nil?
  source_url = source['url'] unless source.nil?
  category = sound['category'].join(',')
  clip_url = sound['clipUrl']
  movie_file_name = sound['fileName'].gsub(/\.wav$/, '.mp4')
  movie_file_name = "" unless File.exist?("#{__dir__}/../../public/sounds/#{movie_file_name}")
  normalize_file_name = sound['fileName'].gsub(/\.wav$/, '-normalized.wav')
  normalize_file_name = "" unless File.exist?("#{__dir__}/../../public/sounds/#{normalize_file_name}")
  {
    name: sound['name'],
    ruby: sound['ruby'],
    fileName: sound['fileName'],
    normalizedFileName: normalize_file_name,
    movieFileName: movie_file_name,
    sourceName: source_name,
    sourceUrl: source_url,
    category: category,
    clipUrl: clip_url
  }
end

File.write("#{__dir__}/../../public/dataset/sounds.json", JSON.pretty_generate(sounds))
