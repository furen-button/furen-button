require 'json'
require 'yaml'

SOURCE_FILE_PATH = "#{__dir__}/../../dataset/sources.yml"

SOUNDS_SOURCE_DIRECTORY_PATH = "#{__dir__}/../../dataset/sounds/"

def load_url_count_map
  tagSounds = Dir.glob("#{SOUNDS_SOURCE_DIRECTORY_PATH}/*.yml").map do |filepath|
    YAML.load_file(filepath)
  end.
    flatten

  tag_sound_count = tagSounds.map { |d| d["source"] }.uniq.map do |tag|
    {
      tag: tag,
      count: tagSounds.count { |d| d["source"] == tag },
    }
  end.to_h { |d| [d[:tag], d[:count]] }

  urlCountMap = YAML.load_file(SOURCE_FILE_PATH)["sources"].map do |data|
    tag = data["tag"]
    count = 0
    count = tag_sound_count[tag] if tag_sound_count.has_key?(tag)
    {
      tag: tag,
      url: data["url"],
      count: count
    }
  end.to_h { |d| [d[:url], d[:count]] }
  return urlCountMap
end

urlCountMap = load_url_count_map

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

# ハッシュタグ `#` が含まれない最初の行を取得する
def description_head(description)
  lines = description.split("\n")
  lines.each do |line|
    next if line.empty?
    return line unless line.include?("#")
  end
  lines.first
end

data = []
videos.each do |d|
  date = d["snippet"]["publishedAt"].split("T").first
  rawDate = d["snippet"]["publishedAt"]
  title = d["snippet"]["title"]
  url = "https://www.youtube.com/watch?v=#{d["id"]}"
  duration = d["contentDetails"]["duration"]
  viewCount = d["statistics"]["viewCount"]
  likeCount = d["statistics"]["likeCount"]
  commentCount = d["statistics"]["commentCount"]

  kirinukiCount = 0
  kirinukiCount = urlCountMap[url] if urlCountMap.has_key?(url)

  data << {
    id: d["id"],
    date: date,
    rawDate: rawDate,
    title: title,
    description: description_head(d["snippet"]["description"]),
    url: url,
    duration: duration,
    viewCount: viewCount,
    likeCount: likeCount,
    commentCount: commentCount,
    kirinukiCount: kirinukiCount,
  }
end

target_file_path = "#{__dir__}/../../public/dataset/videos.json"
original_data = JSON.parse(File.read(target_file_path), symbolize_names: true)

merged_data = original_data.push(*data).
  sort_by { |d| d[:viewCount] }.
  reverse.
  uniq { |d| d[:url] }.
  sort_by { |d| [d[:date], d[:id]] }

File.write(target_file_path, JSON.dump(merged_data))
