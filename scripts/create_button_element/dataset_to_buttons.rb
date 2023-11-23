require 'yaml'

data = YAML.load_file("#{__dir__}/../../dataset/all.yml")

data.sort { |a, b| a['ruby'] <=> b['ruby'] }.each do |sound|
  category = sound['category'].join(',')
  puts %Q{<div class="sounds" data-file="#{sound['fileName']}" data-ruby="#{sound['ruby']}" data-category="#{category}">#{sound['name']}</div>}
end
