#!/bin/bash -xe

# hi
mkdir -p ../../public/sounds/kimutaku-1
ffmpeg -y -ss 0:02:24.649 -i kimutaku-1.mp4 -t 0:00:01.416 ../../public/sounds/kimutaku-1/hi.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/hi.mp4 -vn ../../public/sounds/kimutaku-1/hi.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.416666666666714' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.416' ../../public/sounds/kimutaku-1/base.mp4


# name: はい、こんタリオ〜
# ruby: はいこんたりお
# category: emotions
# clipUrl: 
# 
touch ../../dataset/sounds/kimutaku-1.yml
cat <<EOF >> ../../dataset/sounds/kimutaku-1.yml
- name: "はい、こんタリオ〜"
  ruby: "はいこんたりお"
  source: "kimutaku-1"
  fileName: "kimutaku-1/hi.wav"
  category: ["emotions"]
  clipUrl: ""
EOF

# miteruyo
mkdir -p ../../public/sounds/kimutaku-1
ffmpeg -y -ss 0:02:21.049 -i kimutaku-1.mp4 -t 0:00:02.333 ../../public/sounds/kimutaku-1/miteruyo.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/miteruyo.mp4 -vn ../../public/sounds/kimutaku-1/miteruyo.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.333333333333286' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.333' ../../public/sounds/kimutaku-1/base.mp4


# miteruyo
mkdir -p ../../public/sounds/kimutaku-1
ffmpeg -y -ss 0:02:21.049 -i kimutaku-1.mp4 -t 0:00:03.483 ../../public/sounds/kimutaku-1/miteruyo.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/miteruyo.mp4 -vn ../../public/sounds/kimutaku-1/miteruyo.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.4833333333332064' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.483' ../../public/sounds/kimutaku-1/base.mp4


# name: 見てるよ〜
# ruby: みてるよ
# category: emotions
# clipUrl: 
# 
touch ../../dataset/sounds/kimutaku-1.yml
cat <<EOF >> ../../dataset/sounds/kimutaku-1.yml
- name: "見てるよ〜"
  ruby: "みてるよ"
  source: "kimutaku-1"
  fileName: "kimutaku-1/miteruyo.wav"
  category: ["emotions"]
  clipUrl: ""
EOF
# nico
mkdir -p ../../public/sounds/kimutaku-1
ffmpeg -y -ss 0:18:15.483 -i kimutaku-1.mp4 -t 0:00:05.416 ../../public/sounds/kimutaku-1/nico.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/nico.mp4 -vn ../../public/sounds/kimutaku-1/nico.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=5.4166666666667425' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:05.416' ../../public/sounds/kimutaku-1/base.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/nico.mp4 -vf crop=280:500:1000:220 ../../public/sounds/kimutaku-1/nico-crop-0.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/nico.mp4 -vf crop=250:55:845:130 ../../public/sounds/kimutaku-1/nico-crop-1.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/nico.mp4 -vf crop=300:100:30:625 ../../public/sounds/kimutaku-1/nico-crop-2.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/nico-crop-0.mp4 -vf scale=1000x1784 ../../public/sounds/kimutaku-1/nico-scale-0.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/base.mp4 -i ../../public/sounds/kimutaku-1/nico-scale-0.mp4 -filter_complex "overlay=x=40:y=100" ../../public/sounds/kimutaku-1/nico-merge-0.mp4

ffmpeg -y -i ../../public/sounds/kimutaku-1/nico-crop-1.mp4 -vf scale=1000x220 ../../public/sounds/kimutaku-1/nico-scale-1.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/nico-merge-0.mp4 -i ../../public/sounds/kimutaku-1/nico-scale-1.mp4 -filter_complex "overlay=x=40:y=40" ../../public/sounds/kimutaku-1/nico-merge-1.mp4

ffmpeg -y -i ../../public/sounds/kimutaku-1/nico-crop-2.mp4 -vf scale=1000x324 ../../public/sounds/kimutaku-1/nico-scale-2.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/nico-merge-1.mp4 -i ../../public/sounds/kimutaku-1/nico-scale-2.mp4 -filter_complex "overlay=x=40:y=1580" ../../public/sounds/kimutaku-1/nico-merge-2.mp4
cp ../../public/sounds/kimutaku-1/nico-merge-2.mp4 ../../public/sounds/kimutaku-1/nico-complete.mp4
# name: はいニコ〜
# ruby: はいにこ
# category: emotions
# clipUrl: https://youtube.com/clip/UgkxKpgbybr1B-KQ2Aw32sOFgNf6VpCW05AY?si=KQUWV1r4N1Gw6NI0
# 
touch ../../dataset/sounds/kimutaku-1.yml
cat <<EOF >> ../../dataset/sounds/kimutaku-1.yml
- name: "はいニコ〜"
  ruby: "はいにこ"
  source: "kimutaku-1"
  fileName: "kimutaku-1/nico.wav"
  category: ["emotions"]
  clipUrl: "https://youtube.com/clip/UgkxKpgbybr1B-KQ2Aw32sOFgNf6VpCW05AY?si=KQUWV1r4N1Gw6NI0"
