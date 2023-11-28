require 'yaml'

# 書き込み済みの sources.yml と最新の sources.yml をマージする

original_yaml = YAML.load_file("#{__dir__}/../../dataset/sources.yml")

new_yaml = YAML.load_file("#{__dir__}/sources.yml")

original_sources = original_yaml["sources"]

new_sources = new_yaml["sources"]

new_sources.each do |data|
  original_sources << data unless original_sources.include?(data)
end

output_data = {
  "sources" => original_sources.sort_by { |d| [d["publishedAt"], d["title"]] }
}

# NOTE: yaml の場合日本語含まない文字列の出力がクォーテーション外れてしまうのが気になる。どうしても気になるなら json にする。
# File.write("#{__dir__}/../../dataset/sources.json", JSON.pretty_generate(output_data))
YAML.dump(output_data, File.open("#{__dir__}/../../dataset/sources.yml", "w"))
