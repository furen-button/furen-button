#!/bin/bash -xe
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

# lip-shape
mkdir -p ../../public/sounds/mechakawa-202406
ffmpeg -y -ss 0:47:48.555 -i ../../scripts/video-clip-tool/public/movies/mechakawa-202406.mp4 -t 0:00:09.856 ../../public/sounds/mechakawa-202406/lip-shape.mp4
ffmpeg -y -i ../../public/sounds/mechakawa-202406/lip-shape.mp4 -vn ../../public/sounds/mechakawa-202406/lip-shape.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=9.856080999999904' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=9.856080999999904' ../../public/sounds/mechakawa-202406/base.mp4


# name: くちびるをとがらせるんじゃない
# ruby: くちびるをとがらせるんじゃない
# category: collab,meigen
# clipUrl: https://www.youtube.com/watch?v=bNj1dRNPmu8&t=2868
#
touch ./mechakawa-202406.yml
cat <<EOF >> ./mechakawa-202406.yml
- name: "くちびるをとがらせるんじゃない"
  ruby: "くちびるをとがらせるんじゃない"
  source: "mechakawa-202406"
  fileName: "mechakawa-202406/lip-shape.mp3"
  category: ["collab","meigen"]
  clipUrl: "https://www.youtube.com/watch?v=bNj1dRNPmu8&t=2868"
EOF


# wonderful-work
mkdir -p ../../public/sounds/mechakawa-202406
ffmpeg -y -ss 2:06:08.179 -i ../../scripts/video-clip-tool/public/movies/mechakawa-202406.mp4 -t 0:00:01.414 ../../public/sounds/mechakawa-202406/wonderful-work.mp4
ffmpeg -y -i ../../public/sounds/mechakawa-202406/wonderful-work.mp4 -vn ../../public/sounds/mechakawa-202406/wonderful-work.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.4144569999998566' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.4144569999998566' ../../public/sounds/mechakawa-202406/base.mp4


# name: ろーどーさいこー
# ruby: ろーどーさいこー
# category: collab,meigen
# clipUrl: https://www.youtube.com/watch?v=bNj1dRNPmu8&t=7568
#
touch ./mechakawa-202406.yml
cat <<EOF >> ./mechakawa-202406.yml
- name: "ろーどーさいこー"
  ruby: "ろーどーさいこー"
  source: "mechakawa-202406"
  fileName: "mechakawa-202406/wonderful-work.mp3"
  category: ["collab","meigen"]
  clipUrl: "https://www.youtube.com/watch?v=bNj1dRNPmu8&t=7568"
EOF

# saiko
mkdir -p ../../public/sounds/mechakawa-202406
ffmpeg -y -ss 2:06:05.179 -i ../../scripts/video-clip-tool/public/movies/mechakawa-202406.mp4 -t 0:00:10.699 ../../public/sounds/mechakawa-202406/saiko.mp4
ffmpeg -y -i ../../public/sounds/mechakawa-202406/saiko.mp4 -vn ../../public/sounds/mechakawa-202406/saiko.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=10.699999999999818' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=10.699999999999818' ../../public/sounds/mechakawa-202406/base.mp4


# name: のーひんさいこー
# ruby: のーひんさいこー
# category: collab
# clipUrl: https://www.youtube.com/watch?v=bNj1dRNPmu8&t=7565
#
touch ./mechakawa-202406.yml
cat <<EOF >> ./mechakawa-202406.yml
- name: "のーひんさいこー"
  ruby: "のーひんさいこー"
  source: "mechakawa-202406"
  fileName: "mechakawa-202406/saiko.mp3"
  category: ["collab"]
  clipUrl: "https://www.youtube.com/watch?v=bNj1dRNPmu8&t=7565"
EOF

