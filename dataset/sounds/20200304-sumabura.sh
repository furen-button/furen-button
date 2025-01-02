#!/bin/bash -xe
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

# ahopuu
mkdir -p ../../public/sounds/20200304-sumabura
ffmpeg -y -ss 0:10:39.994 -i ../../scripts/video-clip-tool/public/movies/20200304-sumabura.mp4   -t 0:00:01.365 ../../public/sounds/20200304-sumabura/ahopuu.mp4
ffmpeg -y -i ../../public/sounds/20200304-sumabura/ahopuu.mp4 -vn ../../public/sounds/20200304-sumabura/ahopuu.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.365519000000063' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.365519000000063' ../../public/sounds/20200304-sumabura/base.mp4


# name: あほぷー
# ruby: あほぷー
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=pQxDWYMqjRU&t=639
#
touch ./20200304-sumabura.yml
cat <<EOF >> ./20200304-sumabura.yml
- name: "あほぷー"
  ruby: "あほぷー"
  source: "20200304-sumabura"
  fileName: "20200304-sumabura/ahopuu.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=pQxDWYMqjRU&t=639"
EOF

# zurudayo
mkdir -p ../../public/sounds/20200304-sumabura
ffmpeg -y -ss 0:29:34.599 -i ../../scripts/video-clip-tool/public/movies/20200304-sumabura.mp4   -t 0:00:03.098 ../../public/sounds/20200304-sumabura/zurudayo.mp4
ffmpeg -y -i ../../public/sounds/20200304-sumabura/zurudayo.mp4 -vn ../../public/sounds/20200304-sumabura/zurudayo.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.0983340000000226' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=3.0983340000000226' ../../public/sounds/20200304-sumabura/base.mp4


# name: それズルだよ
# ruby: それずるだよ
# category: damage,game
# clipUrl: https://www.youtube.com/watch?v=pQxDWYMqjRU&t=1774
#
touch ./20200304-sumabura.yml
cat <<EOF >> ./20200304-sumabura.yml
- name: "それズルだよ"
  ruby: "それずるだよ"
  source: "20200304-sumabura"
  fileName: "20200304-sumabura/zurudayo.mp3"
  category: ["damage","game"]
  clipUrl: "https://www.youtube.com/watch?v=pQxDWYMqjRU&t=1774"
EOF

# yada
mkdir -p ../../public/sounds/20200304-sumabura
ffmpeg -y -ss 0:29:08.052 -i ../../scripts/video-clip-tool/public/movies/20200304-sumabura.mp4   -t 0:00:05.055 ../../public/sounds/20200304-sumabura/yada.mp4
ffmpeg -y -i ../../public/sounds/20200304-sumabura/yada.mp4 -vn ../../public/sounds/20200304-sumabura/yada.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=5.055481999999984' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=5.055481999999984' ../../public/sounds/20200304-sumabura/base.mp4


# name: よいしょ ぅぅん よいしょ やだぁ
# ruby: よいしょぅぅんよいしょやだぁ
# category: sensitive
# clipUrl: https://www.youtube.com/watch?v=pQxDWYMqjRU&t=1748
#
touch ./20200304-sumabura.yml
cat <<EOF >> ./20200304-sumabura.yml
- name: "よいしょ ぅぅん よいしょ やだぁ"
  ruby: "よいしょぅぅんよいしょやだぁ"
  source: "20200304-sumabura"
  fileName: "20200304-sumabura/yada.mp3"
  category: ["sensitive"]
  clipUrl: "https://www.youtube.com/watch?v=pQxDWYMqjRU&t=1748"
EOF

# miteruyo
mkdir -p ../../public/sounds/20200304-sumabura
ffmpeg -y -ss 0:00:50.183 -i ../../scripts/video-clip-tool/public/movies/20200304-sumabura.mp4   -t 0:00:02.924 ../../public/sounds/20200304-sumabura/miteruyo.mp4
ffmpeg -y -i ../../public/sounds/20200304-sumabura/miteruyo.mp4 -vn ../../public/sounds/20200304-sumabura/miteruyo.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.9245776666666643' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=2.9245776666666643' ../../public/sounds/20200304-sumabura/base.mp4


# name: 見てるよ
# ruby: みてるよ
# category: miteruyo
# clipUrl: https://www.youtube.com/watch?v=pQxDWYMqjRU&t=50
#
touch ./20200304-sumabura.yml
cat <<EOF >> ./20200304-sumabura.yml
- name: "見てるよ"
  ruby: "みてるよ"
  source: "20200304-sumabura"
  fileName: "20200304-sumabura/miteruyo.mp3"
  category: ["miteruyo"]
  clipUrl: "https://www.youtube.com/watch?v=pQxDWYMqjRU&t=50"
EOF

# miteruyo2
mkdir -p ../../public/sounds/20200304-sumabura
ffmpeg -y -ss 0:00:57.435 -i ../../scripts/video-clip-tool/public/movies/20200304-sumabura.mp4   -t 0:00:06.636 ../../public/sounds/20200304-sumabura/miteruyo2.mp4
ffmpeg -y -i ../../public/sounds/20200304-sumabura/miteruyo2.mp4 -vn ../../public/sounds/20200304-sumabura/miteruyo2.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6.636776000000005' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=6.636776000000005' ../../public/sounds/20200304-sumabura/base.mp4


# name: 見てるよ
# ruby: みてるよ
# category: miteruyo
# clipUrl: https://www.youtube.com/watch?v=pQxDWYMqjRU&t=57
#
touch ./20200304-sumabura.yml
cat <<EOF >> ./20200304-sumabura.yml
- name: "見てるよ"
  ruby: "みてるよ"
  source: "20200304-sumabura"
  fileName: "20200304-sumabura/miteruyo2.mp3"
  category: ["miteruyo"]
  clipUrl: "https://www.youtube.com/watch?v=pQxDWYMqjRU&t=57"
EOF

# you-died
mkdir -p ../../public/sounds/20200304-sumabura
ffmpeg -y -ss 0:56:50.366 -i ../../scripts/video-clip-tool/public/movies/20200304-sumabura.mp4   -t 0:00:10.676 ../../public/sounds/20200304-sumabura/you-died.mp4
ffmpeg -y -i ../../public/sounds/20200304-sumabura/you-died.mp4 -vn ../../public/sounds/20200304-sumabura/you-died.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=10.676708333333409' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=10.676708333333409' ../../public/sounds/20200304-sumabura/base.mp4


# name: ちゃう！ちゃう！
# ruby: ちゃうちゃう
# category: damage
# clipUrl: https://www.youtube.com/watch?v=pQxDWYMqjRU&t=3410
#
touch ./20200304-sumabura.yml
cat <<EOF >> ./20200304-sumabura.yml
- name: "ちゃう！ちゃう！"
  ruby: "ちゃうちゃう"
  source: "20200304-sumabura"
  fileName: "20200304-sumabura/you-died.mp3"
  category: ["damage"]
  clipUrl: "https://www.youtube.com/watch?v=pQxDWYMqjRU&t=3410"
EOF


