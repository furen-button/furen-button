require 'csv'
require 'date'

File.open("#{__dir__}/sources.yml", "w") do |f|
  f.puts %Q{sources:}

  data = []
  CSV.foreach("#{__dir__}/result.csv", headers: :first_row) do |row|
    date = Date.parse(row[0]).strftime("%Y-%m-%d")
    name = row[1]
    url = row[2]
    data << {
      name: name,
      date: date,
      url: url
    }
  end

  data.sort_by { |d| d[:date] }.each do |d|
    f.puts %Q{  - tag: ""}
    f.puts %Q{    title: "#{d[:name]}"}
    f.puts %Q{    publishedAt: "#{d[:date]}"}
    f.puts %Q{    url: "#{d[:url]}"}
    f.puts %Q{    category: [""]}
    f.puts %Q{    note: ""}
  end
end