EOF


# only-my-railgun
mkdir -p ../../public/sounds/kimutaku-1
ffmpeg -y -ss 0:49:23.150 -i kimutaku-1.mp4 -t 0:00:03.116 ../../public/sounds/kimutaku-1/only-my-railgun.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/only-my-railgun.mp4 -vn ../../public/sounds/kimutaku-1/only-my-railgun.wav

# name: only my railgun
# ruby: only my railgun
# category: outa
# clipUrl: https://youtube.com/clip/Ugkx3gTD_xn-0hr7i645LdbxlsuVbaSfRyVi?si=rgTtAeowr0rWSoLC
# 
touch ../../dataset/sounds/kimutaku-1.yml
cat <<EOF >> ../../dataset/sounds/kimutaku-1.yml
- name: "only my railgun"
  ruby: "only my railgun"
  source: "kimutaku-1"
  fileName: "kimutaku-1/only-my-railgun.wav"
  category: ["outa"]
  clipUrl: "https://youtube.com/clip/Ugkx3gTD_xn-0hr7i645LdbxlsuVbaSfRyVi?si=rgTtAeowr0rWSoLC"
EOF

# only-my-railgun-movie
mkdir -p ../../public/sounds/kimutaku-1
ffmpeg -y -ss 0:49:16.633 -i kimutaku-1.mp4 -t 0:00:09.633 ../../public/sounds/kimutaku-1/only-my-railgun-movie.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/only-my-railgun-movie.mp4 -vn ../../public/sounds/kimutaku-1/only-my-railgun-movie.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=9.633333333330029' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:09.633' ../../public/sounds/kimutaku-1/base.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/only-my-railgun-movie.mp4 -vf crop=280:500:1000:220 ../../public/sounds/kimutaku-1/only-my-railgun-movie-crop-0.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/only-my-railgun-movie.mp4 -vf crop=700:500:215:90 ../../public/sounds/kimutaku-1/only-my-railgun-movie-crop-1.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/only-my-railgun-movie.mp4 -vf crop=300:100:30:625 ../../public/sounds/kimutaku-1/only-my-railgun-movie-crop-2.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/only-my-railgun-movie-crop-0.mp4 -vf scale=1000x1784 ../../public/sounds/kimutaku-1/only-my-railgun-movie-scale-0.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/base.mp4 -i ../../public/sounds/kimutaku-1/only-my-railgun-movie-scale-0.mp4 -filter_complex "overlay=x=40:y=300" ../../public/sounds/kimutaku-1/only-my-railgun-movie-merge-0.mp4

ffmpeg -y -i ../../public/sounds/kimutaku-1/only-my-railgun-movie-crop-1.mp4 -vf scale=700x500 ../../public/sounds/kimutaku-1/only-my-railgun-movie-scale-1.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/only-my-railgun-movie-merge-0.mp4 -i ../../public/sounds/kimutaku-1/only-my-railgun-movie-scale-1.mp4 -filter_complex "overlay=x=190:y=40" ../../public/sounds/kimutaku-1/only-my-railgun-movie-merge-1.mp4

ffmpeg -y -i ../../public/sounds/kimutaku-1/only-my-railgun-movie-crop-2.mp4 -vf scale=1000x324 ../../public/sounds/kimutaku-1/only-my-railgun-movie-scale-2.mp4
ffmpeg -y -i ../../public/sounds/kimutaku-1/only-my-railgun-movie-merge-1.mp4 -i ../../public/sounds/kimutaku-1/only-my-railgun-movie-scale-2.mp4 -filter_complex "overlay=x=40:y=1580" ../../public/sounds/kimutaku-1/only-my-railgun-movie-merge-2.mp4
cp ../../public/sounds/kimutaku-1/only-my-railgun-movie-merge-2.mp4 ../../public/sounds/kimutaku-1/only-my-railgun-movie-complete.mp4

