require 'yaml'
require 'json'

target_file_path = "#{__dir__}/../../public/dataset/categories.json"
data = []

Dir.glob("#{__dir__}/../../dataset/sounds/**.yml") do |filepath|
  data << YAML.load_file(filepath)
end

data.flatten!

categories = JSON.parse(File.read(target_file_path))
data.each do |sound|
  sound['category'].each do |category|
    if category == ''
      puts "category が空です: #{sound}"
      next
    end
    init_data = {
      description: "",
    }
    categories[category] = init_data unless categories.has_key?(category)
  end
end

File.write(target_file_path, JSON.pretty_generate(categories.sort.to_h))
