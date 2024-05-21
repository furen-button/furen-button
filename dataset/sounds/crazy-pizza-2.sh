#!/bin/bash -xe

# cp local.sh ../../dataset/sounds/saikyou.sh
# rm ../../dataset/sounds/erusa.yml

# ./download.sh VQRO0SdkAWQ sekiro-5

# pupupu
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 1:12:42.316 -i crazy-pizza.mp4 -t 0:00:05.033 ../../public/sounds/crazy-pizza/pupupu.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/pupupu.mp4 -vn ../../public/sounds/crazy-pizza/pupupu.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=5.033333333332848' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:05.033' ../../public/sounds/crazy-pizza/base.mp4


# name: クラクション
# ruby: くらくしょん
# category: se
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=4362
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "クラクション"
  ruby: "くらくしょん"
  source: "crazy-pizza"
  fileName: "crazy-pizza/pupupu.wav"
  category: ["se"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=4362"
EOF

# orega
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:31:31.349 -i crazy-pizza.mp4 -t 0:00:04.133 ../../public/sounds/crazy-pizza/orega.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/orega.mp4 -vn ../../public/sounds/crazy-pizza/orega.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4.133333333333439' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:04.133' ../../public/sounds/crazy-pizza/base.mp4


# name: 他の人がピザを届けるんじゃないおれがピザを届けるんだ
# ruby: ほかのひとがぴざをとどけるんじゃないおれがぴざをとどけるんだ
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1891
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "他の人がピザを届けるんじゃないおれがピザを届けるんだ"
  ruby: "ほかのひとがぴざをとどけるんじゃないおれがぴざをとどけるんだ"
  source: "crazy-pizza"
  fileName: "crazy-pizza/orega.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1891"
EOF

# saikyo-no-egoist
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:31:26.616 -i crazy-pizza.mp4 -t 0:00:01.666 ../../public/sounds/crazy-pizza/saikyo-no-egoist.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/saikyo-no-egoist.mp4 -vn ../../public/sounds/crazy-pizza/saikyo-no-egoist.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.6666666666667425' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.666' ../../public/sounds/crazy-pizza/base.mp4


# name: 最強のエゴイストになれ
# ruby: さいきょうのえごいすとになれ
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1886
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "最強のエゴイストになれ"
  ruby: "さいきょうのえごいすとになれ"
  source: "crazy-pizza"
  fileName: "crazy-pizza/saikyo-no-egoist.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1886"
EOF

# maketenai
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:32:24.050 -i crazy-pizza.mp4 -t 0:00:02.383 ../../public/sounds/crazy-pizza/maketenai.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/maketenai.mp4 -vn ../../public/sounds/crazy-pizza/maketenai.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.3833333333323026' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.383' ../../public/sounds/crazy-pizza/base.mp4


# name: わたしは負けてない！絶対に！
# ruby: わたしはまけてないぜったいに
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1944
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "わたしは負けてない！絶対に！"
  ruby: "わたしはまけてないぜったいに"
  source: "crazy-pizza"
  fileName: "crazy-pizza/maketenai.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1944"
EOF

# naninimo-maketenai
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:32:26.450 -i crazy-pizza.mp4 -t 0:00:01.649 ../../public/sounds/crazy-pizza/naninimo-maketenai.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/naninimo-maketenai.mp4 -vn ../../public/sounds/crazy-pizza/naninimo-maketenai.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.6499999999998636' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.649' ../../public/sounds/crazy-pizza/base.mp4


# name: なににも負けてないんだから！
# ruby: なににもまけてないんだから
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1944
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "なににも負けてないんだから！"
  ruby: "なににもまけてないんだから"
  source: "crazy-pizza"
  fileName: "crazy-pizza/naninimo-maketenai.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1944"
EOF

# waraigoe-3234
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:32:34.816 -i crazy-pizza.mp4 -t 0:00:01.450 ../../public/sounds/crazy-pizza/waraigoe-3234.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/waraigoe-3234.mp4 -vn ../../public/sounds/crazy-pizza/waraigoe-3234.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.4500000000000455' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.450' ../../public/sounds/crazy-pizza/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: waraigoe
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1944
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "crazy-pizza"
  fileName: "crazy-pizza/waraigoe-3234.wav"
  category: ["waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1944"
EOF

# waraigoe-3241
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:32:41.749 -i crazy-pizza.mp4 -t 0:00:07.133 ../../public/sounds/crazy-pizza/waraigoe-3241.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/waraigoe-3241.mp4 -vn ../../public/sounds/crazy-pizza/waraigoe-3241.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=7.133333333333439' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:07.133' ../../public/sounds/crazy-pizza/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: waraigoe
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1961
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "crazy-pizza"
  fileName: "crazy-pizza/waraigoe-3241.wav"
  category: ["waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1961"
EOF

# pedaru
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:33:02.966 -i crazy-pizza.mp4 -t 0:00:07.566 ../../public/sounds/crazy-pizza/pedaru.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/pedaru.mp4 -vn ../../public/sounds/crazy-pizza/pedaru.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=7.566666666667288' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:07.566' ../../public/sounds/crazy-pizza/base.mp4


# name: 小野田坂道かよ
# ruby: おのださかみちかよ
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1982
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "小野田坂道かよ"
  ruby: "おのださかみちかよ"
  source: "crazy-pizza"
  fileName: "crazy-pizza/pedaru.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1982"
EOF

# meikakuna-satsui
mkdir -p ../../public/sounds/crazy-pizza
ffmpeg -y -ss 0:33:17.416 -i crazy-pizza.mp4 -t 0:00:19.833 ../../public/sounds/crazy-pizza/meikakuna-satsui.mp4
ffmpeg -y -i ../../public/sounds/crazy-pizza/meikakuna-satsui.mp4 -vn ../../public/sounds/crazy-pizza/meikakuna-satsui.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=19.833333333335304' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:19.833' ../../public/sounds/crazy-pizza/base.mp4


# name: 明確な殺意
# ruby: めいかくなさつい
# category: game
# clipUrl: https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1997
# 
touch ../../dataset/sounds/crazy-pizza.yml
cat <<EOF >> ../../dataset/sounds/crazy-pizza.yml
- name: "明確な殺意"
  ruby: "めいかくなさつい"
  source: "crazy-pizza"
  fileName: "crazy-pizza/meikakuna-satsui.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=SpsS5X_DUjE&t=1997"
EOF

