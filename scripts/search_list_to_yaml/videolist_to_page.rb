require 'json'

videos = []
Dir.glob("#{__dir__}/../../dataset/videolists/*.json") do |filepath|
  videos.push JSON.parse(File.read(filepath))
end
videos.flatten!.uniq!.sort_by! { |d| d["snippet"]["publishedAt"] }

data = []
videos.each do |d|
  date = d["snippet"]["publishedAt"].split("T").first
  title = d["snippet"]["title"]
  # i行目のみ
  description_head = d["snippet"]["description"].split("\n").first
  url = "https://www.youtube.com/watch?v=#{d["id"]}"
  duration = d["contentDetails"]["duration"]
  viewCount = d["statistics"]["viewCount"]
  likeCount = d["statistics"]["likeCount"]
  commentCount = d["statistics"]["commentCount"]

  data << {
    date: date,
    title: title,
    description: description_head,
    url: url,
    duration: duration,
    viewCount: viewCount,
    likeCount: likeCount,
    commentCount: commentCount
  }
end

File.write("#{__dir__}/../../src/dataset/videos.json", JSON.dump(data))
