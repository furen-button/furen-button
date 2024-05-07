require 'rss'
require 'yaml'
require 'json'

sources = YAML.load_file("#{__dir__}/../../dataset/rss.yml")

rss = RSS::Maker.make('2.0') do |maker|
  maker.channel.title = 'フレンボタン'
  maker.channel.description = 'コーヴァス帝国から来た女騎士フレン・E・ルスタリオさんのボイス切り抜きをまとめます。'
  maker.channel.link = 'https://furen-button.github.io/furen-button/'

  maker.items.do_sort = true

  sources.each do |s|
    maker.items.new_item do |item|
      item.link = s['url']
      item.title = s['title']
      item.updated = s['updated']
    end
  end
end

# feed.rss ファイルを生成
target_filepath = "#{__dir__}/../../public/feed.rss"
File.write(target_filepath, rss.to_s)

# App 用の JSON ファイルを生成
target_filepath = "#{__dir__}/../../public/feed.json"
File.write(target_filepath, JSON.pretty_generate(sources))
