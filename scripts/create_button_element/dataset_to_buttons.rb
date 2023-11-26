require 'yaml'

sources = YAML.load_file("#{__dir__}/../../dataset/sources.yml")
data = []

Dir.glob("#{__dir__}/../../dataset/sounds/**.yml") do |filepath|
  data << YAML.load_file(filepath)
end

data.flatten!

File.open("#{__dir__}/buttons.html", "w") do |f|
  data.sort { |a, b| a['ruby'] <=> b['ruby'] }.each do |sound|
    source = sources['sources'].find { |s| s['tag'] == sound['source'] }
    source_name = ''
    source_url = ''
    source_name = source['title'] unless source.nil?
    source_url = source['url'] unless source.nil?
    category = sound['category'].join(',')
    f.puts %Q{<div class="sounds" data-file="#{sound['fileName']}" data-ruby="#{sound['ruby']}" data-category="#{category}" data-title="#{source_name}" data-url="#{source_url}">#{sound['name']}</div>}
  end
end
