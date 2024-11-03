#!/bin/bash -xe

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

rm -rf ./zatsudan-chill.yml

# waraigoe-1
mkdir -p ../../public/sounds/zatsudan-chill
ffmpeg -y -ss 1:22:47.361 -i ../../scripts/video-clip-tool/public/movies/zatsudan-chill.mp4 -t 0:00:02.038 ../../public/sounds/zatsudan-chill/waraigoe-1.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-chill/waraigoe-1.mp4 -vn ../../public/sounds/zatsudan-chill/waraigoe-1.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.0383279999996375' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=2.0383279999996375' ../../public/sounds/zatsudan-chill/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: waraigoe
# clipUrl: https://www.youtube.com/watch?v=7KxE5ALDzDg&t=4967
#
touch ./zatsudan-chill.yml
cat <<EOF >> ./zatsudan-chill.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "zatsudan-chill"
  fileName: "zatsudan-chill/waraigoe-1.mp3"
  category: ["waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=7KxE5ALDzDg&t=4967"
EOF

# daisuki
mkdir -p ../../public/sounds/zatsudan-chill
ffmpeg -y -ss 1:22:54.314 -i ../../scripts/video-clip-tool/public/movies/zatsudan-chill.mp4 -t 0:00:01.998 ../../public/sounds/zatsudan-chill/daisuki.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-chill/daisuki.mp4 -vn ../../public/sounds/zatsudan-chill/daisuki.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.9987769999997909' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.9987769999997909' ../../public/sounds/zatsudan-chill/base.mp4


# name: みんなわたしのこと大好きなんだねぇ
# ruby: みんなわたしのことだいすきなんだねぇ
# category: kawaii
# clipUrl: https://www.youtube.com/watch?v=7KxE5ALDzDg&t=4974
#
touch ./zatsudan-chill.yml
cat <<EOF >> ./zatsudan-chill.yml
- name: "みんなわたしのこと大好きなんだねぇ"
  ruby: "みんなわたしのことだいすきなんだねぇ"
  source: "zatsudan-chill"
  fileName: "zatsudan-chill/daisuki.mp3"
  category: ["kawaii"]
  clipUrl: "https://www.youtube.com/watch?v=7KxE5ALDzDg&t=4974"
EOF

# daisuki-2
mkdir -p ../../public/sounds/zatsudan-chill
ffmpeg -y -ss 1:25:09.271 -i ../../scripts/video-clip-tool/public/movies/zatsudan-chill.mp4 -t 0:00:06.434 ../../public/sounds/zatsudan-chill/daisuki-2.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-chill/daisuki-2.mp4 -vn ../../public/sounds/zatsudan-chill/daisuki-2.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6.434887000000344' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=6.434887000000344' ../../public/sounds/zatsudan-chill/base.mp4


# name: みんな大好きなんだわたしのこと、ふーん
# ruby: みんなだいすきなんだわたしのこと
# category: kawaii
# clipUrl: https://www.youtube.com/watch?v=7KxE5ALDzDg&t=5109
#
touch ./zatsudan-chill.yml
cat <<EOF >> ./zatsudan-chill.yml
- name: "みんな大好きなんだわたしのこと、ふーん"
  ruby: "みんなだいすきなんだわたしのこと"
  source: "zatsudan-chill"
  fileName: "zatsudan-chill/daisuki-2.mp3"
  category: ["kawaii"]
  clipUrl: "https://www.youtube.com/watch?v=7KxE5ALDzDg&t=5109"
EOF

# daisuki-3
mkdir -p ../../public/sounds/zatsudan-chill
ffmpeg -y -ss 1:03:20.118 -i ../../scripts/video-clip-tool/public/movies/zatsudan-chill.mp4 -t 0:00:01.889 ../../public/sounds/zatsudan-chill/daisuki-3.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-chill/daisuki-3.mp4 -vn ../../public/sounds/zatsudan-chill/daisuki-3.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.8896589999999378' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.8896589999999378' ../../public/sounds/zatsudan-chill/base.mp4


# name: 大好きだから自分のことが
# ruby: だいすきだからじぶんのことが
# category: kawaii
# clipUrl: https://www.youtube.com/watch?v=7KxE5ALDzDg&t=3800
#
touch ./zatsudan-chill.yml
cat <<EOF >> ./zatsudan-chill.yml
- name: "大好きだから自分のことが"
  ruby: "だいすきだからじぶんのことが"
  source: "zatsudan-chill"
  fileName: "zatsudan-chill/daisuki-3.mp3"
  category: ["kawaii"]
  clipUrl: "https://www.youtube.com/watch?v=7KxE5ALDzDg&t=3800"
EOF

# waraigoe-2
mkdir -p ../../public/sounds/zatsudan-chill
ffmpeg -y -ss 1:03:17.259 -i ../../scripts/video-clip-tool/public/movies/zatsudan-chill.mp4 -t 0:00:01.061 ../../public/sounds/zatsudan-chill/waraigoe-2.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-chill/waraigoe-2.mp4 -vn ../../public/sounds/zatsudan-chill/waraigoe-2.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.0611730000000534' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.0611730000000534' ../../public/sounds/zatsudan-chill/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: waraigoe
# clipUrl: https://www.youtube.com/watch?v=7KxE5ALDzDg&t=3797
#
touch ./zatsudan-chill.yml
cat <<EOF >> ./zatsudan-chill.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "zatsudan-chill"
  fileName: "zatsudan-chill/waraigoe-2.mp3"
  category: ["waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=7KxE5ALDzDg&t=3797"
EOF

# waraigoe-3
mkdir -p ../../public/sounds/zatsudan-chill
ffmpeg -y -ss 0:24:03.642 -i ../../scripts/video-clip-tool/public/movies/zatsudan-chill.mp4 -t 0:00:01.447 ../../public/sounds/zatsudan-chill/waraigoe-3.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-chill/waraigoe-3.mp4 -vn ../../public/sounds/zatsudan-chill/waraigoe-3.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.4478540000000066' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.4478540000000066' ../../public/sounds/zatsudan-chill/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: waraigoe
# clipUrl: https://www.youtube.com/watch?v=7KxE5ALDzDg&t=1443
#
touch ./zatsudan-chill.yml
cat <<EOF >> ./zatsudan-chill.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "zatsudan-chill"
  fileName: "zatsudan-chill/waraigoe-3.mp3"
  category: ["waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=7KxE5ALDzDg&t=1443"
EOF

# matte
mkdir -p ../../public/sounds/zatsudan-chill
ffmpeg -y -ss 0:04:33.346 -i ../../scripts/video-clip-tool/public/movies/zatsudan-chill.mp4 -t 0:00:01.106 ../../public/sounds/zatsudan-chill/matte.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-chill/matte.mp4 -vn ../../public/sounds/zatsudan-chill/matte.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.106507000000022' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.106507000000022' ../../public/sounds/zatsudan-chill/base.mp4


# name: まってよく考えて
# ruby: まってよくかんがえて
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=7KxE5ALDzDg&t=273
#
touch ./zatsudan-chill.yml
cat <<EOF >> ./zatsudan-chill.yml
- name: "まってよく考えて"
  ruby: "まってよくかんがえて"
  source: "zatsudan-chill"
  fileName: "zatsudan-chill/matte.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=7KxE5ALDzDg&t=273"
EOF

# waraigoe-4
mkdir -p ../../public/sounds/zatsudan-chill
ffmpeg -y -ss 0:04:39.580 -i ../../scripts/video-clip-tool/public/movies/zatsudan-chill.mp4 -t 0:00:01.251 ../../public/sounds/zatsudan-chill/waraigoe-4.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-chill/waraigoe-4.mp4 -vn ../../public/sounds/zatsudan-chill/waraigoe-4.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.2518360000000257' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.2518360000000257' ../../public/sounds/zatsudan-chill/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: waraigoe
# clipUrl: https://www.youtube.com/watch?v=7KxE5ALDzDg&t=279
#
touch ./zatsudan-chill.yml
cat <<EOF >> ./zatsudan-chill.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "zatsudan-chill"
  fileName: "zatsudan-chill/waraigoe-4.mp3"
  category: ["waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=7KxE5ALDzDg&t=279"
EOF

# hitoride
mkdir -p ../../public/sounds/zatsudan-chill
ffmpeg -y -ss 0:12:59.389 -i ../../scripts/video-clip-tool/public/movies/zatsudan-chill.mp4 -t 0:00:03.898 ../../public/sounds/zatsudan-chill/hitoride.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-chill/hitoride.mp4 -vn ../../public/sounds/zatsudan-chill/hitoride.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.89816600000006' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=3.89816600000006' ../../public/sounds/zatsudan-chill/base.mp4


# name: ひとりであんなに楽しかったんだから 人とやったらもっともっと楽しいんだよ
# ruby: ひとりであんなにたのしかったんだから
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=7KxE5ALDzDg&t=779
#
touch ./zatsudan-chill.yml
cat <<EOF >> ./zatsudan-chill.yml
- name: "ひとりであんなに楽しかったんだから 人とやったらもっともっと楽しいんだよ"
  ruby: "ひとりであんなにたのしかったんだから"
  source: "zatsudan-chill"
  fileName: "zatsudan-chill/hitoride.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=7KxE5ALDzDg&t=779"
EOF

# agete
mkdir -p ../../public/sounds/zatsudan-chill
ffmpeg -y -ss 0:30:20.272 -i ../../scripts/video-clip-tool/public/movies/zatsudan-chill.mp4 -t 0:00:01.483 ../../public/sounds/zatsudan-chill/agete.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-chill/agete.mp4 -vn ../../public/sounds/zatsudan-chill/agete.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.4831139999998868' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.4831139999998868' ../../public/sounds/zatsudan-chill/base.mp4


# name: 上げて上げて上げて落とす
# ruby: あげてあげてあげておとす
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=7KxE5ALDzDg&t=1820
#
touch ./zatsudan-chill.yml
cat <<EOF >> ./zatsudan-chill.yml
- name: "上げて上げて上げて落とす"
  ruby: "あげてあげてあげておとす"
  source: "zatsudan-chill"
  fileName: "zatsudan-chill/agete.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=7KxE5ALDzDg&t=1820"
EOF

# erai
mkdir -p ../../public/sounds/zatsudan-chill
ffmpeg -y -ss 0:36:07.859 -i ../../scripts/video-clip-tool/public/movies/zatsudan-chill.mp4 -t 0:00:00.721 ../../public/sounds/zatsudan-chill/erai.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-chill/erai.mp4 -vn ../../public/sounds/zatsudan-chill/erai.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.7212720000002264' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0.7212720000002264' ../../public/sounds/zatsudan-chill/base.mp4


# name: えらーい！
# ruby: えらーい
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=7KxE5ALDzDg&t=2167
#
touch ./zatsudan-chill.yml
cat <<EOF >> ./zatsudan-chill.yml
- name: "えらーい！"
  ruby: "えらーい"
  source: "zatsudan-chill"
  fileName: "zatsudan-chill/erai.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=7KxE5ALDzDg&t=2167"
EOF


# ib-thank-you
mkdir -p ../../public/sounds/zatsudan-chill
ffmpeg -y -ss 0:40:50.124 -i ../../scripts/video-clip-tool/public/movies/zatsudan-chill.mp4 -t 0:00:14.612 ../../public/sounds/zatsudan-chill/ib-thank-you.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-chill/ib-thank-you.mp4 -vn ../../public/sounds/zatsudan-chill/ib-thank-you.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=14.612563000000137' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=14.612563000000137' ../../public/sounds/zatsudan-chill/base.mp4


# name: エフェクターイブちゃん
# ruby: えふぇくたーいぶちゃん
# category: episode
# clipUrl: https://www.youtube.com/watch?v=7KxE5ALDzDg&t=2450
#
touch ./zatsudan-chill.yml
cat <<EOF >> ./zatsudan-chill.yml
- name: "エフェクターイブちゃん"
  ruby: "えふぇくたーいぶちゃん"
  source: "zatsudan-chill"
  fileName: "zatsudan-chill/ib-thank-you.mp3"
  category: ["episode"]
  clipUrl: "https://www.youtube.com/watch?v=7KxE5ALDzDg&t=2450"
EOF

# meruto-pet
mkdir -p ../../public/sounds/zatsudan-chill
ffmpeg -y -ss 0:23:32.431 -i ../../scripts/video-clip-tool/public/movies/zatsudan-chill.mp4 -t 0:00:33.056 ../../public/sounds/zatsudan-chill/meruto-pet.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-chill/meruto-pet.mp4 -vn ../../public/sounds/zatsudan-chill/meruto-pet.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=33.05689900000016' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=33.05689900000016' ../../public/sounds/zatsudan-chill/base.mp4


# name: 倉持めるとちゃんいじり
# ruby: くらもちめると
# category: episode
# clipUrl: https://www.youtube.com/watch?v=7KxE5ALDzDg&t=1412
#
touch ./zatsudan-chill.yml
cat <<EOF >> ./zatsudan-chill.yml
- name: "倉持めるとちゃんいじり"
  ruby: "くらもちめると"
  source: "zatsudan-chill"
  fileName: "zatsudan-chill/meruto-pet.mp3"
  category: ["episode"]
  clipUrl: "https://www.youtube.com/watch?v=7KxE5ALDzDg&t=1412"
EOF

# maigo-with-hakase
mkdir -p ../../public/sounds/zatsudan-chill
ffmpeg -y -ss 0:33:52.249 -i ../../scripts/video-clip-tool/public/movies/zatsudan-chill.mp4 -t 0:00:32.948 ../../public/sounds/zatsudan-chill/maigo-with-hakase.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-chill/maigo-with-hakase.mp4 -vn ../../public/sounds/zatsudan-chill/maigo-with-hakase.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=32.948130999999876' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=32.948130999999876' ../../public/sounds/zatsudan-chill/base.mp4


# name: スタジオで迷子
# ruby: すたじおまいご
# category: episode
# clipUrl: https://www.youtube.com/watch?v=7KxE5ALDzDg&t=2032
#
touch ./zatsudan-chill.yml
cat <<EOF >> ./zatsudan-chill.yml
- name: "スタジオで迷子"
  ruby: "すたじおまいご"
  source: "zatsudan-chill"
  fileName: "zatsudan-chill/maigo-with-hakase.mp3"
  category: ["episode"]
  clipUrl: "https://www.youtube.com/watch?v=7KxE5ALDzDg&t=2032"
EOF


# tira
mkdir -p ../../public/sounds/zatsudan-chill
ffmpeg -y -ss 0:01:28.884 -i ../../scripts/video-clip-tool/public/movies/zatsudan-chill.mp4 -t 0:00:00.457 ../../public/sounds/zatsudan-chill/tira.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-chill/tira.mp4 -vn ../../public/sounds/zatsudan-chill/tira.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.45735400000000936' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0.45735400000000936' ../../public/sounds/zatsudan-chill/base.mp4


# name: ちら
# ruby: ちら
# category: tira
# clipUrl: https://www.youtube.com/watch?v=7KxE5ALDzDg&t=88
#
touch ./zatsudan-chill.yml
cat <<EOF >> ./zatsudan-chill.yml
- name: "ちら"
  ruby: "ちら"
  source: "zatsudan-chill"
  fileName: "zatsudan-chill/tira.mp3"
  category: ["tira"]
  clipUrl: "https://www.youtube.com/watch?v=7KxE5ALDzDg&t=88"
EOF

# miteruyo
mkdir -p ../../public/sounds/zatsudan-chill
ffmpeg -y -ss 0:01:31.478 -i ../../scripts/video-clip-tool/public/movies/zatsudan-chill.mp4 -t 0:00:01.498 ../../public/sounds/zatsudan-chill/miteruyo.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-chill/miteruyo.mp4 -vn ../../public/sounds/zatsudan-chill/miteruyo.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.4982519999999937' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.4982519999999937' ../../public/sounds/zatsudan-chill/base.mp4


# name: 見てるよ〜
# ruby: みてるよ
# category: miteruyo
# clipUrl: https://www.youtube.com/watch?v=7KxE5ALDzDg&t=91
#
touch ./zatsudan-chill.yml
cat <<EOF >> ./zatsudan-chill.yml
- name: "見てるよ〜"
  ruby: "みてるよ"
  source: "zatsudan-chill"
  fileName: "zatsudan-chill/miteruyo.mp3"
  category: ["miteruyo"]
  clipUrl: "https://www.youtube.com/watch?v=7KxE5ALDzDg&t=91"
EOF

# kontario
mkdir -p ../../public/sounds/zatsudan-chill
ffmpeg -y -ss 0:01:33.049 -i ../../scripts/video-clip-tool/public/movies/zatsudan-chill.mp4 -t 0:00:01.064 ../../public/sounds/zatsudan-chill/kontario.mp4
ffmpeg -y -i ../../public/sounds/zatsudan-chill/kontario.mp4 -vn ../../public/sounds/zatsudan-chill/kontario.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.064791999999997' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.064791999999997' ../../public/sounds/zatsudan-chill/base.mp4


# name: こんタリオ
# ruby: こんたりお
# category: miteruyo
# clipUrl: https://www.youtube.com/watch?v=7KxE5ALDzDg&t=93
#
touch ./zatsudan-chill.yml
cat <<EOF >> ./zatsudan-chill.yml
- name: "こんタリオ"
  ruby: "こんたりお"
  source: "zatsudan-chill"
  fileName: "zatsudan-chill/kontario.mp3"
  category: ["miteruyo"]
  clipUrl: "https://www.youtube.com/watch?v=7KxE5ALDzDg&t=93"
EOF


