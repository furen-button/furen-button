#!/bin/bash -xe

# cp local.sh ../../dataset/sounds/gta5-sleep.sh

# heitai
mkdir -p ../../public/sounds/gta5-sleep
ffmpeg -y -ss 0:35:57.333 -i gta5-sleep.mp4 -t 0:00:02.000 ../../public/sounds/gta5-sleep/heitai.mp4
ffmpeg -y -i ../../public/sounds/gta5-sleep/heitai.mp4 -vn ../../public/sounds/gta5-sleep/heitai.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.0000000000013642' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.000' ../../public/sounds/gta5-sleep/base.mp4


# name: 変態ども見るんじゃない
# ruby: へんたいどもみるんじゃない
# category: sensitive
# clipUrl: https://youtube.com/clip/Ugkxh9uo77VQpdntQ_RD9BEbnnJahajySjd_?si=jiSvem0eA_Gak5rj
# 
touch ../../dataset/sounds/gta5-sleep.yml
cat <<EOF >> ../../dataset/sounds/gta5-sleep.yml
- name: "変態ども見るんじゃない"
  ruby: "へんたいどもみるんじゃない"
  source: "gta5-sleep"
  fileName: "gta5-sleep/heitai.wav"
  category: ["sensitive"]
  clipUrl: "https://youtube.com/clip/Ugkxh9uo77VQpdntQ_RD9BEbnnJahajySjd_?si=jiSvem0eA_Gak5rj"
EOF

# lucky
mkdir -p ../../public/sounds/gta5-sleep
ffmpeg -y -ss 0:53:06.033 -i gta5-sleep.mp4 -t 0:00:00.899 ../../public/sounds/gta5-sleep/lucky.mp4
ffmpeg -y -i ../../public/sounds/gta5-sleep/lucky.mp4 -vn ../../public/sounds/gta5-sleep/lucky.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.8999999999955435' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:00.899' ../../public/sounds/gta5-sleep/base.mp4


# name: ラッキー
# ruby: らっきー
# category: lucky
# clipUrl: https://www.youtube.com/clip/UgkxGlfkDnQhJ4Z-__PQmLzM4Pe03odfWxk0
# 
touch ../../dataset/sounds/gta5-sleep.yml
cat <<EOF >> ../../dataset/sounds/gta5-sleep.yml
- name: "ラッキー"
  ruby: "らっきー"
  source: "gta5-sleep"
  fileName: "gta5-sleep/lucky.wav"
  category: ["lucky"]
  clipUrl: "https://www.youtube.com/clip/UgkxGlfkDnQhJ4Z-__PQmLzM4Pe03odfWxk0"
EOF

# lets-go-home
mkdir -p ../../public/sounds/gta5-sleep
ffmpeg -y -ss 0:47:45.783 -i gta5-sleep.mp4 -t 0:00:28.283 ../../public/sounds/gta5-sleep/lets-go-home.mp4
ffmpeg -y -i ../../public/sounds/gta5-sleep/lets-go-home.mp4 -vn ../../public/sounds/gta5-sleep/lets-go-home.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=28.283333333333303' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:28.283' ../../public/sounds/gta5-sleep/base.mp4
ffmpeg -y -i ../../public/sounds/gta5-sleep/lets-go-home.mp4 -vf crop=1280:720:0:0 ../../public/sounds/gta5-sleep/lets-go-home-crop-0.mp4
ffmpeg -y -i ../../public/sounds/gta5-sleep/lets-go-home-crop-0.mp4 -vf scale=1080x600 ../../public/sounds/gta5-sleep/lets-go-home-scale-0.mp4
ffmpeg -y -i ../../public/sounds/gta5-sleep/base.mp4 -i ../../public/sounds/gta5-sleep/lets-go-home-scale-0.mp4 -filter_complex "overlay=x=0:y=400" ../../public/sounds/gta5-sleep/lets-go-home-merge-0.mp4
cp ../../public/sounds/gta5-sleep/lets-go-home-merge-0.mp4 ../../public/sounds/gta5-sleep/lets-go-home-complete.mp4
# name: ぼくも帰ろうおうちへ帰ろう（おうた）
# ruby: ぼくもかえろうおうちへかえろう
# category: outa
# clipUrl: https://youtube.com/clip/UgkxgWLb7dk6DcrQ_w74FC7FeavQidX_oDa_?si=TEqgtE1YFgjA8Z5I
# 
touch ../../dataset/sounds/gta5-sleep.yml
cat <<EOF >> ../../dataset/sounds/gta5-sleep.yml
- name: "ぼくも帰ろうおうちへ帰ろう（おうた）"
  ruby: "ぼくもかえろうおうちへかえろう"
  source: "gta5-sleep"
  fileName: "gta5-sleep/lets-go-home.wav"
  category: ["outa"]
  clipUrl: "https://youtube.com/clip/UgkxgWLb7dk6DcrQ_w74FC7FeavQidX_oDa_?si=TEqgtE1YFgjA8Z5I"
EOF

# very-very-beautiful
mkdir -p ../../public/sounds/gta5-sleep
ffmpeg -y -ss 1:04:25.716 -i gta5-sleep.mp4 -t 0:00:02.549 ../../public/sounds/gta5-sleep/very-very-beautiful.mp4
ffmpeg -y -i ../../public/sounds/gta5-sleep/very-very-beautiful.mp4 -vn ../../public/sounds/gta5-sleep/very-very-beautiful.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.5499999999974534' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.549' ../../public/sounds/gta5-sleep/base.mp4
ffmpeg -y -i ../../public/sounds/gta5-sleep/very-very-beautiful.mp4 -vf crop=1280:720:0:0 ../../public/sounds/gta5-sleep/very-very-beautiful-crop-0.mp4
ffmpeg -y -i ../../public/sounds/gta5-sleep/very-very-beautiful-crop-0.mp4 -vf scale=1080x600 ../../public/sounds/gta5-sleep/very-very-beautiful-scale-0.mp4
ffmpeg -y -i ../../public/sounds/gta5-sleep/base.mp4 -i ../../public/sounds/gta5-sleep/very-very-beautiful-scale-0.mp4 -filter_complex "overlay=x=0:y=400" ../../public/sounds/gta5-sleep/very-very-beautiful-merge-0.mp4
cp ../../public/sounds/gta5-sleep/very-very-beautiful-merge-0.mp4 ../../public/sounds/gta5-sleep/very-very-beautiful-complete.mp4
# name: あいむベリーベリービューティフォー
# ruby: あいむべりーべりー
# category: kawaii
# clipUrl: 
# 
touch ../../dataset/sounds/gta5-sleep.yml
cat <<EOF >> ../../dataset/sounds/gta5-sleep.yml
- name: "あいむベリーベリービューティフォー"
  ruby: "あいむべりーべりー"
  source: "gta5-sleep"
  fileName: "gta5-sleep/very-very-beautiful.wav"
  category: ["kawaii"]
  clipUrl: ""
EOF


