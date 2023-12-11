require 'json'


data = []
Dir.glob("#{__dir__}/../../dataset/videolists/*.json") do |filepath|
  data.push JSON.parse(File.read(filepath))
end
data.flatten!.uniq!.sort_by! { |d| d["snippet"]["publishedAt"] }

page = []
data.each do |d|
  date = d["snippet"]["publishedAt"].split("T").first
  title = d["snippet"]["title"]
  description = d["snippet"]["description"]
  url = "https://www.youtube.com/watch?v=#{d["id"]}"
  duration = d["contentDetails"]["duration"].gsub("PT", "").gsub("H", "時間").gsub("M", "分").gsub("S", "秒")
  durationMin = d["contentDetails"]["duration"].gsub("PT", "").gsub("H", ":").gsub("M", ":").gsub("S", "").split(":")[0].to_i * 60 + d["contentDetails"]["duration"].gsub("PT", "").gsub("H", ":").gsub("M", ":").gsub("S", "").split(":")[1].to_i
  viewCount = d["statistics"]["viewCount"]
  likeCount = d["statistics"]["likeCount"]
  commentCount = d["statistics"]["commentCount"]

  page << %q{<tr>}
  page << %Q{  <td class="video-list-item-date">#{date}</td>}
  page << %Q{  <td class="video-list-item-title"><a target="_blank" href="#{url}">#{title}</a></td>}
  page << %Q{  <td class="video-list-item-duration">#{duration}</td>}
  page << %Q{  <td class="video-list-item-viewCount">#{viewCount}</td>}
  page << %Q{  <td class="video-list-item-likeCount">#{likeCount}</td>}
  page << %Q{  <td class="video-list-item-commentCount">#{commentCount}</td>}
  page << %q{</tr>}
end

File.write("#{__dir__}/../../src/videos.html.tmp", page.join("\n"))
