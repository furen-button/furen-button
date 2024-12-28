#!/bin/bash -xe
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

rm -rf ./kirby64-1.yml


# tira
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:01:34.681 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:00.390 ../../public/sounds/kirby64-1/tira.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/tira.mp4 -vn ../../public/sounds/kirby64-1/tira.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.39078499999999394' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0.39078499999999394' ../../public/sounds/kirby64-1/base.mp4


# name: ちら
# ruby: ちら
# category: tira
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=94
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "ちら"
  ruby: "ちら"
  source: "kirby64-1"
  fileName: "kirby64-1/tira.mp3"
  category: ["tira"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=94"
EOF

# tira2
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:01:38.256 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:00.499 ../../public/sounds/kirby64-1/tira2.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/tira2.mp4 -vn ../../public/sounds/kirby64-1/tira2.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.49992300000000967' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0.49992300000000967' ../../public/sounds/kirby64-1/base.mp4


# name: ちら
# ruby: ちら
# category: tira
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=98
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "ちら"
  ruby: "ちら"
  source: "kirby64-1"
  fileName: "kirby64-1/tira2.mp3"
  category: ["tira"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=98"
EOF

# miteruyo
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:01:41.649 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:01.809 ../../public/sounds/kirby64-1/miteruyo.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/miteruyo.mp4 -vn ../../public/sounds/kirby64-1/miteruyo.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.8092710000000096' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.8092710000000096' ../../public/sounds/kirby64-1/base.mp4


# name: 見てるよ
# ruby: みてるよ
# category: miteruyo
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=101
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "見てるよ"
  ruby: "みてるよ"
  source: "kirby64-1"
  fileName: "kirby64-1/miteruyo.mp3"
  category: ["miteruyo"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=101"
EOF

# kontario
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:01:43.471 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:01.779 ../../public/sounds/kirby64-1/kontario.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/kontario.mp4 -vn ../../public/sounds/kirby64-1/kontario.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.779911999999996' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.779911999999996' ../../public/sounds/kirby64-1/base.mp4


# name: こんたりお
# ruby: こんたりお
# category: miteruyo
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=103
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "あい、こんたりお"
  ruby: "あいこんたりお"
  source: "kirby64-1"
  fileName: "kirby64-1/kontario.mp3"
  category: ["miteruyo"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=103"
EOF

# race
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:05:14.097 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:13.699 ../../public/sounds/kirby64-1/race.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/race.mp4 -vn ../../public/sounds/kirby64-1/race.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=13.699883999999997' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=13.699883999999997' ../../public/sounds/kirby64-1/base.mp4


# name: けんけんレース（BGM）
# ruby: けんけんれーす
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=314
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "けんけんレース（BGM）"
  ruby: "けんけんれーす"
  source: "kirby64-1"
  fileName: "kirby64-1/race.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=314"
EOF

# taikai
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:05:48.147 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:02.027 ../../public/sounds/kirby64-1/taikai.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/taikai.mp4 -vn ../../public/sounds/kirby64-1/taikai.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.0279339999999024' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=2.0279339999999024' ../../public/sounds/kirby64-1/base.mp4


# name: これの大会しようよにじさんじ
# ruby: これのたいかいしようよにじさんじ
# category: meigen
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=348
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "これの大会しようよにじさんじ"
  ruby: "これのたいかいしようよにじさんじ"
  source: "kirby64-1"
  fileName: "kirby64-1/taikai.mp3"
  category: ["meigen"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=348"
EOF

# nice
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:05:55.346 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:02.719 ../../public/sounds/kirby64-1/nice.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/nice.mp4 -vn ../../public/sounds/kirby64-1/nice.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.719058000000018' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=2.719058000000018' ../../public/sounds/kirby64-1/base.mp4


# name: ナイス〜！
# ruby: ないす
# category: emotions,game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=355
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "ナイス〜！"
  ruby: "ないす"
  source: "kirby64-1"
  fileName: "kirby64-1/nice.mp3"
  category: ["emotions","game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=355"
EOF

# waraigoe
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:07:40.396 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:03.397 ../../public/sounds/kirby64-1/waraigoe.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/waraigoe.mp4 -vn ../../public/sounds/kirby64-1/waraigoe.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.397650999999996' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=3.397650999999996' ../../public/sounds/kirby64-1/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: waraigoe
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=460
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "kirby64-1"
  fileName: "kirby64-1/waraigoe.mp3"
  category: ["waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=460"
EOF

# nanikore
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:07:44.296 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:01.619 ../../public/sounds/kirby64-1/nanikore.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/nanikore.mp4 -vn ../../public/sounds/kirby64-1/nanikore.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.61967199999998' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.61967199999998' ../../public/sounds/kirby64-1/base.mp4


# name: なにこれ！
# ruby: なにこれ
# category: waraigoe
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=464
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "なにこれ！"
  ruby: "なにこれ"
  source: "kirby64-1"
  fileName: "kirby64-1/nanikore.mp3"
  category: ["waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=464"
EOF

# yameteyo
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:08:08.395 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:00.457 ../../public/sounds/kirby64-1/yameteyo.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/yameteyo.mp4 -vn ../../public/sounds/kirby64-1/yameteyo.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.4577340000000163' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0.4577340000000163' ../../public/sounds/kirby64-1/base.mp4


# name: やめてよ
# ruby: やめてよ
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=488
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "やめてよ"
  ruby: "やめてよ"
  source: "kirby64-1"
  fileName: "kirby64-1/yameteyo.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=488"
EOF

# waraigoe2
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:12:45.393 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:09.012 ../../public/sounds/kirby64-1/waraigoe2.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/waraigoe2.mp4 -vn ../../public/sounds/kirby64-1/waraigoe2.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=9.012234999999919' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=9.012234999999919' ../../public/sounds/kirby64-1/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: waraigoe
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=765
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "kirby64-1"
  fileName: "kirby64-1/waraigoe2.mp3"
  category: ["waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=765"
EOF

# waraigoe3
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:13:24.793 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:04.370 ../../public/sounds/kirby64-1/waraigoe3.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/waraigoe3.mp4 -vn ../../public/sounds/kirby64-1/waraigoe3.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4.370966000000067' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=4.370966000000067' ../../public/sounds/kirby64-1/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: waraigoe
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=804
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "kirby64-1"
  fileName: "kirby64-1/waraigoe3.mp3"
  category: ["waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=804"
EOF

# bakemono
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:13:33.182 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:13.344 ../../public/sounds/kirby64-1/bakemono.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/bakemono.mp4 -vn ../../public/sounds/kirby64-1/bakemono.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=13.344654999999989' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=13.344654999999989' ../../public/sounds/kirby64-1/base.mp4


# name: ばけものだキメラ生み出した
# ruby: ばけものだ
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=813
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "ばけものだキメラ生み出した"
  ruby: "ばけものだ"
  source: "kirby64-1"
  fileName: "kirby64-1/bakemono.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=813"
EOF

# kimera
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:14:00.192 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:18.099 ../../public/sounds/kirby64-1/kimera.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/kimera.mp4 -vn ../../public/sounds/kirby64-1/kimera.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=18.099846999999954' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=18.099846999999954' ../../public/sounds/kirby64-1/base.mp4


# name: むかしのおとなたちが生んだキメラだ、この過ちを忘れずに今日を生きていこう、約束だよみんな
# ruby: むかしのおとなたちがうんだきめらだ
# category: game,meigen
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=840
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "むかしのおとなたちが生んだキメラだ、この過ちを忘れずに今日を生きていこう、約束だよみんな"
  ruby: "むかしのおとなたちがうんだきめらだ"
  source: "kirby64-1"
  fileName: "kirby64-1/kimera.mp3"
  category: ["game","meigen"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=840"
EOF

# oraoraora
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:14:29.542 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:05.749 ../../public/sounds/kirby64-1/oraoraora.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/oraoraora.mp4 -vn ../../public/sounds/kirby64-1/oraoraora.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=5.749952999999891' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=5.749952999999891' ../../public/sounds/kirby64-1/base.mp4


# name: オラオラオラオラオラオラオラオラ！
# ruby: おらおらおらおらおらおらおらおら
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=869
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "オラオラオラオラオラオラオラオラ！"
  ruby: "おらおらおらおらおらおらおらおら"
  source: "kirby64-1"
  fileName: "kirby64-1/oraoraora.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=869"
EOF

# sit-down-kawaii
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:14:41.692 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:17.499 ../../public/sounds/kirby64-1/sit-down-kawaii.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/sit-down-kawaii.mp4 -vn ../../public/sounds/kirby64-1/sit-down-kawaii.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=17.499852999999916' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=17.499852999999916' ../../public/sounds/kirby64-1/base.mp4


# name: 座ってカービィ？
# ruby: すわってかーびぃ
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=881
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "座ってカービィ？"
  ruby: "すわってかーびぃ"
  source: "kirby64-1"
  fileName: "kirby64-1/sit-down-kawaii.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=881"
EOF

# wado-matte
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:23:31.801 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:09.314 ../../public/sounds/kirby64-1/wado-matte.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/wado-matte.mp4 -vn ../../public/sounds/kirby64-1/wado-matte.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=9.314756666666199' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=9.314756666666199' ../../public/sounds/kirby64-1/base.mp4


# name: ワド待って！！ワドーーーー！！！
# ruby: わどまって
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=1411
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "ワド待って！！ワドーーーー！！！"
  ruby: "わどまって"
  source: "kirby64-1"
  fileName: "kirby64-1/wado-matte.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=1411"
EOF

# mitekore
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:33:02.065 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:11.389 ../../public/sounds/kirby64-1/mitekore.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/mitekore.mp4 -vn ../../public/sounds/kirby64-1/mitekore.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=11.389360000000124' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=11.389360000000124' ../../public/sounds/kirby64-1/base.mp4


# name: 見てこれ
# ruby: みてこれ
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=1982
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "見てこれ"
  ruby: "みてこれ"
  source: "kirby64-1"
  fileName: "kirby64-1/mitekore.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=1982"
EOF

# hamewaza
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:36:14.141 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:15.608 ../../public/sounds/kirby64-1/hamewaza.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/hamewaza.mp4 -vn ../../public/sounds/kirby64-1/hamewaza.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=15.608896000000186' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=15.608896000000186' ../../public/sounds/kirby64-1/base.mp4


# name: はめわざ
# ruby: はめわざ
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=2174
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "はめわざ"
  ruby: "はめわざ"
  source: "kirby64-1"
  fileName: "kirby64-1/hamewaza.mp3"
  category: ["game,waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=2174"
EOF

# trap
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:35:15.819 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:10.562 ../../public/sounds/kirby64-1/trap.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/trap.mp4 -vn ../../public/sounds/kirby64-1/trap.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=10.562835000000177' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=10.562835000000177' ../../public/sounds/kirby64-1/base.mp4


# name: わなすぎる、そんなひどいことがあってたまるか
# ruby: わなすぎるそんなひどいことがあってたまるか
# category: damage,game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=2115
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "わなすぎる、そんなひどいことがあってたまるか"
  ruby: "わなすぎるそんなひどいことがあってたまるか"
  source: "kirby64-1"
  fileName: "kirby64-1/trap.mp3"
  category: ["damage","game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=2115"
EOF

# kirby-first
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:34:33.583 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:02.485 ../../public/sounds/kirby64-1/kirby-first.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/kirby-first.mp4 -vn ../../public/sounds/kirby64-1/kirby-first.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.4859129999999823' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=2.4859129999999823' ../../public/sounds/kirby64-1/base.mp4


# name: カービィファーストの世界で生きてきたから
# ruby: かーびぃふぁーすと
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=2073
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "カービィファーストの世界で生きてきたから"
  ruby: "かーびぃふぁーすと"
  source: "kirby64-1"
  fileName: "kirby64-1/kirby-first.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=2073"
EOF

# cry-woods
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:38:20.538 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:05.551 ../../public/sounds/kirby64-1/cry-woods.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/cry-woods.mp4 -vn ../../public/sounds/kirby64-1/cry-woods.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=5.5518239999996695' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=5.5518239999996695' ../../public/sounds/kirby64-1/base.mp4


# name: あの泣いている顔大好き
# ruby: あのないているかお
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=2300
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "あの泣いている顔大好き"
  ruby: "あのないているかお"
  source: "kirby64-1"
  fileName: "kirby64-1/cry-woods.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=2300"
EOF

# rakuni
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:52:37.279 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:03.081 ../../public/sounds/kirby64-1/rakuni.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/rakuni.mp4 -vn ../../public/sounds/kirby64-1/rakuni.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.081294000000071' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=3.081294000000071' ../../public/sounds/kirby64-1/base.mp4


# name: 楽にしてあげるからね今
# ruby: らくにしてあげるからねいま
# category: meigen
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=3157
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "楽にしてあげるからね今"
  ruby: "らくにしてあげるからねいま"
  source: "kirby64-1"
  fileName: "kirby64-1/rakuni.mp3"
  category: ["meigen"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=3157"
EOF

# abune
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:52:40.299 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:04.483 ../../public/sounds/kirby64-1/abune.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/abune.mp4 -vn ../../public/sounds/kirby64-1/abune.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4.483615000000555' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=4.483615000000555' ../../public/sounds/kirby64-1/base.mp4


# name: あぶね！？
# ruby: あぶね！？
# category: emotions,game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=3160
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "あぶね！？"
  ruby: "あぶね！？"
  source: "kirby64-1"
  fileName: "kirby64-1/abune.mp3"
  category: ["emotions","game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=3160"
EOF

# kappa
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:52:47.060 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:01.989 ../../public/sounds/kirby64-1/kappa.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/kappa.mp4 -vn ../../public/sounds/kirby64-1/kappa.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.9892829999985224' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.9892829999985224' ../../public/sounds/kirby64-1/base.mp4


# name: かっぱがいる！みんな
# ruby: かっぱがいる！みんな
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=3167
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "かっぱがいる！みんな"
  ruby: "かっぱがいる！みんな"
  source: "kirby64-1"
  fileName: "kirby64-1/kappa.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=3167"
EOF

# hidokunai
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:52:50.719 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:02.008 ../../public/sounds/kirby64-1/hidokunai.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/hidokunai.mp4 -vn ../../public/sounds/kirby64-1/hidokunai.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.0082896666663146' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=2.0082896666663146' ../../public/sounds/kirby64-1/base.mp4


# name: これひどくない！
# ruby: これひどくない！
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=3170
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "これひどくない！"
  ruby: "これひどくない！"
  source: "kirby64-1"
  fileName: "kirby64-1/hidokunai.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=3170"
EOF

# abuna-i
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 1:07:34.646 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:03.996 ../../public/sounds/kirby64-1/abuna-i.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/abuna-i.mp4 -vn ../../public/sounds/kirby64-1/abuna-i.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.9962259999997514' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=3.9962259999997514' ../../public/sounds/kirby64-1/base.mp4


# name: あぶなーい！！
# ruby: あぶなーい！！
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=4054
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "あぶなーい！！"
  ruby: "あぶなーい！！"
  source: "kirby64-1"
  fileName: "kirby64-1/abuna-i.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=4054"
EOF

# good-game
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 1:07:47.333 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:08.345 ../../public/sounds/kirby64-1/good-game.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/good-game.mp4 -vn ../../public/sounds/kirby64-1/good-game.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=8.345945999999913' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=8.345945999999913' ../../public/sounds/kirby64-1/base.mp4


# name: いい性格してるな作った人
# ruby: いいせいかくしてるなつくったひと
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=4067
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "いい性格してるな作った人"
  ruby: "いいせいかくしてるなつくったひと"
  source: "kirby64-1"
  fileName: "kirby64-1/good-game.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=4067"
EOF

# knight-sence
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 1:07:56.404 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:14.644 ../../public/sounds/kirby64-1/knight-sence.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/knight-sence.mp4 -vn ../../public/sounds/kirby64-1/knight-sence.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=14.644013000000086' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=14.644013000000086' ../../public/sounds/kirby64-1/base.mp4


# name: 絶対に上になにかある
# ruby: ぜったいにうえになにかある
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=4076
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "絶対に上になにかある"
  ruby: "ぜったいにうえになにかある"
  source: "kirby64-1"
  fileName: "kirby64-1/knight-sence.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=4076"
EOF

# cute-aggression
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 1:42:19.449 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:17.516 ../../public/sounds/kirby64-1/cute-aggression.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/cute-aggression.mp4 -vn ../../public/sounds/kirby64-1/cute-aggression.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=17.516666666666424' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=17.516666666666424' ../../public/sounds/kirby64-1/base.mp4


# name: おねえさんが運転下手くそなせいで痛い思いさせてごめんね、キュートアグレッションって言うんだよ
# ruby: おねえさんがうんてんへたくそなせいで
# category: game,meigen
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=6139
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "おねえさんが運転下手くそなせいで痛い思いさせてごめんね、キュートアグレッションって言うんだよ"
  ruby: "おねえさんがうんてんへたくそなせいで"
  source: "kirby64-1"
  fileName: "kirby64-1/cute-aggression.mp3"
  category: ["game","meigen"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=6139"
EOF

# knight-eye
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 1:43:05.716 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:04.966 ../../public/sounds/kirby64-1/knight-eye.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/knight-eye.mp4 -vn ../../public/sounds/kirby64-1/knight-eye.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4.966666666666242' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=4.966666666666242' ../../public/sounds/kirby64-1/base.mp4


# name: わたしは見逃さない！
# ruby: わたしはみのがさない！
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=6185
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "わたしは見逃さない！"
  ruby: "わたしはみのがさない！"
  source: "kirby64-1"
  fileName: "kirby64-1/knight-eye.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=6185"
EOF

# yatta
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 1:49:09.768 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:04.753 ../../public/sounds/kirby64-1/yatta.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/yatta.mp4 -vn ../../public/sounds/kirby64-1/yatta.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4.753351000000293' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=4.753351000000293' ../../public/sounds/kirby64-1/base.mp4


# name: やったー！
# ruby: やったー！
# category: emotions,game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=6549
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "やったー！"
  ruby: "やったー！"
  source: "kirby64-1"
  fileName: "kirby64-1/yatta.mp3"
  category: ["emotions","game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=6549"
EOF

# warn
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 1:56:51.066 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:10.566 ../../public/sounds/kirby64-1/warn.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/warn.mp4 -vn ../../public/sounds/kirby64-1/warn.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=10.566795333333175' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=10.566795333333175' ../../public/sounds/kirby64-1/base.mp4


# name: これななめになるから気をつけてねカービィ
# ruby: これななめになるからきをつけてねカービィ
# category: game,sokuochi
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=7011
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "これななめになるから気をつけてねカービィ"
  ruby: "これななめになるからきをつけてねカービィ"
  source: "kirby64-1"
  fileName: "kirby64-1/warn.mp3"
  category: ["game","sokuochi"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=7011"
EOF

# papapapapa-help-me
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 1:57:13.717 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:08.242 ../../public/sounds/kirby64-1/papapapapa-help-me.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/papapapapa-help-me.mp4 -vn ../../public/sounds/kirby64-1/papapapapa-help-me.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=8.242948999999498' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=8.242948999999498' ../../public/sounds/kirby64-1/base.mp4


# name: ぱぱぱぱぱぱぱぱ！たすけてー！！
# ruby: ぱぱぱぱぱぱぱぱ！たすけてー！！
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=7033
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "ぱぱぱぱぱぱぱぱ！たすけてー！！"
  ruby: "ぱぱぱぱぱぱぱぱ！たすけてー！！"
  source: "kirby64-1"
  fileName: "kirby64-1/papapapapa-help-me.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=7033"
EOF

# ne-ya-da
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 2:01:36.254 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:04.983 ../../public/sounds/kirby64-1/ne-ya-da.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/ne-ya-da.mp4 -vn ../../public/sounds/kirby64-1/ne-ya-da.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4.983333333333576' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=4.983333333333576' ../../public/sounds/kirby64-1/base.mp4


# name: ねーぇー！！やーだー！！！
# ruby: ねーぇー！！やーだー！！！
# category: damage,game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=7296
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "ねーぇー！！やーだー！！！"
  ruby: "ねーぇー！！やーだー！！！"
  source: "kirby64-1"
  fileName: "kirby64-1/ne-ya-da.mp3"
  category: ["damage","game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=7296"
EOF

# yossha
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 2:02:26.860 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:03.935 ../../public/sounds/kirby64-1/yossha.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/yossha.mp4 -vn ../../public/sounds/kirby64-1/yossha.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.9352069999995365' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=3.9352069999995365' ../../public/sounds/kirby64-1/base.mp4


# name: よっしゃーとれたー！えらーいカービィ！
# ruby: よっしゃーとれたー！えらーいカービィ！
# category: emotions,game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=7346
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "よっしゃーとれたー！えらーいカービィ！"
  ruby: "よっしゃーとれたー！えらーいカービィ！"
  source: "kirby64-1"
  fileName: "kirby64-1/yossha.mp3"
  category: ["emotions","game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=7346"
EOF

# cry-kirby
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 1:08:32.132 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:05.378 ../../public/sounds/kirby64-1/cry-kirby.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/cry-kirby.mp4 -vn ../../public/sounds/kirby64-1/cry-kirby.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=5.378009999999449' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=5.378009999999449' ../../public/sounds/kirby64-1/base.mp4


# name: わたしにはカービィを泣かせることしかできない
# ruby: わたしにはかーびぃをなかせることしかできない
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=4112
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "わたしにはカービィを泣かせることしかできない"
  ruby: "わたしにはかーびぃをなかせることしかできない"
  source: "kirby64-1"
  fileName: "kirby64-1/cry-kirby.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=4112"
EOF

# damedesyo
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:47:03.248 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:01.185 ../../public/sounds/kirby64-1/damedesyo.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/damedesyo.mp4 -vn ../../public/sounds/kirby64-1/damedesyo.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.1858030000003055' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.1858030000003055' ../../public/sounds/kirby64-1/base.mp4


# name: だめでしょ！
# ruby: だめでしょ！
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=2823
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "だめでしょ！"
  ruby: "だめでしょ！"
  source: "kirby64-1"
  fileName: "kirby64-1/damedesyo.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=2823"
EOF


# nande-sonna
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:47:06.245 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:01.099 ../../public/sounds/kirby64-1/nande-sonna.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/nande-sonna.mp4 -vn ../../public/sounds/kirby64-1/nande-sonna.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.0998926666666193' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.0998926666666193' ../../public/sounds/kirby64-1/base.mp4


# name: なんでそんなことするの！
# ruby: なんでそんなことするの！
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=2826
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "なんでそんなことするの！"
  ruby: "なんでそんなことするの！"
  source: "kirby64-1"
  fileName: "kirby64-1/nande-sonna.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=2826"
EOF

# yakusoku
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 1:50:52.441 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:01.574 ../../public/sounds/kirby64-1/yakusoku.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/yakusoku.mp4 -vn ../../public/sounds/kirby64-1/yakusoku.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.5747806666677207' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.5747806666677207' ../../public/sounds/kirby64-1/base.mp4


# name: おねえさんとの約束だよ
# ruby: おねえさんとのやくそくだよ
# category: game,meigen
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=6652
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "おねえさんとの約束だよ"
  ruby: "おねえさんとのやくそくだよ"
  source: "kirby64-1"
  fileName: "kirby64-1/yakusoku.mp3"
  category: ["game","meigen"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=6652"
EOF

# boss-failed
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 1:23:33.901 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:06.796 ../../public/sounds/kirby64-1/boss-failed.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/boss-failed.mp4 -vn ../../public/sounds/kirby64-1/boss-failed.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6.7964920000003985' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=6.7964920000003985' ../../public/sounds/kirby64-1/base.mp4


# name: べぇーい！
# ruby: べぇーい！
# category: damage,game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=5013
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "べぇーい！"
  ruby: "べぇーい！"
  source: "kirby64-1"
  fileName: "kirby64-1/boss-failed.mp3"
  category: ["damage","game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=5013"
EOF

# smile
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:40:08.280 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:14.905 ../../public/sounds/kirby64-1/smile.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/smile.mp4 -vn ../../public/sounds/kirby64-1/smile.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=14.905827999999929' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=14.905827999999929' ../../public/sounds/kirby64-1/base.mp4


# name: なにがそんなわらえることがある？
# ruby: なにがそんなわらえることがある？
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=2408
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "なにがそんなわらえることがある？"
  ruby: "なにがそんなわらえることがある？"
  source: "kirby64-1"
  fileName: "kirby64-1/smile.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=2408"
EOF

# psyco-happiness
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 1:34:46.415 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:05.900 ../../public/sounds/kirby64-1/psyco-happiness.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/psyco-happiness.mp4 -vn ../../public/sounds/kirby64-1/psyco-happiness.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=5.900880999999572' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=5.900880999999572' ../../public/sounds/kirby64-1/base.mp4


# name: かわいそう、ころしてあげようねわたしが、わたしが幸せを解き放ってあげよう
# ruby: かわいそうころしてあげようねわたしが
# category: game,meigen
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=5686
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "かわいそう、ころしてあげようねわたしが、わたしが幸せを解き放ってあげよう"
  ruby: "かわいそうころしてあげようねわたしが"
  source: "kirby64-1"
  fileName: "kirby64-1/psyco-happiness.mp3"
  category: ["game","meigen"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=5686"
EOF


# hai
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:11:40.960 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:01.070 ../../public/sounds/kirby64-1/hai.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/hai.mp4 -vn ../../public/sounds/kirby64-1/hai.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.0707290000000285' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.0707290000000285' ../../public/sounds/kirby64-1/base.mp4


# name: はぁい
# ruby: はぁい
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=700
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "はぁい"
  ruby: "はぁい"
  source: "kirby64-1"
  fileName: "kirby64-1/hai.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=700"
EOF

# dry-eye
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:11:07.027 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:06.432 ../../public/sounds/kirby64-1/dry-eye.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/dry-eye.mp4 -vn ../../public/sounds/kirby64-1/dry-eye.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6.432124333333604' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=6.432124333333604' ../../public/sounds/kirby64-1/base.mp4


# name: 目充血してない？目薬さしたほうがいいよ、ドライアイだよ
# ruby: めじゅうけつしてない？めぐすりさしたほうがいいよ
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=667
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "目充血してない？目薬さしたほうがいいよ、ドライアイだよ"
  ruby: "めじゅうけつしてない？めぐすりさしたほうがいいよ"
  source: "kirby64-1"
  fileName: "kirby64-1/dry-eye.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=667"
EOF

# poyo
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:34:11.885 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:00.549 ../../public/sounds/kirby64-1/poyo.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/poyo.mp4 -vn ../../public/sounds/kirby64-1/poyo.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.5491259999998874' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0.5491259999998874' ../../public/sounds/kirby64-1/base.mp4


# name: ぽよぉ
# ruby: ぽよぉ
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=2051
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "ぽよぉ"
  ruby: "ぽよぉ"
  source: "kirby64-1"
  fileName: "kirby64-1/poyo.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=2051"
EOF

# minogasanai
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:34:03.966 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:08.467 ../../public/sounds/kirby64-1/minogasanai.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/minogasanai.mp4 -vn ../../public/sounds/kirby64-1/minogasanai.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=8.467568000000028' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=8.467568000000028' ../../public/sounds/kirby64-1/base.mp4


# name: 見逃さなかった
# ruby: みのがさなかった
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=2043
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "見逃さなかった"
  ruby: "みのがさなかった"
  source: "kirby64-1"
  fileName: "kirby64-1/minogasanai.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=2043"
EOF

# fire-flower
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:30:00.409 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:01.810 ../../public/sounds/kirby64-1/fire-flower.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/fire-flower.mp4 -vn ../../public/sounds/kirby64-1/fire-flower.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.8105780000000777' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.8105780000000777' ../../public/sounds/kirby64-1/base.mp4


# name: 俺自身が花火になることだ
# ruby: おれじしんがはなびになることだ
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=1800
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "俺自身が花火になることだ"
  ruby: "おれじしんがはなびになることだ"
  source: "kirby64-1"
  fileName: "kirby64-1/fire-flower.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=1800"
EOF

# sad-furen
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:29:49.846 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:08.208 ../../public/sounds/kirby64-1/sad-furen.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/sad-furen.mp4 -vn ../../public/sounds/kirby64-1/sad-furen.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=8.208517000000029' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=8.208517000000029' ../../public/sounds/kirby64-1/base.mp4


# name: かなしいよわたし
# ruby: かなしいよわたし
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=1789
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "かなしいよわたし"
  ruby: "かなしいよわたし"
  source: "kirby64-1"
  fileName: "kirby64-1/sad-furen.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=1789"
EOF

# fire-sword
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:35:08.758 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:01.917 ../../public/sounds/kirby64-1/fire-sword.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/fire-sword.mp4 -vn ../../public/sounds/kirby64-1/fire-sword.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.9174330000000737' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.9174330000000737' ../../public/sounds/kirby64-1/base.mp4


# name: めっちゃかっこいいじゃん！
# ruby: めっちゃかっこいいじゃん！
# category: emotions,game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=2108
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "めっちゃかっこいいじゃん！"
  ruby: "めっちゃかっこいいじゃん！"
  source: "kirby64-1"
  fileName: "kirby64-1/fire-sword.mp3"
  category: ["emotions","game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=2108"
EOF

# stone-saikyo
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:41:08.710 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:31.916 ../../public/sounds/kirby64-1/stone-saikyo.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/stone-saikyo.mp4 -vn ../../public/sounds/kirby64-1/stone-saikyo.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=31.916666666666515' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=31.916666666666515' ../../public/sounds/kirby64-1/base.mp4


# name: すごーいこれ！無敵やん！巨人やん！
# ruby: すごーいこれ！むてきやん！
# category: emotions,game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=2468
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "すごーいこれ！無敵やん！巨人やん！"
  ruby: "すごーいこれ！むてきやん！"
  source: "kirby64-1"
  fileName: "kirby64-1/stone-saikyo.mp3"
  category: ["emotions","game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=2468"
EOF

# waraigoe3
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 0:41:11.227 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:12.182 ../../public/sounds/kirby64-1/waraigoe3.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/waraigoe3.mp4 -vn ../../public/sounds/kirby64-1/waraigoe3.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=12.18295100000023' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=12.18295100000023' ../../public/sounds/kirby64-1/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: game,waraigoe
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=2471
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "kirby64-1"
  fileName: "kirby64-1/waraigoe3.mp3"
  category: ["game","waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=2471"
EOF

# found-tomato
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 1:12:53.403 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:08.096 ../../public/sounds/kirby64-1/found-tomato.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/found-tomato.mp4 -vn ../../public/sounds/kirby64-1/found-tomato.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=8.096125999998549' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=8.096125999998549' ../../public/sounds/kirby64-1/base.mp4


# name: あ゛マ゛キ゛シ゛ム゛ト゛マ゛ト゛た゛ぁ゛
# ruby: あまきしむとまと
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=4373
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "あ゛マ゛キ゛シ゛ム゛ト゛マ゛ト゛た゛ぁ゛"
  ruby: "あまきしむとまと"
  source: "kirby64-1"
  fileName: "kirby64-1/found-tomato.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=4373"
EOF

# pressed
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 1:13:03.325 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:05.163 ../../public/sounds/kirby64-1/pressed.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/pressed.mp4 -vn ../../public/sounds/kirby64-1/pressed.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=5.163140999999996' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=5.163140999999996' ../../public/sounds/kirby64-1/base.mp4


# name: いだぁーーーーい！
# ruby: いだぁーーーーい！
# category: damage,game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=4383
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "いだぁーーーーい！"
  ruby: "いだぁーーーーい！"
  source: "kirby64-1"
  fileName: "kirby64-1/pressed.mp3"
  category: ["damage","game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=4383"
EOF

# one-more
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 1:20:25.643 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:01.315 ../../public/sounds/kirby64-1/one-more.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/one-more.mp4 -vn ../../public/sounds/kirby64-1/one-more.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.3153229999998075' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.3153229999998075' ../../public/sounds/kirby64-1/base.mp4


# name: もっかいもっかいもっかい
# ruby: もっかいもっかいもっかい
# category: game,meigen
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=4825
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "もっかいもっかいもっかい"
  ruby: "もっかいもっかいもっかい"
  source: "kirby64-1"
  fileName: "kirby64-1/one-more.mp3"
  category: ["game","meigen"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=4825"
EOF


# byebye
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 2:08:34.288 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:09.077 ../../public/sounds/kirby64-1/byebye.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/byebye.mp4 -vn ../../public/sounds/kirby64-1/byebye.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=9.07767366666667' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=9.07767366666667' ../../public/sounds/kirby64-1/base.mp4


# name: また明日お会いしましょう！
# ruby: またあしたおあいしましょう！
# category: miteruyo
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=7714
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "また明日お会いしましょう！"
  ruby: "またあしたおあいしましょう！"
  source: "kirby64-1"
  fileName: "kirby64-1/byebye.mp3"
  category: ["miteruyo"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=7714"
EOF

# kapa
mkdir -p ../../public/sounds/kirby64-1
ffmpeg -y -ss 1:51:34.250 -i ../../scripts/video-clip-tool/public/movies/kirby64-1.mp4 -t 0:00:04.710 ../../public/sounds/kirby64-1/kapa.mp4
ffmpeg -y -i ../../public/sounds/kirby64-1/kapa.mp4 -vn ../../public/sounds/kirby64-1/kapa.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4.710798000000068' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=4.710798000000068' ../../public/sounds/kirby64-1/base.mp4


# name: かぱーかぱぱー
# ruby: かぱーかぱぱー
# category: game
# clipUrl: https://www.youtube.com/watch?v=5ll4BW31L_8&t=6694
#
touch ./kirby64-1.yml
cat <<EOF >> ./kirby64-1.yml
- name: "かぱーかぱぱー"
  ruby: "かぱーかぱぱー"
  source: "kirby64-1"
  fileName: "kirby64-1/kapa.mp3"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5ll4BW31L_8&t=6694"
EOF
