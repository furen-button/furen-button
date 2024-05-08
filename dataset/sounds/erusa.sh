#!/bin/bash -xe

# cp local.sh ../../dataset/sounds/gta5-sleep.sh

# maikka
mkdir -p ../../public/sounds/erusa
ffmpeg -y -ss 0:15:18.716 -i erusa.mp4 -t 0:00:00.600 ../../public/sounds/erusa/maikka.mp4
ffmpeg -y -i ../../public/sounds/erusa/maikka.mp4 -vn ../../public/sounds/erusa/maikka.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.6000000000016144' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:00.600' ../../public/sounds/erusa/base.mp4


# name: まいっか
# ruby: まいっか
# category: maikka
# clipUrl: https://youtube.com/clip/Ugkxzz_hNZeFn7AjKziQUpQuzyA8PUsNg8SI
# 
touch ../../dataset/sounds/erusa.yml
cat <<EOF >> ../../dataset/sounds/erusa.yml
- name: "まいっか"
  ruby: "まいっか"
  source: "erusa"
  fileName: "erusa/maikka.wav"
  category: ["maikka"]
  clipUrl: "https://youtube.com/clip/Ugkxzz_hNZeFn7AjKziQUpQuzyA8PUsNg8SI"
EOF

# get-down
mkdir -p ../../public/sounds/erusa
ffmpeg -y -ss 0:31:06.633 -i erusa.mp4 -t 0:00:05.133 ../../public/sounds/erusa/get-down.mp4
ffmpeg -y -i ../../public/sounds/erusa/get-down.mp4 -vn ../../public/sounds/erusa/get-down.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=5.133333333335486' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:05.133' ../../public/sounds/erusa/base.mp4


# name: Get down 揺れる 廻る 振れる せつないきもち
# ruby: Get downゆれるまわる
# category: outa
# clipUrl: https://youtube.com/clip/UgkxeUw2fdO8DHbCjvX7T4WGh3lgBBt75qg3?si=oK-eFLNn4EDUxCZ0
# 
touch ../../dataset/sounds/erusa.yml
cat <<EOF >> ../../dataset/sounds/erusa.yml
- name: "Get down 揺れる 廻る 振れる せつないきもち"
  ruby: "Get downゆれるまわる"
  source: "erusa"
  fileName: "erusa/get-down.wav"
  category: ["outa"]
  clipUrl: "https://youtube.com/clip/UgkxeUw2fdO8DHbCjvX7T4WGh3lgBBt75qg3?si=oK-eFLNn4EDUxCZ0"
EOF

# miteruyo
mkdir -p ../../public/sounds/erusa
ffmpeg -y -ss 0:01:28.016 -i erusa.mp4 -t 0:00:02.366 ../../public/sounds/erusa/miteruyo.mp4
ffmpeg -y -i ../../public/sounds/erusa/miteruyo.mp4 -vn ../../public/sounds/erusa/miteruyo.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.3666666666666742' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.366' ../../public/sounds/erusa/base.mp4


# name: みてるよ〜
# ruby: みてるよ〜
# category: miteruyo
# clipUrl: 
# 
touch ../../dataset/sounds/erusa.yml
cat <<EOF >> ../../dataset/sounds/erusa.yml
- name: "みてるよ〜"
  ruby: "みてるよ〜"
  source: "erusa"
  fileName: "erusa/miteruyo.wav"
  category: ["miteruyo"]
  clipUrl: ""
EOF

# manmamiya
mkdir -p ../../public/sounds/erusa
ffmpeg -y -ss 1:03:04.216 -i erusa.mp4 -t 0:00:01.099 ../../public/sounds/erusa/manmamiya.mp4
ffmpeg -y -i ../../public/sounds/erusa/manmamiya.mp4 -vn ../../public/sounds/erusa/manmamiya.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.0999999999939973' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.099' ../../public/sounds/erusa/base.mp4


# name: まんまみーや（マリオ）
# ruby: まんまみーや
# category: se
# clipUrl: 
# 
touch ../../dataset/sounds/erusa.yml
cat <<EOF >> ../../dataset/sounds/erusa.yml
- name: "まんまみーや（マリオ）"
  ruby: "まんまみーや"
  source: "erusa"
  fileName: "erusa/manmamiya.wav"
  category: ["se"]
  clipUrl: ""
EOF



