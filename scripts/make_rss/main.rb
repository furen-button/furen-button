require 'rss'
require 'yaml'

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

target_filepath = "#{__dir__}/../../src/feed.rss"
File.write(target_filepath, rss.to_s)
