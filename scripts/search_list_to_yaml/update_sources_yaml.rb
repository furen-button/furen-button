require 'yaml'
require 'json'
# 最新の動画一覧 json とリポジトリの sources.yml をマージする

videos = []
Dir.glob("#{__dir__}/../../dataset/videolists/*.json") do |filepath|
  videos.push JSON.parse(File.read(filepath))
end

videos = videos.
  flatten.
  sort_by { |d| d["statistics"]["viewCount"] }.
  reverse.
  uniq { |d| d["id"]}.
  sort_by { |d| d["snippet"]["publishedAt"] }

data = []
videos.each do |d|
  date = d["snippet"]["publishedAt"].split("T").first
  title = d["snippet"]["title"]
  url = "https://www.youtube.com/watch?v=#{d["id"]}"

  data << {
    tag: "",
    title: title,
    publishedAt: date,
    url: url,
    note: ""
  }
end

target_file_path = "#{__dir__}/../../dataset/sources.yml"
original_yaml = YAML.load_file(target_file_path)

original_data = original_yaml["sources"].map { |d| d.transform_keys(&:to_sym) }

merged_data = original_data.push(*data).
  sort_by { |d| d[:tag] }.
  reverse.
  uniq { |d| d[:url] }.
  sort_by { |d| [d[:publishedAt], d[:title]] }

output_data = {
  "sources" => merged_data.map { |d| d.transform_keys(&:to_s) }
}

# NOTE: yaml の場合日本語含まない文字列の出力がクォーテーション外れてしまうのが気になる。どうしても気になるなら json にする。
# File.write("#{__dir__}/../../dataset/sources.json", JSON.pretty_generate(output_data))
YAML.dump(output_data, File.open(target_file_path, "w"))
