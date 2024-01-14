require 'json'

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
  title = d["snippet"]["title"]
  url = "https://www.youtube.com/watch?v=#{d["id"]}"
  duration = d["contentDetails"]["duration"]
  viewCount = d["statistics"]["viewCount"]
  likeCount = d["statistics"]["likeCount"]
  commentCount = d["statistics"]["commentCount"]

  data << {
    date: date,
    title: title,
    description: description_head(d["snippet"]["description"]),
    url: url,
    duration: duration,
    viewCount: viewCount,
    likeCount: likeCount,
    commentCount: commentCount
  }
end

target_file_path = "#{__dir__}/../../public/dataset/videos.json"
original_data = JSON.parse(File.read(target_file_path), symbolize_names: true)

merged_data = original_data.push(*data).
  sort_by { |d| d[:viewCount] }.
  reverse.
  uniq { |d| d[:url] }.
  sort_by { |d| d[:date] }

File.write(target_file_path, JSON.dump(merged_data))
