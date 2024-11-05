#!/bin/bash -xe

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR


# drink
mkdir -p ../../../public/sounds/eat-marshmallow
ffmpeg -y -ss 0:11:36.499 -i ./movies/eat-marshmallow.mp4 -t 0:00:02.483 ../../../public/sounds/eat-marshmallow/drink.mp4
ffmpeg -y -i ../../../public/sounds/eat-marshmallow/drink.mp4 -vn ../../../public/sounds/eat-marshmallow/drink.wav


# name: ゴキュっゴキュっ
# ruby: ごきゅっごきゅっ
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=MbYYd2TX74o&t=696
#
touch ../../../dataset/sounds/eat-marshmallow.yml
cat <<EOF >> ../../../dataset/sounds/eat-marshmallow.yml
- name: "ゴキュっゴキュっ"
  ruby: "ごきゅっごきゅっ"
  source: "eat-marshmallow"
  fileName: "eat-marshmallow/drink.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=MbYYd2TX74o&t=696"
EOF

# issyou-yokoni-iro
mkdir -p ../../../public/sounds/eat-marshmallow
ffmpeg -y -ss 0:18:43.399 -i ./movies/eat-marshmallow.mp4 -t 0:00:08.549 ../../../public/sounds/eat-marshmallow/issyou-yokoni-iro.mp4
ffmpeg -y -i ../../../public/sounds/eat-marshmallow/issyou-yokoni-iro.mp4 -vn ../../../public/sounds/eat-marshmallow/issyou-yokoni-iro.wav


# name: 一生横にいろ
# ruby: いっしょうよこにいろ
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=MbYYd2TX74o&t=1123
#
touch ../../../dataset/sounds/eat-marshmallow.yml
cat <<EOF >> ../../../dataset/sounds/eat-marshmallow.yml
- name: "一生横にいろ"
  ruby: "いっしょうよこにいろ"
  source: "eat-marshmallow"
  fileName: "eat-marshmallow/issyou-yokoni-iro.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=MbYYd2TX74o&t=1123"
EOF

# date-with-furen
mkdir -p ../../../public/sounds/eat-marshmallow
ffmpeg -y -ss 0:22:36.236 -i ./movies/eat-marshmallow.mp4 -t 0:00:02.009 ../../../public/sounds/eat-marshmallow/date-with-furen.mp4
ffmpeg -y -i ../../../public/sounds/eat-marshmallow/date-with-furen.mp4 -vn ../../../public/sounds/eat-marshmallow/date-with-furen.wav


# name: わたしとデートするならどこいきたい？
# ruby: わたしとでーとするならどこいきたい
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=MbYYd2TX74o&t=1356
#
touch ../../../dataset/sounds/eat-marshmallow.yml
cat <<EOF >> ../../../dataset/sounds/eat-marshmallow.yml
- name: "わたしとデートするならどこいきたい？"
  ruby: "わたしとでーとするならどこいきたい"
  source: "eat-marshmallow"
  fileName: "eat-marshmallow/date-with-furen.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=MbYYd2TX74o&t=1356"
EOF

# baby
mkdir -p ../../../public/sounds/eat-marshmallow
ffmpeg -y -ss 0:27:28.766 -i ./movies/eat-marshmallow.mp4 -t 0:00:03.768 ../../../public/sounds/eat-marshmallow/baby.mp4
ffmpeg -y -i ../../../public/sounds/eat-marshmallow/baby.mp4 -vn ../../../public/sounds/eat-marshmallow/baby.wav


# name: あいやいあいあいやぁ
# ruby: あいやいあいあいやぁ
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=MbYYd2TX74o&t=1648
#
touch ../../../dataset/sounds/eat-marshmallow.yml
cat <<EOF >> ../../../dataset/sounds/eat-marshmallow.yml
- name: "あいやいあいあいやぁ"
  ruby: "あいやいあいあいやぁ"
  source: "eat-marshmallow"
  fileName: "eat-marshmallow/baby.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=MbYYd2TX74o&t=1648"
EOF

# winner
mkdir -p ../../../public/sounds/eat-marshmallow
ffmpeg -y -ss 0:32:02.428 -i ./movies/eat-marshmallow.mp4 -t 0:00:01.988 ../../../public/sounds/eat-marshmallow/winner.mp4
ffmpeg -y -i ../../../public/sounds/eat-marshmallow/winner.mp4 -vn ../../../public/sounds/eat-marshmallow/winner.wav


# name: 負けを知らない女フレン
# ruby: まけをしらないおんなふれん
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=MbYYd2TX74o&t=1922
#
touch ../../../dataset/sounds/eat-marshmallow.yml
cat <<EOF >> ../../../dataset/sounds/eat-marshmallow.yml
- name: "負けを知らない女フレン"
  ruby: "まけをしらないおんなふれん"
  source: "eat-marshmallow"
  fileName: "eat-marshmallow/winner.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=MbYYd2TX74o&t=1922"
EOF

# yochi-yochi-yochi
mkdir -p ../../../public/sounds/eat-marshmallow
ffmpeg -y -ss 0:36:13.342 -i ./movies/eat-marshmallow.mp4 -t 0:00:00.794 ../../../public/sounds/eat-marshmallow/yochi-yochi-yochi.mp4
ffmpeg -y -i ../../../public/sounds/eat-marshmallow/yochi-yochi-yochi.mp4 -vn ../../../public/sounds/eat-marshmallow/yochi-yochi-yochi.wav


# name: よちよちよち
# ruby: よちよちよち
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=MbYYd2TX74o&t=2173
#
touch ../../../dataset/sounds/eat-marshmallow.yml
cat <<EOF >> ../../../dataset/sounds/eat-marshmallow.yml
- name: "よちよちよち"
  ruby: "よちよちよち"
  source: "eat-marshmallow"
  fileName: "eat-marshmallow/yochi-yochi-yochi.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=MbYYd2TX74o&t=2173"
