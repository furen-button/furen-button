# ローカル用のスクリプト実行手順書

all:
	# 手順1: src/sounds 以下に wav ファイルを置く。
	# 手順2: dataset/sounds 以下のファイルを編集する。
	# 手順3: dataset/sources.yml の該当動画のタグを編集する。
	# 説明: チャンネルの動画情報から dataset/sources.yml を作成するスクリプト
	ruby scripts/search_list_to_yaml/update_sources_yaml.rb
	# 説明: チャンネルの動画情報から動画一覧ページのデータを作成するスクリプト
	ruby scripts/search_list_to_yaml/update_videolist_json.rb
	# 説明: wav ファイルから入力用の yaml を dataset/sounds 以下に作成するスクリプト
	ruby scripts/create_button_element/main.rb
	# 説明: 入力データを元に index.html に反映できるように整えるスクリプト
	ruby scripts/create_button_element/dataset_to_buttons.rb
	ruby scripts/create_button_element/update_index_html.rb
	# 説明: dataset/rss.yml から src/feed.rss を作成するスクリプト
	ruby scripts/make_rss/main.rb
	npm run fixlint

.PHONY: all

add:
	git add dataset
	git add src
	git add scripts/create_button_element

.PHONY: add

update_video_list:
	# 説明: チャンネルの動画情報から dataset/sources.yml を作成するスクリプト。ローカル用
	./scripts/get_youtube_channel_video_list/local.sh

.PHONY: update_video_list

rss_push_item:
	ruby -ryaml -rdate -e 'YAML.dump(YAML.load_file("dataset/rss.yml").push({url: "https://furen-button.github.io/furen-button/", title: "", updated: "#{Date.today}"}).map { |d| d.transform_keys(&:to_s) }, File.open("dataset/rss.yml", "w"))'

.PHONY: rss_push_item
