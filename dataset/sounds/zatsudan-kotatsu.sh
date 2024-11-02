#!/bin/bash -xe

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

# ceylon-tea
mkdir -p ../../public/sounds/zatsudan-kotatsu
ffmpeg -y -ss 0:12:37.976 -i ../../scripts/video-clip-tool/public/movies/zatsudan-kotatsu.mp4 -t 0:00:00.632 ../../public/sounds/zatsudan-kotatsu/ceylon-tea.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-kotatsu/ceylon-tea.mp4 -vn ../../public/sounds/zatsudan-kotatsu/ceylon-tea.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.6320660000000089' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0.6320660000000089' ../../public/sounds/zatsudan-kotatsu/base.mp4


# name: 正論ティー
# ruby: せいろんてぃー
# category: meigen
# clipUrl: https://www.youtube.com/watch?v=20m5OtnskxE&t=757
#
touch ./zatsudan-kotatsu.yml
cat <<EOF >> ./zatsudan-kotatsu.yml
- name: "正論ティー"
  ruby: "せいろんてぃー"
  source: "zatsudan-kotatsu"
  fileName: "zatsudan-kotatsu/ceylon-tea.mp3"
  category: ["meigen"]
  clipUrl: "https://www.youtube.com/watch?v=20m5OtnskxE&t=757"
EOF

# danmenzu
mkdir -p ../../public/sounds/zatsudan-kotatsu
ffmpeg -y -ss 0:43:29.702 -i ../../scripts/video-clip-tool/public/movies/zatsudan-kotatsu.mp4 -t 0:00:01.267 ../../public/sounds/zatsudan-kotatsu/danmenzu.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-kotatsu/danmenzu.mp4 -vn ../../public/sounds/zatsudan-kotatsu/danmenzu.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.2674219999998968' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.2674219999998968' ../../public/sounds/zatsudan-kotatsu/base.mp4


# name: 「断面図もほしいです」
# ruby: だんめんずもほしいです
# category: comment
# clipUrl: https://www.youtube.com/watch?v=20m5OtnskxE&t=2609
#
touch ./zatsudan-kotatsu.yml
cat <<EOF >> ./zatsudan-kotatsu.yml
- name: "「断面図もほしいです」"
  ruby: "だんめんずもほしいです"
  source: "zatsudan-kotatsu"
  fileName: "zatsudan-kotatsu/danmenzu.mp3"
  category: ["comment"]
  clipUrl: "https://www.youtube.com/watch?v=20m5OtnskxE&t=2609"
EOF

# prince
mkdir -p ../../public/sounds/zatsudan-kotatsu
ffmpeg -y -ss 1:24:58.746 -i ../../scripts/video-clip-tool/public/movies/zatsudan-kotatsu.mp4 -t 0:00:02.529 ../../public/sounds/zatsudan-kotatsu/prince.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-kotatsu/prince.mp4 -vn ../../public/sounds/zatsudan-kotatsu/prince.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.5293799999999464' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=2.5293799999999464' ../../public/sounds/zatsudan-kotatsu/base.mp4


# name: 許さねぇかんなあの女、清楚ブリやがってよう
# ruby: ゆるさねぇかんなあのおんな
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=20m5OtnskxE&t=5098
#
touch ./zatsudan-kotatsu.yml
cat <<EOF >> ./zatsudan-kotatsu.yml
- name: "許さねぇかんなあの女、清楚ブリやがってよう"
  ruby: "ゆるさねぇかんなあのおんな"
  source: "zatsudan-kotatsu"
  fileName: "zatsudan-kotatsu/prince.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=20m5OtnskxE&t=5098"
EOF

