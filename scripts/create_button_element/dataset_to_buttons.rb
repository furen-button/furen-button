require 'yaml'

sources = YAML.load_file("#{__dir__}/../../dataset/sources.yml")
data = []

Dir.glob("#{__dir__}/../../dataset/sounds/**.yml") do |filepath|
  data << YAML.load_file(filepath)
end

data.flatten!

File.open("#{__dir__}/results/buttons.html", "w") do |f|
  data.sort_by { |sound| [sound['ruby'],sound['fileName']] }.each do |sound|
    source = sources['sources'].find { |s| s['tag'] == sound['source'] }
    STDERR.puts "=== source が設定されていない #{sound['source']} ===" if source.nil?
    source_name = ''
    source_url = ''
    source_name = source['title'] unless source.nil?
    source_url = source['url'] unless source.nil?
    category = sound['category'].join(',')
    clip_url = sound['clipUrl']
    f.puts %Q{  <div class="sounds" data-file="#{sound['fileName']}" data-ruby="#{sound['ruby']}" data-category="#{category}" data-title="#{source_name}" data-url="#{source_url}" data-clip="#{clip_url}">#{sound['name']}</div>}
  end
end