EOF

# fruits
mkdir -p ../../../public/sounds/eat-marshmallow
ffmpeg -y -ss 0:44:18.064 -i ./movies/eat-marshmallow.mp4 -t 0:00:06.879 ../../../public/sounds/eat-marshmallow/fruits.mp4
ffmpeg -y -i ../../../public/sounds/eat-marshmallow/fruits.mp4 -vn ../../../public/sounds/eat-marshmallow/fruits.wav


# name: どうぶつの森の主人公がフルーツを食べるときのモノマネ
# ruby: どうぶつのもりのしゅじんこうが
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=MbYYd2TX74o&t=2658
#
touch ../../../dataset/sounds/eat-marshmallow.yml
cat <<EOF >> ../../../dataset/sounds/eat-marshmallow.yml
- name: "どうぶつの森の主人公がフルーツを食べるときのモノマネ"
  ruby: "どうぶつのもりのしゅじんこうが"
  source: "eat-marshmallow"
  fileName: "eat-marshmallow/fruits.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=MbYYd2TX74o&t=2658"
EOF


# miteuyo
mkdir -p ../../../public/sounds/eat-marshmallow
ffmpeg -y -ss 0:00:39.266 -i ./movies/eat-marshmallow.mp4 -t 0:00:00.669 ../../../public/sounds/eat-marshmallow/miteuyo.mp4
ffmpeg -y -i ../../../public/sounds/eat-marshmallow/miteuyo.mp4 -vn ../../../public/sounds/eat-marshmallow/miteuyo.wav


# name: 見てるよ
# ruby: みてるよ
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=MbYYd2TX74o&t=39
#
touch ../../../dataset/sounds/eat-marshmallow.yml
cat <<EOF >> ../../../dataset/sounds/eat-marshmallow.yml
- name: "見てるよ"
  ruby: "みてるよ"
  source: "eat-marshmallow"
  fileName: "eat-marshmallow/miteuyo.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=MbYYd2TX74o&t=39"
EOF

# minaideyo
mkdir -p ../../../public/sounds/eat-marshmallow
ffmpeg -y -ss 0:01:11.180 -i ./movies/eat-marshmallow.mp4 -t 0:00:04.230 ../../../public/sounds/eat-marshmallow/minaideyo.mp4
ffmpeg -y -i ../../../public/sounds/eat-marshmallow/minaideyo.mp4 -vn ../../../public/sounds/eat-marshmallow/minaideyo.wav


# name: 「見ないでよ」
# ruby: みないでよ
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=MbYYd2TX74o&t=71
#
touch ../../../dataset/sounds/eat-marshmallow.yml
cat <<EOF >> ../../../dataset/sounds/eat-marshmallow.yml
- name: "「見ないでよ」"
  ruby: "みないでよ"
  source: "eat-marshmallow"
  fileName: "eat-marshmallow/minaideyo.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=MbYYd2TX74o&t=71"
EOF

# miteyo
mkdir -p ../../../public/sounds/eat-marshmallow
ffmpeg -y -ss 0:00:57.232 -i ./movies/eat-marshmallow.mp4 -t 0:00:02.941 ../../../public/sounds/eat-marshmallow/miteyo.mp4
ffmpeg -y -i ../../../public/sounds/eat-marshmallow/miteyo.mp4 -vn ../../../public/sounds/eat-marshmallow/miteyo.wav


# name: 「見てよ」
# ruby: みてよ
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=MbYYd2TX74o&t=57
#
touch ../../../dataset/sounds/eat-marshmallow.yml
cat <<EOF >> ../../../dataset/sounds/eat-marshmallow.yml
- name: "「見てよ」"
  ruby: "みてよ"
  source: "eat-marshmallow"
  fileName: "eat-marshmallow/miteyo.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=MbYYd2TX74o&t=57"
EOF


# fire
mkdir -p ../../../public/sounds/eat-marshmallow
ffmpeg -y -ss 0:21:14.533 -i ./movies/eat-marshmallow.mp4 -t 0:00:06.756 ../../../public/sounds/eat-marshmallow/fire.mp4
ffmpeg -y -i ../../../public/sounds/eat-marshmallow/fire.mp4 -vn ../../../public/sounds/eat-marshmallow/fire.wav


# name: これまで焦がしたの
# ruby: これまでこがしたの
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=MbYYd2TX74o&t=1274
#
touch ../../../dataset/sounds/eat-marshmallow.yml
cat <<EOF >> ../../../dataset/sounds/eat-marshmallow.yml
- name: "これまで焦がしたの"
  ruby: "これまでこがしたの"
  source: "eat-marshmallow"
  fileName: "eat-marshmallow/fire.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=MbYYd2TX74o&t=1274"
EOF

# nana
mkdir -p ../../../public/sounds/eat-marshmallow
ffmpeg -y -ss 0:52:16.262 -i ./movies/eat-marshmallow.mp4 -t 0:00:10.553 ../../../public/sounds/eat-marshmallow/nana.mp4
ffmpeg -y -i ../../../public/sounds/eat-marshmallow/nana.mp4 -vn ../../../public/sounds/eat-marshmallow/nana.wav


# name: 7の段
# ruby: 7のだん
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=MbYYd2TX74o&t=3136
#
touch ../../../dataset/sounds/eat-marshmallow.yml
cat <<EOF >> ../../../dataset/sounds/eat-marshmallow.yml
- name: "7の段"
  ruby: "7のだん"
  source: "eat-marshmallow"
  fileName: "eat-marshmallow/nana.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=MbYYd2TX74o&t=3136"
EOF


