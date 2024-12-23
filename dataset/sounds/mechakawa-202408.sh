#!/bin/bash -xe
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

# kirby
mkdir -p ../../public/sounds/mechakawa-202408
ffmpeg -y -ss 0:51:57.659 -i ../../scripts/video-clip-tool/public/movies/mechakawa-202408.mp4 -t 0:00:04.235 ../../public/sounds/mechakawa-202408/kirby.mp4
ffmpeg -y -i ../../public/sounds/mechakawa-202408/kirby.mp4 -vn ../../public/sounds/mechakawa-202408/kirby.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4.235061000000314' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=4.235061000000314' ../../public/sounds/mechakawa-202408/base.mp4


# name: グルメレース（BGM）
# ruby: ぐるめれーす
# category: outa
# clipUrl: https://www.youtube.com/watch?v=1dzU6uuSjTo&t=3117
#
touch ./mechakawa-202408.yml
cat <<EOF >> ./mechakawa-202408.yml
- name: "グルメレース（BGM）"
  ruby: "ぐるめれーす"
  source: "mechakawa-202408"
  fileName: "mechakawa-202408/kirby.mp3"
  category: ["outa"]
  clipUrl: "https://www.youtube.com/watch?v=1dzU6uuSjTo&t=3117"
EOF
