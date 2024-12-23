#!/bin/bash -xe

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR
rm -rf ./estar-5.yml

# chiken-hermony
mkdir -p ../../public/sounds/estar-5
ffmpeg -y -ss 0:04:23.348 -i ../../scripts/video-clip-tool/public/movies/estar-5.mp4 -t 0:00:00.591 ../../public/sounds/estar-5/chiken-hermony.mp4
ffmpeg -y -i ../../public/sounds/estar-5/chiken-hermony.mp4 -vn ../../public/sounds/estar-5/chiken-hermony.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.5910599999999704' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0.5910599999999704' ../../public/sounds/estar-5/base.mp4


# name: ティキン！
# ruby: てぃきん
# category: collab
# clipUrl: https://www.youtube.com/watch?v=DqJrblxhu1s&t=263
# 
touch ./estar-5.yml
cat <<EOF >> ./estar-5.yml
- name: "ティキン！"
  ruby: "てぃきん"
  source: "estar-5"
  fileName: "estar-5/chiken-hermony.mp3"
  category: ["collab"]
  clipUrl: "https://www.youtube.com/watch?v=DqJrblxhu1s&t=263"
EOF
