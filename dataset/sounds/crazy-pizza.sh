#!/bin/bash -xe

# cp local.sh ../../dataset/sounds/erusa.sh
# rm ../../dataset/sounds/erusa.yml

# ./download.sh VQRO0SdkAWQ sekiro-5

# tira
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:01:17.399 -i crazy-pizza.mp4 -t 0:00:00.900 ../../public/sounds/crazy-pizza/tira.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/tira.mp4 -vn ../../public/sounds/crazy-pizza/tira.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.9000000000000341' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:00.900' ../../public/sounds/crazy-pizza/base.mp4


# name: ちら
# ruby: ちら
# category: tira
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=77
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "ちら"
  ruby: "ちら"
  source: "crazy-pizza"
  fileName: "crazy-pizza/tira.wav"
  category: ["tira"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=77"
EOF

# miteruyo
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:01:23.466 -i crazy-pizza.mp4 -t 0:00:04.350 ../../public/sounds/crazy-pizza/miteruyo.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/miteruyo.mp4 -vn ../../public/sounds/crazy-pizza/miteruyo.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4.3500000000000085' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:04.350' ../../public/sounds/crazy-pizza/base.mp4


# name: 見てるよ〜
# ruby: みてるよ
# category: miteruyo
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=83
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "見てるよ〜"
  ruby: "みてるよ"
  source: "crazy-pizza"
  fileName: "crazy-pizza/miteruyo.wav"
  category: ["miteruyo"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=83"
EOF

# hai-toiukotode
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:01:57.549 -i crazy-pizza.mp4 -t 0:00:01.050 ../../public/sounds/crazy-pizza/hai-toiukotode.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/hai-toiukotode.mp4 -vn ../../public/sounds/crazy-pizza/hai-toiukotode.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.0500000000000114' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.050' ../../public/sounds/crazy-pizza/base.mp4


# name: はい、ということで
# ruby: はいということで
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=117
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "はい、ということで"
  ruby: "はいということで"
  source: "crazy-pizza"
  fileName: "crazy-pizza/hai-toiukotode.wav"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=117"
EOF

# honjitsuha
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:02:03.483 -i crazy-pizza.mp4 -t 0:00:01.183 ../../public/sounds/crazy-pizza/honjitsuha.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/honjitsuha.mp4 -vn ../../public/sounds/crazy-pizza/honjitsuha.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.1833333333333371' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.183' ../../public/sounds/crazy-pizza/base.mp4


# name: 本日はですね
# ruby: ほんじつはですね
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=123
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "本日はですね"
  ruby: "ほんじつはですね"
  source: "crazy-pizza"
  fileName: "crazy-pizza/honjitsuha.wav"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=123"
EOF

# santa
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:06:33.283 -i crazy-pizza.mp4 -t 0:00:04.000 ../../public/sounds/crazy-pizza/santa.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/santa.mp4 -vn ../../public/sounds/crazy-pizza/santa.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:04.000' ../../public/sounds/crazy-pizza/base.mp4


# name: サンタさんいる！
# ruby: さんたさんいる
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=393
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "サンタさんいる！"
  ruby: "さんたさんいる"
  source: "crazy-pizza"
  fileName: "crazy-pizza/santa.wav"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=393"
EOF

# waraigoe
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:08:39.116 -i crazy-pizza.mp4 -t 0:00:01.883 ../../public/sounds/crazy-pizza/waraigoe.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/waraigoe.mp4 -vn ../../public/sounds/crazy-pizza/waraigoe.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.8833333333334394' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.883' ../../public/sounds/crazy-pizza/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: waraigoe
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=519
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "crazy-pizza"
  fileName: "crazy-pizza/waraigoe.wav"
  category: ["waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=519"
EOF

# run-pizza-run
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:08:46.366 -i crazy-pizza.mp4 -t 0:00:01.166 ../../public/sounds/crazy-pizza/run-pizza-run.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/run-pizza-run.mp4 -vn ../../public/sounds/crazy-pizza/run-pizza-run.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.1666666666666288' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.166' ../../public/sounds/crazy-pizza/base.mp4


# name: RUN PIZZA RUN
# ruby: run pizza run
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=526
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "RUN PIZZA RUN"
  ruby: "run pizza run"
  source: "crazy-pizza"
  fileName: "crazy-pizza/run-pizza-run.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=526"
EOF

# ohayou
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:08:54.299 -i crazy-pizza.mp4 -t 0:00:06.233 ../../public/sounds/crazy-pizza/ohayou.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/ohayou.mp4 -vn ../../public/sounds/crazy-pizza/ohayou.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6.2333333333333485' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:06.233' ../../public/sounds/crazy-pizza/base.mp4


# name: おはようございます（突然の死）
# ruby: おはようございます
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=534
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "おはようございます（突然の死）"
  ruby: "おはようございます"
  source: "crazy-pizza"
  fileName: "crazy-pizza/ohayou.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=534"
EOF

# tian-ga-warui
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:09:14.049 -i crazy-pizza.mp4 -t 0:00:06.766 ../../public/sounds/crazy-pizza/tian-ga-warui.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/tian-ga-warui.mp4 -vn ../../public/sounds/crazy-pizza/tian-ga-warui.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6.766666666666993' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:06.766' ../../public/sounds/crazy-pizza/base.mp4


# name: 治安が悪いってレベルじゃない
# ruby: ちあんがわるいってれべるじゃない
# category: nanikore
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=554
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "治安が悪いってレベルじゃない"
  ruby: "ちあんがわるいってれべるじゃない"
  source: "crazy-pizza"
  fileName: "crazy-pizza/tian-ga-warui.wav"
  category: ["nanikore"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=554"
EOF

# uwaaaaa
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:10:51.249 -i crazy-pizza.mp4 -t 0:00:07.416 ../../public/sounds/crazy-pizza/uwaaaaa.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/uwaaaaa.mp4 -vn ../../public/sounds/crazy-pizza/uwaaaaa.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=7.416666666666629' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:07.416' ../../public/sounds/crazy-pizza/base.mp4


# name: 一秒たりともこんなところにいたくない→
# ruby: いちびょうたりともこんなところにいたくない
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=651
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "一秒たりともこんなところにいたくない→"
  ruby: "いちびょうたりともこんなところにいたくない"
  source: "crazy-pizza"
  fileName: "crazy-pizza/uwaaaaa.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=651"
EOF

# mokkai
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:11:22.600 -i crazy-pizza.mp4 -t 0:00:01.033 ../../public/sounds/crazy-pizza/mokkai.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/mokkai.mp4 -vn ../../public/sounds/crazy-pizza/mokkai.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.0333333333330756' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.033' ../../public/sounds/crazy-pizza/base.mp4


# name: もっかいやらせて
# ruby: もっかいやらせて
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=682
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "もっかいやらせて"
  ruby: "もっかいやらせて"
  source: "crazy-pizza"
  fileName: "crazy-pizza/mokkai.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=682"
EOF

# eiga
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:11:57.116 -i crazy-pizza.mp4 -t 0:00:01.633 ../../public/sounds/crazy-pizza/eiga.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/eiga.mp4 -vn ../../public/sounds/crazy-pizza/eiga.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.6333333333330984' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.633' ../../public/sounds/crazy-pizza/base.mp4


# name: 映画の撮影かなんかやってんの
# ruby: えいがのさつえいかなんかやってんの
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=717
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "映画の撮影かなんかやってんの"
  ruby: "えいがのさつえいかなんかやってんの"
  source: "crazy-pizza"
  fileName: "crazy-pizza/eiga.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=717"
EOF

# waraigoe2
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:14:14.333 -i crazy-pizza.mp4 -t 0:00:03.250 ../../public/sounds/crazy-pizza/waraigoe2.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/waraigoe2.mp4 -vn ../../public/sounds/crazy-pizza/waraigoe2.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.25' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.250' ../../public/sounds/crazy-pizza/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: waraigoe
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=854
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "crazy-pizza"
  fileName: "crazy-pizza/waraigoe2.wav"
  category: ["waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=854"
EOF

# yumejanaiyone
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:14:20.250 -i crazy-pizza.mp4 -t 0:00:02.200 ../../public/sounds/crazy-pizza/yumejanaiyone.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/yumejanaiyone.mp4 -vn ../../public/sounds/crazy-pizza/yumejanaiyone.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.2000000000000455' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.200' ../../public/sounds/crazy-pizza/base.mp4


# name: 夢じゃないよね
# ruby: ゆめじゃないよね
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=860
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "夢じゃないよね"
  ruby: "ゆめじゃないよね"
  source: "crazy-pizza"
  fileName: "crazy-pizza/yumejanaiyone.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=860"
EOF

# abunai
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:15:41.933 -i crazy-pizza.mp4 -t 0:00:06.000 ../../public/sounds/crazy-pizza/abunai.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/abunai.mp4 -vn ../../public/sounds/crazy-pizza/abunai.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:06.000' ../../public/sounds/crazy-pizza/base.mp4


# name: あぶなーーい！
# ruby: あぶない
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=941
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "あぶなーーい！"
  ruby: "あぶない"
  source: "crazy-pizza"
  fileName: "crazy-pizza/abunai.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=941"
EOF

# yabai
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:16:45.833 -i crazy-pizza.mp4 -t 0:00:02.350 ../../public/sounds/crazy-pizza/yabai.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/yabai.mp4 -vn ../../public/sounds/crazy-pizza/yabai.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.3500000000000227' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.350' ../../public/sounds/crazy-pizza/base.mp4


# name: たすけてたすけて
# ruby: たすけて
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1005
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "やばいちょっとまって"
  ruby: "やばいちょっとまって"
  source: "crazy-pizza"
  fileName: "crazy-pizza/yabai.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1005"
EOF

# tasukete
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:16:46.833 -i crazy-pizza.mp4 -t 0:00:01.350 ../../public/sounds/crazy-pizza/tasukete.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/tasukete.mp4 -vn ../../public/sounds/crazy-pizza/tasukete.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.3500000000000227' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.350' ../../public/sounds/crazy-pizza/base.mp4


# name: たすけてたすけて
# ruby: たすけて
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1005
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "たすけてたすけて"
  ruby: "たすけて"
  source: "crazy-pizza"
  fileName: "crazy-pizza/tasukete.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1005"
EOF

# nigeyou
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:16:48.383 -i crazy-pizza.mp4 -t 0:00:02.250 ../../public/sounds/crazy-pizza/nigeyou.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/nigeyou.mp4 -vn ../../public/sounds/crazy-pizza/nigeyou.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.250000000000341' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.250' ../../public/sounds/crazy-pizza/base.mp4


# name: すぐ逃げよう×4
# ruby: すぐにげよう
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1008
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "すぐ逃げよう×4"
  ruby: "すぐにげよう"
  source: "crazy-pizza"
  fileName: "crazy-pizza/nigeyou.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1008"
EOF

# de
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:16:50.316 -i crazy-pizza.mp4 -t 0:00:03.583 ../../public/sounds/crazy-pizza/de.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/de.mp4 -vn ../../public/sounds/crazy-pizza/de.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.5833333333333712' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.583' ../../public/sounds/crazy-pizza/base.mp4


# name: で×n
# ruby: で
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1008
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "で×n"
  ruby: "で"
  source: "crazy-pizza"
  fileName: "crazy-pizza/de.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1008"
EOF

# korosareru
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:17:26.016 -i crazy-pizza.mp4 -t 0:00:03.683 ../../public/sounds/crazy-pizza/korosareru.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/korosareru.mp4 -vn ../../public/sounds/crazy-pizza/korosareru.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.6833333333338487' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.683' ../../public/sounds/crazy-pizza/base.mp4


# name: あっぶなぁー
# ruby: あっぶなぁー
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1046
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "あっぶなぁー"
  ruby: "あっぶなぁー"
  source: "crazy-pizza"
  fileName: "crazy-pizza/korosareru.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1046"
EOF

# korosareru2
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:17:28.816 -i crazy-pizza.mp4 -t 0:00:05.549 ../../public/sounds/crazy-pizza/korosareru2.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/korosareru2.mp4 -vn ../../public/sounds/crazy-pizza/korosareru2.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=5.5499999999999545' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:05.549' ../../public/sounds/crazy-pizza/base.mp4


# name: 殺される！
# ruby: ころされる
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1048
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "殺される！"
  ruby: "ころされる"
  source: "crazy-pizza"
  fileName: "crazy-pizza/korosareru2.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1046"
EOF

# kyounanoka
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:18:10.949 -i crazy-pizza.mp4 -t 0:00:00.950 ../../public/sounds/crazy-pizza/kyounanoka.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/kyounanoka.mp4 -vn ../../public/sounds/crazy-pizza/kyounanoka.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.9500000000005002' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:00.950' ../../public/sounds/crazy-pizza/base.mp4


# name: 今日なのか！？
# ruby: きょうなのか
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1090
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "今日なのか！？"
  ruby: "きょうなのか"
  source: "crazy-pizza"
  fileName: "crazy-pizza/kyounanoka.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1090"
EOF

# flag
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:18:22.450 -i crazy-pizza.mp4 -t 0:00:10.916 ../../public/sounds/crazy-pizza/flag.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/flag.mp4 -vn ../../public/sounds/crazy-pizza/flag.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=10.916666666666742' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:10.916' ../../public/sounds/crazy-pizza/base.mp4


# name: 帰り道で死ぬって一番フラグじゃん
# ruby: かえりみちでしぬっていちばんふらぐじゃん
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1102
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "帰り道で死ぬって一番フラグじゃん"
  ruby: "かえりみちでしぬっていちばんふらぐじゃん"
  source: "crazy-pizza"
  fileName: "crazy-pizza/flag.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1102"
EOF

# flag-full
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:18:22.450 -i crazy-pizza.mp4 -t 0:00:34.083 ../../public/sounds/crazy-pizza/flag-full.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/flag-full.mp4 -vn ../../public/sounds/crazy-pizza/flag-full.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=34.08333333333326' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:34.083' ../../public/sounds/crazy-pizza/base.mp4


# name: 帰り道で死ぬって一番フラグじゃん（FULL）
# ruby: かえりみちでしぬっていちばんふらぐじゃん
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1102
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "帰り道で死ぬって一番フラグじゃん（FULL）"
  ruby: "かえりみちでしぬっていちばんふらぐじゃん"
  source: "crazy-pizza"
  fileName: "crazy-pizza/flag-full.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1102"
EOF

# target
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:22:15.616 -i crazy-pizza.mp4 -t 0:00:06.000 ../../public/sounds/crazy-pizza/target.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/target.mp4 -vn ../../public/sounds/crazy-pizza/target.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:06.000' ../../public/sounds/crazy-pizza/base.mp4


# name: 今わたしのこと殺そうとしてたよね！？
# ruby: いまわたしのこところそうとしてたよね
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1335
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "今わたしのこと殺そうとしてたよね！？"
  ruby: "いまわたしのこところそうとしてたよね"
  source: "crazy-pizza"
  fileName: "crazy-pizza/target.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1335"
EOF

# yoshi-yoshi-yoshi
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:22:29.966 -i crazy-pizza.mp4 -t 0:00:09.433 ../../public/sounds/crazy-pizza/yoshi-yoshi-yoshi.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/yoshi-yoshi-yoshi.mp4 -vn ../../public/sounds/crazy-pizza/yoshi-yoshi-yoshi.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=9.433333333333394' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:09.433' ../../public/sounds/crazy-pizza/base.mp4


# name: なんでだよ！
# ruby: なんでだよ
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1349
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "なんでだよ！"
  ruby: "なんでだよ"
  source: "crazy-pizza"
  fileName: "crazy-pizza/yoshi-yoshi-yoshi.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1349"
EOF

# gimu
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:24:07.649 -i crazy-pizza.mp4 -t 0:00:05.783 ../../public/sounds/crazy-pizza/gimu.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/gimu.mp4 -vn ../../public/sounds/crazy-pizza/gimu.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=5.78333333333353' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:05.783' ../../public/sounds/crazy-pizza/base.mp4


# name: 義務クラクションやめろ
# ruby: ぎむくらくしょんやめろ
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1447
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "義務クラクションやめろ"
  ruby: "ぎむくらくしょんやめろ"
  source: "crazy-pizza"
  fileName: "crazy-pizza/gimu.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1447"
EOF

# otononaruhouhe
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:26:18.116 -i crazy-pizza.mp4 -t 0:00:06.016 ../../public/sounds/crazy-pizza/otononaruhouhe.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/otononaruhouhe.mp4 -vn ../../public/sounds/crazy-pizza/otononaruhouhe.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6.016666666666879' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:06.016' ../../public/sounds/crazy-pizza/base.mp4


# name: オトノナルホウヘ→
# ruby: おとのなるほうへ
# category: outa
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1578
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "オトノナルホウヘ→"
  ruby: "おとのなるほうへ"
  source: "crazy-pizza"
  fileName: "crazy-pizza/otononaruhouhe.wav"
  category: ["outa"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1578"
EOF

# tuneni
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:30:06.799 -i crazy-pizza.mp4 -t 0:00:02.416 ../../public/sounds/crazy-pizza/tuneni.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/tuneni.mp4 -vn ../../public/sounds/crazy-pizza/tuneni.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.4166666666667425' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.416' ../../public/sounds/crazy-pizza/base.mp4


# name: 常に前後左右警戒して走り続けろ
# ruby: つねにぜんごさゆうけいかいしてはしりつづけろ
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1806
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "常に前後左右警戒して走り続けろ"
  ruby: "つねにぜんごさゆうけいかいしてはしりつづけろ"
  source: "crazy-pizza"
  fileName: "crazy-pizza/tuneni.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1806"
EOF

# shizuka
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:47:21.666 -i crazy-pizza.mp4 -t 0:00:11.816 ../../public/sounds/crazy-pizza/shizuka.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/shizuka.mp4 -vn ../../public/sounds/crazy-pizza/shizuka.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=11.816666666666606' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:11.816' ../../public/sounds/crazy-pizza/base.mp4


# name: チルい音楽と出会い頭
# ruby: ちるいおんがくとであいがしら
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=2841
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "エモい音楽と出会い頭"
  ruby: "えもいおんがくとであいがしら"
  source: "crazy-pizza"
  fileName: "crazy-pizza/shizuka.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=2841"
EOF

# okasiitte
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:48:12.133 -i crazy-pizza.mp4 -t 0:00:01.849 ../../public/sounds/crazy-pizza/okasiitte.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/okasiitte.mp4 -vn ../../public/sounds/crazy-pizza/okasiitte.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.8499999999994543' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.849' ../../public/sounds/crazy-pizza/base.mp4


# name: おかしいって！
# ruby: おかしいって
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=2892
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "おかしいって！"
  ruby: "おかしいって"
  source: "crazy-pizza"
  fileName: "crazy-pizza/okasiitte.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=2892"
EOF

# mow
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:50:16.500 -i crazy-pizza.mp4 -t 0:00:03.666 ../../public/sounds/crazy-pizza/mow.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/mow.mp4 -vn ../../public/sounds/crazy-pizza/mow.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.666666666663332' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.666' ../../public/sounds/crazy-pizza/base.mp4


# name: ぁああっ！もーおー
# ruby: ぁああっもーおー
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=3016
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "ぁああっ！もーおー"
  ruby: "ぁああっもーおー"
  source: "crazy-pizza"
  fileName: "crazy-pizza/mow.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=3016"
EOF

# nee
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:50:24.000 -i crazy-pizza.mp4 -t 0:00:03.616 ../../public/sounds/crazy-pizza/nee.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/nee.mp4 -vn ../../public/sounds/crazy-pizza/nee.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.616666666666788' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.616' ../../public/sounds/crazy-pizza/base.mp4


# name: ねえーもうちょっとだったのぉ
# ruby: ねえーもうちょっとだったのぉ
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=3016
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "ねえーもうちょっとだったのぉ"
  ruby: "ねえーもうちょっとだったのぉ"
  source: "crazy-pizza"
  fileName: "crazy-pizza/nee.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=3016"
EOF

# minna
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:52:21.000 -i crazy-pizza.mp4 -t 0:00:09.250 ../../public/sounds/crazy-pizza/minna.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/minna.mp4 -vn ../../public/sounds/crazy-pizza/minna.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=9.25' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:09.250' ../../public/sounds/crazy-pizza/base.mp4


# name: みんなもね、道路渡るときはね左右ちゃんと見て渡るようにしてくださいね
# ruby: みんなもねどうろわたるときはねさゆうちゃんとみてわたるようにしてくださいね
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=3141
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "みんなもね、道路渡るときはね左右ちゃんと見て渡るようにしてくださいね"
  ruby: "みんなもねどうろわたるときはねさゆうちゃんとみてわたるようにしてくださいね"
  source: "crazy-pizza"
  fileName: "crazy-pizza/minna.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=3141"
EOF

# santa-2
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 1:00:15.599 -i crazy-pizza.mp4 -t 0:00:03.699 ../../public/sounds/crazy-pizza/santa-2.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/santa-2.mp4 -vn ../../public/sounds/crazy-pizza/santa-2.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.699999999999818' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.699' ../../public/sounds/crazy-pizza/base.mp4


# name: プレゼントくれるかな、サンタさん入ってきたら
# ruby: ぷれぜんとくれるかな
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=3615
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "プレゼントくれるかな、サンタさん入ってきたら"
  ruby: "ぷれぜんとくれるかな"
  source: "crazy-pizza"
  fileName: "crazy-pizza/santa-2.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=3615"
EOF


# santa-3
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:59:55.533 -i crazy-pizza.mp4 -t 0:00:03.933 ../../public/sounds/crazy-pizza/santa-3.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/santa-3.mp4 -vn ../../public/sounds/crazy-pizza/santa-3.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.9333333333338487' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.933' ../../public/sounds/crazy-pizza/base.mp4


# name: にじさんじにサンタさん入ってこないかな
# ruby: にじさんじにさんたさんはいってこないかな
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=3595
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "にじさんじにサンタさん入ってこないかな"
  ruby: "にじさんじにさんたさんはいってこないかな"
  source: "crazy-pizza"
  fileName: "crazy-pizza/santa-3.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=3595"
EOF

# jiko
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 1:02:18.799 -i crazy-pizza.mp4 -t 0:00:02.583 ../../public/sounds/crazy-pizza/jiko.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/jiko.mp4 -vn ../../public/sounds/crazy-pizza/jiko.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.5833333333343944' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.583' ../../public/sounds/crazy-pizza/base.mp4


# name: ぁああーー！
# ruby: ぁああーー！
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=3738
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "ぁああーー！"
  ruby: "ぁああーー！"
  source: "crazy-pizza"
  fileName: "crazy-pizza/jiko.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=3738"
EOF

# jiko-2
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 1:02:26.283 -i crazy-pizza.mp4 -t 0:00:17.783 ../../public/sounds/crazy-pizza/jiko-2.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/jiko-2.mp4 -vn ../../public/sounds/crazy-pizza/jiko-2.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=17.783333333333303' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:17.783' ../../public/sounds/crazy-pizza/base.mp4


# name: 泣き
# ruby: なき
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=3746
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "泣き"
  ruby: "なき"
  source: "crazy-pizza"
  fileName: "crazy-pizza/jiko-2.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=3746"
EOF

# jiko-3
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 1:02:53.916 -i crazy-pizza.mp4 -t 0:00:02.333 ../../public/sounds/crazy-pizza/jiko-3.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/jiko-3.mp4 -vn ../../public/sounds/crazy-pizza/jiko-3.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.3333333333339397' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.333' ../../public/sounds/crazy-pizza/base.mp4


# name: くっそぅ
# ruby: くっそぅ
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=3773
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "くっそぅ"
  ruby: "くっそぅ"
  source: "crazy-pizza"
  fileName: "crazy-pizza/jiko-3.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=3773"
EOF

# pyun
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 1:14:20.816 -i crazy-pizza.mp4 -t 0:00:03.300 ../../public/sounds/crazy-pizza/pyun.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/pyun.mp4 -vn ../../public/sounds/crazy-pizza/pyun.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.300000000000182' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.300' ../../public/sounds/crazy-pizza/base.mp4


# name: ぴゅん、ぴゅん、ぴゅん、ぴゅん
# ruby: ぴゅん、ぴゅん、ぴゅん、ぴゅん
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=4460
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "ぴゅん、ぴゅん、ぴゅん、ぴゅん"
  ruby: "ぴゅん、ぴゅん、ぴゅん、ぴゅん"
  source: "crazy-pizza"
  fileName: "crazy-pizza/pyun.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=4460"
EOF


# waraigoe-3
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 1:17:54.100 -i crazy-pizza.mp4 -t 0:00:01.199 ../../public/sounds/crazy-pizza/waraigoe-3.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/waraigoe-3.mp4 -vn ../../public/sounds/crazy-pizza/waraigoe-3.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.1999999999979991' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.199' ../../public/sounds/crazy-pizza/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: waraigoe
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=4674
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "crazy-pizza"
  fileName: "crazy-pizza/waraigoe-3.wav"
  category: ["waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=4674"
EOF

# torerukana
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:34:50.333 -i crazy-pizza.mp4 -t 0:00:11.500 ../../public/sounds/crazy-pizza/torerukana.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/torerukana.mp4 -vn ../../public/sounds/crazy-pizza/torerukana.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=11.5' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:11.500' ../../public/sounds/crazy-pizza/base.mp4


# name: 通れるかな通れるかな通れるかな
# ruby: とおれるかな
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=2090
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "通れるかな通れるかな通れるかな"
  ruby: "とおれるかな"
  source: "crazy-pizza"
  fileName: "crazy-pizza/torerukana.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=2090"
EOF

# omae-blue-lock
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:30:42.866 -i crazy-pizza.mp4 -t 0:00:02.566 ../../public/sounds/crazy-pizza/omae-blue-lock.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/omae-blue-lock.mp4 -vn ../../public/sounds/crazy-pizza/omae-blue-lock.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.5666666666668334' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.566' ../../public/sounds/crazy-pizza/base.mp4


# name: お前ブルーロックに行くんだろう
# ruby: おまえぶるーろっくにいくんだろう
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1842
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "お前ブルーロックに行くんだろう"
  ruby: "おまえぶるーろっくにいくんだろう"
  source: "crazy-pizza"
  fileName: "crazy-pizza/omae-blue-lock.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1842"
EOF

# run-run
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:42:29.683 -i crazy-pizza.mp4 -t 0:00:02.900 ../../public/sounds/crazy-pizza/run-run.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/run-run.mp4 -vn ../../public/sounds/crazy-pizza/run-run.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.900000000000091' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.900' ../../public/sounds/crazy-pizza/base.mp4


# name: 走って走って！
# ruby: はしってはしって
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=2549
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "走って走って！"
  ruby: "はしってはしって"
  source: "crazy-pizza"
  fileName: "crazy-pizza/run-run.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=2549"
EOF

# nanikore-nanikore-nanikore
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:09:19.016 -i crazy-pizza.mp4 -t 0:00:03.766 ../../public/sounds/crazy-pizza/nanikore-nanikore-nanikore.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/nanikore-nanikore-nanikore.mp4 -vn ../../public/sounds/crazy-pizza/nanikore-nanikore-nanikore.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.7666666666666515' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.766' ../../public/sounds/crazy-pizza/base.mp4


# name: なにこれなにこれなにこれ
# ruby: なにこれなにこれなにこれ
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=559
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "なにこれなにこれなにこれ"
  ruby: "なにこれなにこれなにこれ"
  source: "crazy-pizza"
  fileName: "crazy-pizza/nanikore-nanikore-nanikore.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=559"
EOF

# mo
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:27:57.583 -i crazy-pizza.mp4 -t 0:00:03.933 ../../public/sounds/crazy-pizza/mo.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/mo.mp4 -vn ../../public/sounds/crazy-pizza/mo.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.9333333333324845' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.933' ../../public/sounds/crazy-pizza/base.mp4


# name: もー
# ruby: もー
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1677
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "もー"
  ruby: "もー"
  source: "crazy-pizza"
  fileName: "crazy-pizza/mo.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1677"
EOF

# furen-love
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 1:38:59.883 -i crazy-pizza.mp4 -t 0:00:02.783 ../../public/sounds/crazy-pizza/furen-love.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/furen-love.mp4 -vn ../../public/sounds/crazy-pizza/furen-love.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.7833333333337578' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.783' ../../public/sounds/crazy-pizza/base.mp4


# name: フレンの配信大好き
# ruby: ふれんのはいしんだいすき
# category: supacha
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=5939
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "フレンの配信大好き"
  ruby: "ふれんのはいしんだいすき"
  source: "crazy-pizza"
  fileName: "crazy-pizza/furen-love.wav"
  category: ["supacha"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=5939"
EOF

# waraimashita
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 1:40:18.333 -i crazy-pizza.mp4 -t 0:00:04.849 ../../public/sounds/crazy-pizza/waraimashita.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/waraimashita.mp4 -vn ../../public/sounds/crazy-pizza/waraimashita.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4.849999999999454' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:04.849' ../../public/sounds/crazy-pizza/base.mp4


# name: 腹抱えて笑いました
# ruby: はらかかえてわらいました
# category: supacha
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=6018
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "腹抱えて笑いました"
  ruby: "はらかかえてわらいました"
  source: "crazy-pizza"
  fileName: "crazy-pizza/waraimashita.wav"
  category: ["supacha"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=6018"
EOF

# waraigoe-4
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 1:40:30.016 -i crazy-pizza.mp4 -t 0:00:01.449 ../../public/sounds/crazy-pizza/waraigoe-4.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/waraigoe-4.mp4 -vn ../../public/sounds/crazy-pizza/waraigoe-4.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.4499999999979991' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.449' ../../public/sounds/crazy-pizza/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: waraigoe
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=6030
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "crazy-pizza"
  fileName: "crazy-pizza/waraigoe-4.wav"
  category: ["waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=6030"
EOF


# omizu
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 1:41:57.716 -i crazy-pizza.mp4 -t 0:00:17.100 ../../public/sounds/crazy-pizza/omizu.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/omizu.mp4 -vn ../../public/sounds/crazy-pizza/omizu.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=17.100000000000364' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:17.100' ../../public/sounds/crazy-pizza/base.mp4


# name: お水
# ruby: おみず
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=6117
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "お水"
  ruby: "おみず"
  source: "crazy-pizza"
  fileName: "crazy-pizza/omizu.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=6117"
EOF

