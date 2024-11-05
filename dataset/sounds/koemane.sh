#!/bin/bash -xe

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR


# fall-in-water
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:08:48.391 -i ./movies/koemane.mp4 -t 0:00:02.313 ../../../public/sounds/koemane/fall-in-water.mp4
ffmpeg -y -i ../../../public/sounds/koemane/fall-in-water.mp4 -vn ../../../public/sounds/koemane/fall-in-water.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.313578000000007' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.313' ../../../public/sounds/koemane/base.mp4


# name: 水に飛び込む
# ruby: みずにとびこむ
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=528
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "水に飛び込む"
  ruby: "みずにとびこむ"
  source: "koemane"
  fileName: "koemane/fall-in-water.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=528"
EOF

# boiin
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:09:53.781 -i ./movies/koemane.mp4 -t 0:00:01.216 ../../../public/sounds/koemane/boiin.mp4
ffmpeg -y -i ../../../public/sounds/koemane/boiin.mp4 -vn ../../../public/sounds/koemane/boiin.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.216666666666697' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.216' ../../../public/sounds/koemane/base.mp4


# name: ボイ〜ン！
# ruby: ぼいーん
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=593
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ボイ〜ン！"
  ruby: "ぼいーん"
  source: "koemane"
  fileName: "koemane/boiin.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=593"
EOF

# air-horn
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:12:35.262 -i ./movies/koemane.mp4 -t 0:00:01.752 ../../../public/sounds/koemane/air-horn.mp4
ffmpeg -y -i ../../../public/sounds/koemane/air-horn.mp4 -vn ../../../public/sounds/koemane/air-horn.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.752984999999967' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.752' ../../../public/sounds/koemane/base.mp4


# name: エアーホーン
# ruby: えあーほーん
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=755
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "エアーホーン"
  ruby: "えあーほーん"
  source: "koemane"
  fileName: "koemane/air-horn.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=755"
EOF

# glass-brake
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:14:56.864 -i ./movies/koemane.mp4 -t 0:00:01.652 ../../../public/sounds/koemane/glass-brake.mp4
ffmpeg -y -i ../../../public/sounds/koemane/glass-brake.mp4 -vn ../../../public/sounds/koemane/glass-brake.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.652627999999936' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.652' ../../../public/sounds/koemane/base.mp4


# name: ガラスが割れる
# ruby: がらすがわれる
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=896
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ガラスが割れる"
  ruby: "がらすがわれる"
  source: "koemane"
  fileName: "koemane/glass-brake.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=896"
EOF

# quiz
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:16:36.697 -i ./movies/koemane.mp4 -t 0:00:00.748 ../../../public/sounds/koemane/quiz.mp4
ffmpeg -y -i ../../../public/sounds/koemane/quiz.mp4 -vn ../../../public/sounds/koemane/quiz.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.7484749999999849' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:00.748' ../../../public/sounds/koemane/base.mp4


# name: クイズ出題音
# ruby: くいずしゅつだいおん
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=996
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "クイズ出題音"
  ruby: "くいずしゅつだいおん"
  source: "koemane"
  fileName: "koemane/quiz.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=996"
EOF

# sheep
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:18:22.625 -i ./movies/koemane.mp4 -t 0:00:02.104 ../../../public/sounds/koemane/sheep.mp4
ffmpeg -y -i ../../../public/sounds/koemane/sheep.mp4 -vn ../../../public/sounds/koemane/sheep.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.1046709999998257' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.104' ../../../public/sounds/koemane/base.mp4


# name: 羊の鳴き声
# ruby: ひつじのなきごえ
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1102
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "羊の鳴き声"
  ruby: "ひつじのなきごえ"
  source: "koemane"
  fileName: "koemane/sheep.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1102"
EOF

# supo
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:19:29.181 -i ./movies/koemane.mp4 -t 0:00:00.500 ../../../public/sounds/koemane/supo.mp4
ffmpeg -y -i ../../../public/sounds/koemane/supo.mp4 -vn ../../../public/sounds/koemane/supo.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.5' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:00.500' ../../../public/sounds/koemane/base.mp4


# name: スポッ
# ruby: すぽ
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1169
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "スポッ"
  ruby: "すぽ"
  source: "koemane"
  fileName: "koemane/supo.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1169"
EOF

# jaja-n
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:20:39.443 -i ./movies/koemane.mp4 -t 0:00:01.948 ../../../public/sounds/koemane/jaja-n.mp4
ffmpeg -y -i ../../../public/sounds/koemane/jaja-n.mp4 -vn ../../../public/sounds/koemane/jaja-n.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.9482450000000426' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.948' ../../../public/sounds/koemane/base.mp4


# name: ジャジャーン
# ruby: じゃじゃーん
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1239
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ジャジャーン"
  ruby: "じゃじゃーん"
  source: "koemane"
  fileName: "koemane/jaja-n.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1239"
EOF


# shock
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:21:37.172 -i ./movies/koemane.mp4 -t 0:00:02.115 ../../../public/sounds/koemane/shock.mp4
ffmpeg -y -i ../../../public/sounds/koemane/shock.mp4 -vn ../../../public/sounds/koemane/shock.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.115965000000415' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.115' ../../../public/sounds/koemane/base.mp4


# name: ショック
# ruby: しょっく
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1297
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ショック"
  ruby: "しょっく"
  source: "koemane"
  fileName: "koemane/shock.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1297"
EOF

# water-drop
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:23:20.673 -i ./movies/koemane.mp4 -t 0:00:06.157 ../../../public/sounds/koemane/water-drop.mp4
ffmpeg -y -i ../../../public/sounds/koemane/water-drop.mp4 -vn ../../../public/sounds/koemane/water-drop.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6.157237000000123' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:06.157' ../../../public/sounds/koemane/base.mp4


# name: 水が一滴
# ruby: みずがいってき
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1400
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "水が一滴"
  ruby: "みずがいってき"
  source: "koemane"
  fileName: "koemane/water-drop.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1400"
EOF

# chiken
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:25:22.691 -i ./movies/koemane.mp4 -t 0:00:03.379 ../../../public/sounds/koemane/chiken.mp4
ffmpeg -y -i ../../../public/sounds/koemane/chiken.mp4 -vn ../../../public/sounds/koemane/chiken.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.3790630000000874' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.379' ../../../public/sounds/koemane/base.mp4


# name: にわとりの鳴き声
# ruby: にわとり
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1522
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "にわとりの鳴き声"
  ruby: "にわとり"
  source: "koemane"
  fileName: "koemane/chiken.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1522"
EOF

# dora
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:26:19.182 -i ./movies/koemane.mp4 -t 0:00:03.063 ../../../public/sounds/koemane/dora.mp4
ffmpeg -y -i ../../../public/sounds/koemane/dora.mp4 -vn ../../../public/sounds/koemane/dora.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.063957999999957' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.063' ../../../public/sounds/koemane/base.mp4


# name: ドラを鳴らす
# ruby: どら
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1579
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ドラを鳴らす"
  ruby: "どら"
  source: "koemane"
  fileName: "koemane/dora.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1579"
EOF

# tsukkomi
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:27:21.644 -i ./movies/koemane.mp4 -t 0:00:00.706 ../../../public/sounds/koemane/tsukkomi.mp4
ffmpeg -y -i ../../../public/sounds/koemane/tsukkomi.mp4 -vn ../../../public/sounds/koemane/tsukkomi.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.7069730000000618' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:00.706' ../../../public/sounds/koemane/base.mp4


# name: つっこみ
# ruby: つっこみ
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1641
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "つっこみ"
  ruby: "つっこみ"
  source: "koemane"
  fileName: "koemane/tsukkomi.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1641"
EOF

# hirameki
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:28:42.713 -i ./movies/koemane.mp4 -t 0:00:01.907 ../../../public/sounds/koemane/hirameki.mp4
ffmpeg -y -i ../../../public/sounds/koemane/hirameki.mp4 -vn ../../../public/sounds/koemane/hirameki.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.9077649999999267' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.907' ../../../public/sounds/koemane/base.mp4


# name: ひらめき
# ruby: ひらめき
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1722
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ひらめき"
  ruby: "ひらめき"
  source: "koemane"
  fileName: "koemane/hirameki.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1722"
EOF

# news
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:30:03.430 -i ./movies/koemane.mp4 -t 0:00:03.739 ../../../public/sounds/koemane/news.mp4
ffmpeg -y -i ../../../public/sounds/koemane/news.mp4 -vn ../../../public/sounds/koemane/news.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.739420999999993' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.739' ../../../public/sounds/koemane/base.mp4


# name: 本日のニュース
# ruby: ほんじつのにゅーす
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1803
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "本日のニュース"
  ruby: "ほんじつのにゅーす"
  source: "koemane"
  fileName: "koemane/news.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1803"
EOF

# horror
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:32:59.585 -i ./movies/koemane.mp4 -t 0:00:06.491 ../../../public/sounds/koemane/horror.mp4
ffmpeg -y -i ../../../public/sounds/koemane/horror.mp4 -vn ../../../public/sounds/koemane/horror.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6.491580000000113' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:06.491' ../../../public/sounds/koemane/base.mp4


# name: ホラーのタイトル
# ruby: ほらーのたいとる
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1979
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ホラーのタイトル"
  ruby: "ほらーのたいとる"
  source: "koemane"
  fileName: "koemane/horror.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=1979"
EOF

# kijibato
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:34:43.506 -i ./movies/koemane.mp4 -t 0:00:06.965 ../../../public/sounds/koemane/kijibato.mp4
ffmpeg -y -i ../../../public/sounds/koemane/kijibato.mp4 -vn ../../../public/sounds/koemane/kijibato.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6.965716999999131' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:06.965' ../../../public/sounds/koemane/base.mp4


# name: キジバトの鳴き声
# ruby: きじばと
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2083
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "キジバトの鳴き声"
  ruby: "きじばと"
  source: "koemane"
  fileName: "koemane/kijibato.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2083"
EOF

# horagai
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:36:44.711 -i ./movies/koemane.mp4 -t 0:00:05.761 ../../../public/sounds/koemane/horagai.mp4
ffmpeg -y -i ../../../public/sounds/koemane/horagai.mp4 -vn ../../../public/sounds/koemane/horagai.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=5.761941666666644' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:05.761' ../../../public/sounds/koemane/base.mp4


# name: ほら貝
# ruby: ほらがい
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2204
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ほら貝"
  ruby: "ほらがい"
  source: "koemane"
  fileName: "koemane/horagai.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2204"
EOF

# fanfare
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:37:35.550 -i ./movies/koemane.mp4 -t 0:00:01.309 ../../../public/sounds/koemane/fanfare.mp4
ffmpeg -y -i ../../../public/sounds/koemane/fanfare.mp4 -vn ../../../public/sounds/koemane/fanfare.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.3092320000000655' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.309' ../../../public/sounds/koemane/base.mp4


# name: ファンファーレ
# ruby: ふぁんふぁーれ
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2255
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ファンファーレ"
  ruby: "ふぁんふぁーれ"
  source: "koemane"
  fileName: "koemane/fanfare.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2255"
EOF

# kaiju
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:38:28.276 -i ./movies/koemane.mp4 -t 0:00:02.162 ../../../public/sounds/koemane/kaiju.mp4
ffmpeg -y -i ../../../public/sounds/koemane/kaiju.mp4 -vn ../../../public/sounds/koemane/kaiju.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.1622729999999137' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.162' ../../../public/sounds/koemane/base.mp4


# name: 怪獣の足音
# ruby: かいじゅうのあしおと
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2308
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "怪獣の足音"
  ruby: "かいじゅうのあしおと"
  source: "koemane"
  fileName: "koemane/kaiju.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2308"
EOF

# biyon
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:39:25.068 -i ./movies/koemane.mp4 -t 0:00:02.540 ../../../public/sounds/koemane/biyon.mp4
ffmpeg -y -i ../../../public/sounds/koemane/biyon.mp4 -vn ../../../public/sounds/koemane/biyon.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.540230999999949' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.540' ../../../public/sounds/koemane/base.mp4


# name: ビヨ〜〜ン
# ruby: びよーん
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2365
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ビヨ〜〜ン"
  ruby: "びよーん"
  source: "koemane"
  fileName: "koemane/biyon.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2365"
EOF

# biyon2
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:40:19.174 -i ./movies/koemane.mp4 -t 0:00:06.561 ../../../public/sounds/koemane/biyon2.mp4
ffmpeg -y -i ../../../public/sounds/koemane/biyon2.mp4 -vn ../../../public/sounds/koemane/biyon2.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6.561091000000033' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:06.561' ../../../public/sounds/koemane/base.mp4


# name: ビヨ〜〜ン（ヨッシー）
# ruby: びよーん2
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2419
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ビヨ〜〜ン（ヨッシー）"
  ruby: "びよーん2"
  source: "koemane"
  fileName: "koemane/biyon2.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2419"
EOF

# howan
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:41:29.798 -i ./movies/koemane.mp4 -t 0:00:04.633 ../../../public/sounds/koemane/howan.mp4
ffmpeg -y -i ../../../public/sounds/koemane/howan.mp4 -vn ../../../public/sounds/koemane/howan.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4.633333333333212' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:04.633' ../../../public/sounds/koemane/base.mp4


# name: ホワンホワン
# ruby: ほわんほわん
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2489
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ホワンホワン"
  ruby: "ほわんほわん"
  source: "koemane"
  fileName: "koemane/howan.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2489"
EOF

# break-rock
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:42:29.787 -i ./movies/koemane.mp4 -t 0:00:02.856 ../../../public/sounds/koemane/break-rock.mp4
ffmpeg -y -i ../../../public/sounds/koemane/break-rock.mp4 -vn ../../../public/sounds/koemane/break-rock.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.8568749999999454' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.856' ../../../public/sounds/koemane/base.mp4


# name: 岩が割れる
# ruby: いわがわれる
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2549
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "岩が割れる"
  ruby: "いわがわれる"
  source: "koemane"
  fileName: "koemane/break-rock.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2549"
EOF

# biyoyoyon
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:43:27.907 -i ./movies/koemane.mp4 -t 0:00:02.194 ../../../public/sounds/koemane/biyoyoyon.mp4
ffmpeg -y -i ../../../public/sounds/koemane/biyoyoyon.mp4 -vn ../../../public/sounds/koemane/biyoyoyon.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.194810999999845' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.194' ../../../public/sounds/koemane/base.mp4


# name: ビヨヨヨ〜ン
# ruby: びよよよーん
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2607
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ビヨヨヨ〜ン"
  ruby: "びよよよーん"
  source: "koemane"
  fileName: "koemane/biyoyoyon.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2607"
EOF

# kingaku
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:44:35.914 -i ./movies/koemane.mp4 -t 0:00:00.710 ../../../public/sounds/koemane/kingaku.mp4
ffmpeg -y -i ../../../public/sounds/koemane/kingaku.mp4 -vn ../../../public/sounds/koemane/kingaku.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.710837999999967' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:00.710' ../../../public/sounds/koemane/base.mp4


# name: 金額は！？
# ruby: きんがくは
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2675
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "金額は！？"
  ruby: "きんがくは"
  source: "koemane"
  fileName: "koemane/kingaku.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2675"
EOF

# punch
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:45:45.452 -i ./movies/koemane.mp4 -t 0:00:01.471 ../../../public/sounds/koemane/punch.mp4
ffmpeg -y -i ../../../public/sounds/koemane/punch.mp4 -vn ../../../public/sounds/koemane/punch.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.4710439999998925' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.471' ../../../public/sounds/koemane/base.mp4


# name: 映画のパンチ音
# ruby: えいがのぱんちおん
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2745
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "映画のパンチ音"
  ruby: "えいがのぱんちおん"
  source: "koemane"
  fileName: "koemane/punch.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2745"
EOF

# coin
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:46:44.550 -i ./movies/koemane.mp4 -t 0:00:01.005 ../../../public/sounds/koemane/coin.mp4
ffmpeg -y -i ../../../public/sounds/koemane/coin.mp4 -vn ../../../public/sounds/koemane/coin.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.0056840000002012' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.005' ../../../public/sounds/koemane/base.mp4


# name: 硬い物を落とす
# ruby: かたいものをおとす
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2804
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "硬い物を落とす"
  ruby: "かたいものをおとす"
  source: "koemane"
  fileName: "koemane/coin.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2804"
EOF

# brake-paper
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:48:08.002 -i ./movies/koemane.mp4 -t 0:00:01.105 ../../../public/sounds/koemane/brake-paper.mp4
ffmpeg -y -i ../../../public/sounds/koemane/brake-paper.mp4 -vn ../../../public/sounds/koemane/brake-paper.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.1051259999999274' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.105' ../../../public/sounds/koemane/base.mp4


# name: 紙を破く
# ruby: かみをやぶく
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2888
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "紙を破く"
  ruby: "かみをやぶく"
  source: "koemane"
  fileName: "koemane/brake-paper.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2888"
EOF

# gong
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:49:59.448 -i ./movies/koemane.mp4 -t 0:00:03.251 ../../../public/sounds/koemane/gong.mp4
ffmpeg -y -i ../../../public/sounds/koemane/gong.mp4 -vn ../../../public/sounds/koemane/gong.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.251136999999744' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.251' ../../../public/sounds/koemane/base.mp4


# name: 試合終了のゴング
# ruby: しあいしゅうりょうのごんぐ
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2999
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "試合終了のゴング"
  ruby: "しあいしゅうりょうのごんぐ"
  source: "koemane"
  fileName: "koemane/gong.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=2999"
EOF

# kaa
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:51:14.588 -i ./movies/koemane.mp4 -t 0:00:02.700 ../../../public/sounds/koemane/kaa.mp4
ffmpeg -y -i ../../../public/sounds/koemane/kaa.mp4 -vn ../../../public/sounds/koemane/kaa.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.7007770000000164' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.700' ../../../public/sounds/koemane/base.mp4


# name: 時代劇・カ〜〜！
# ruby: じだいげきか
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3074
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "時代劇・カ〜〜！"
  ruby: "じだいげきか"
  source: "koemane"
  fileName: "koemane/kaa.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3074"
EOF

# shakuhachi
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:52:19.887 -i ./movies/koemane.mp4 -t 0:00:03.089 ../../../public/sounds/koemane/shakuhachi.mp4
ffmpeg -y -i ../../../public/sounds/koemane/shakuhachi.mp4 -vn ../../../public/sounds/koemane/shakuhachi.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.0895439999999326' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.089' ../../../public/sounds/koemane/base.mp4


# name: 尺八
# ruby: しゃくはち
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3139
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "尺八"
  ruby: "しゃくはち"
  source: "koemane"
  fileName: "koemane/shakuhachi.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3139"
EOF

# shiled
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:52:59.930 -i ./movies/koemane.mp4 -t 0:00:01.171 ../../../public/sounds/koemane/shiled.mp4
ffmpeg -y -i ../../../public/sounds/koemane/shiled.mp4 -vn ../../../public/sounds/koemane/shiled.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.171875' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.171' ../../../public/sounds/koemane/base.mp4


# name: 盾で防ぐ
# ruby: たてでふせぐ
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3179
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "盾で防ぐ"
  ruby: "たてでふせぐ"
  source: "koemane"
  fileName: "koemane/shiled.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3179"
EOF


# wolf
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:54:26.726 -i ./movies/koemane.mp4 -t 0:00:02.154 ../../../public/sounds/koemane/wolf.mp4
ffmpeg -y -i ../../../public/sounds/koemane/wolf.mp4 -vn ../../../public/sounds/koemane/wolf.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.1542949999993652' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.154' ../../../public/sounds/koemane/base.mp4


# name: オオカミの遠吠え
# ruby: おおかみのとおぼえ
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3266
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "オオカミの遠吠え"
  ruby: "おおかみのとおぼえ"
  source: "koemane"
  fileName: "koemane/wolf.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3266"
EOF

# kujaku
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:55:03.972 -i ./movies/koemane.mp4 -t 0:00:01.633 ../../../public/sounds/koemane/kujaku.mp4
ffmpeg -y -i ../../../public/sounds/koemane/kujaku.mp4 -vn ../../../public/sounds/koemane/kujaku.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.6333779999999933' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.633' ../../../public/sounds/koemane/base.mp4


# name: インドクジャク
# ruby: いんどくじゃく
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3303
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "インドクジャク"
  ruby: "いんどくじゃく"
  source: "koemane"
  fileName: "koemane/kujaku.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3303"
EOF

# uguisu
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:56:04.257 -i ./movies/koemane.mp4 -t 0:00:01.499 ../../../public/sounds/koemane/uguisu.mp4
ffmpeg -y -i ../../../public/sounds/koemane/uguisu.mp4 -vn ../../../public/sounds/koemane/uguisu.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.4994239999996353' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.499' ../../../public/sounds/koemane/base.mp4


# name: ウグイスのさえずり
# ruby: うぐいすのさえずり
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3364
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ウグイスのさえずり"
  ruby: "うぐいすのさえずり"
  source: "koemane"
  fileName: "koemane/uguisu.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3364"
EOF


# uguisu2
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:56:42.890 -i ./movies/koemane.mp4 -t 0:00:01.575 ../../../public/sounds/koemane/uguisu2.mp4
ffmpeg -y -i ../../../public/sounds/koemane/uguisu2.mp4 -vn ../../../public/sounds/koemane/uguisu2.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.5751536666662105' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.575' ../../../public/sounds/koemane/base.mp4


# name: ウグイスのさえずり2
# ruby: うぐいすのさえずり2
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3402
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ウグイスのさえずり2"
  ruby: "うぐいすのさえずり2"
  source: "koemane"
  fileName: "koemane/uguisu2.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3402"
EOF


# umineko
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:57:34.343 -i ./movies/koemane.mp4 -t 0:00:02.452 ../../../public/sounds/koemane/umineko.mp4
ffmpeg -y -i ../../../public/sounds/koemane/umineko.mp4 -vn ../../../public/sounds/koemane/umineko.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.4522219999998924' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.452' ../../../public/sounds/koemane/base.mp4


# name: ウミネコの鳴き声
# ruby: うみねこ
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3454
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ウミネコの鳴き声"
  ruby: "うみねこ"
  source: "koemane"
  fileName: "koemane/umineko.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3454"
EOF

# ooruri
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 0:58:57.296 -i ./movies/koemane.mp4 -t 0:00:03.211 ../../../public/sounds/koemane/ooruri.mp4
ffmpeg -y -i ../../../public/sounds/koemane/ooruri.mp4 -vn ../../../public/sounds/koemane/ooruri.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.2110320000001593' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.211' ../../../public/sounds/koemane/base.mp4


# name: オオルリの鳴き声
# ruby: おおるり
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3537
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "オオルリのさえずり"
  ruby: "おおるり"
  source: "koemane"
  fileName: "koemane/ooruri.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3537"
EOF

# kakkou
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:00:35.171 -i ./movies/koemane.mp4 -t 0:00:02.083 ../../../public/sounds/koemane/kakkou.mp4
ffmpeg -y -i ../../../public/sounds/koemane/kakkou.mp4 -vn ../../../public/sounds/koemane/kakkou.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.083333333333485' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.083' ../../../public/sounds/koemane/base.mp4


# name: カッコウの鳴き声
# ruby: かっこう
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3635
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "カッコウの鳴き声"
  ruby: "かっこう"
  source: "koemane"
  fileName: "koemane/kakkou.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3635"
EOF

# zou
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:01:29.617 -i ./movies/koemane.mp4 -t 0:00:04.977 ../../../public/sounds/koemane/zou.mp4
ffmpeg -y -i ../../../public/sounds/koemane/zou.mp4 -vn ../../../public/sounds/koemane/zou.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4.977936000000227' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:04.977' ../../../public/sounds/koemane/base.mp4


# name: ゾウの鳴き声
# ruby: ぞう
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3689
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ゾウの鳴き声"
  ruby: "ぞう"
  source: "koemane"
  fileName: "koemane/zou.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3689"
EOF

# suzume
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:03:29.732 -i ./movies/koemane.mp4 -t 0:00:01.873 ../../../public/sounds/koemane/suzume.mp4
ffmpeg -y -i ../../../public/sounds/koemane/suzume.mp4 -vn ../../../public/sounds/koemane/suzume.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.8735520000000179' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.873' ../../../public/sounds/koemane/base.mp4


# name: スズメの鳴き声
# ruby: すずめ
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3809
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "スズメの鳴き声"
  ruby: "すずめ"
  source: "koemane"
  fileName: "koemane/suzume.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3809"
EOF

# asika
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:05:38.664 -i ./movies/koemane.mp4 -t 0:00:01.708 ../../../public/sounds/koemane/asika.mp4
ffmpeg -y -i ../../../public/sounds/koemane/asika.mp4 -vn ../../../public/sounds/koemane/asika.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.7081199999997807' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.708' ../../../public/sounds/koemane/base.mp4


# name: アシカの鳴き声
# ruby: あしか
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3938
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "アシカの鳴き声"
  ruby: "あしか"
  source: "koemane"
  fileName: "koemane/asika.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3938"
EOF

# crow
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:06:36.007 -i ./movies/koemane.mp4 -t 0:00:01.113 ../../../public/sounds/koemane/crow.mp4
ffmpeg -y -i ../../../public/sounds/koemane/crow.mp4 -vn ../../../public/sounds/koemane/crow.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.113158999999996' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.113' ../../../public/sounds/koemane/base.mp4


# name: カラスの鳴き声
# ruby: からす
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3996
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "カラスの鳴き声"
  ruby: "からす"
  source: "koemane"
  fileName: "koemane/crow.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=3996"
EOF

# tonbi
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:08:31.099 -i ./movies/koemane.mp4 -t 0:00:06.703 ../../../public/sounds/koemane/tonbi.mp4
ffmpeg -y -i ../../../public/sounds/koemane/tonbi.mp4 -vn ../../../public/sounds/koemane/tonbi.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6.703553000000284' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:06.703' ../../../public/sounds/koemane/base.mp4


# name: トンビの鳴き声
# ruby: とんび
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4111
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "トンビの鳴き声"
  ruby: "とんび"
  source: "koemane"
  fileName: "koemane/tonbi.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4111"
EOF

# hato
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:09:42.762 -i ./movies/koemane.mp4 -t 0:00:00.999 ../../../public/sounds/koemane/hato.mp4
ffmpeg -y -i ../../../public/sounds/koemane/hato.mp4 -vn ../../../public/sounds/koemane/hato.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.9994109999997818' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:00.999' ../../../public/sounds/koemane/base.mp4


# name: ハトの鳴き声
# ruby: はと
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4182
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ハトの鳴き声"
  ruby: "はと"
  source: "koemane"
  fileName: "koemane/hato.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4182"
EOF


# hiyoko
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:10:55.382 -i ./movies/koemane.mp4 -t 0:00:01.447 ../../../public/sounds/koemane/hiyoko.mp4
ffmpeg -y -i ../../../public/sounds/koemane/hiyoko.mp4 -vn ../../../public/sounds/koemane/hiyoko.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.4472710000000006' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.447' ../../../public/sounds/koemane/base.mp4


# name: ひよこの鳴き声
# ruby: ひよこ
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4255
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ひよこの鳴き声"
  ruby: "ひよこ"
  source: "koemane"
  fileName: "koemane/hiyoko.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4255"
EOF


# dog-bow
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:12:49.649 -i ./movies/koemane.mp4 -t 0:00:00.714 ../../../public/sounds/koemane/dog-bow.mp4
ffmpeg -y -i ../../../public/sounds/koemane/dog-bow.mp4 -vn ../../../public/sounds/koemane/dog-bow.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.714614999999867' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:00.714' ../../../public/sounds/koemane/base.mp4


# name: 犬が吠える
# ruby: いぬがほえる
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4369
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "犬が吠える"
  ruby: "いぬがほえる"
  source: "koemane"
  fileName: "koemane/dog-bow.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4369"
EOF

# dog
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:15:16.848 -i ./movies/koemane.mp4 -t 0:00:01.690 ../../../public/sounds/koemane/dog.mp4
ffmpeg -y -i ../../../public/sounds/koemane/dog.mp4 -vn ../../../public/sounds/koemane/dog.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.6909389999991618' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.690' ../../../public/sounds/koemane/base.mp4


# name: 犬の鳴き声
# ruby: いぬのなきごえ
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4516
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "犬の鳴き声"
  ruby: "いぬのなきごえ"
  source: "koemane"
  fileName: "koemane/dog.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4516"
EOF

# semi
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:16:34.597 -i ./movies/koemane.mp4 -t 0:00:04.679 ../../../public/sounds/koemane/semi.mp4
ffmpeg -y -i ../../../public/sounds/koemane/semi.mp4 -vn ../../../public/sounds/koemane/semi.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4.679210000000239' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:04.679' ../../../public/sounds/koemane/base.mp4


# name: ミンミンゼミの鳴き声
# ruby: みんみんぜみ
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4594
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ミンミンゼミの鳴き声"
  ruby: "みんみんぜみ"
  source: "koemane"
  fileName: "koemane/semi.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4594"
EOF

# yagi
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:17:14.880 -i ./movies/koemane.mp4 -t 0:00:04.883 ../../../public/sounds/koemane/yagi.mp4
ffmpeg -y -i ../../../public/sounds/koemane/yagi.mp4 -vn ../../../public/sounds/koemane/yagi.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4.883333333333212' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:04.883' ../../../public/sounds/koemane/base.mp4


# name: ヤギの鳴き声
# ruby: やぎ
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4634
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ヤギの鳴き声"
  ruby: "やぎ"
  source: "koemane"
  fileName: "koemane/yagi.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4634"
EOF

# lion
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:18:32.383 -i ./movies/koemane.mp4 -t 0:00:03.501 ../../../public/sounds/koemane/lion.mp4
ffmpeg -y -i ../../../public/sounds/koemane/lion.mp4 -vn ../../../public/sounds/koemane/lion.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.5012010000000373' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.501' ../../../public/sounds/koemane/base.mp4


# name: ライオンの鳴き声
# ruby: らいおん
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4712
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ライオンの鳴き声"
  ruby: "らいおん"
  source: "koemane"
  fileName: "koemane/lion.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4712"
EOF

# washi
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:19:46.988 -i ./movies/koemane.mp4 -t 0:00:01.475 ../../../public/sounds/koemane/washi.mp4
ffmpeg -y -i ../../../public/sounds/koemane/washi.mp4 -vn ../../../public/sounds/koemane/washi.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.4756099999995058' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.475' ../../../public/sounds/koemane/base.mp4


# name: ワシの鳴き声
# ruby: わし
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4786
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ワシの鳴き声"
  ruby: "わし"
  source: "koemane"
  fileName: "koemane/washi.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4786"
EOF

# neko-mew
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:20:21.849 -i ./movies/koemane.mp4 -t 0:00:01.590 ../../../public/sounds/koemane/neko-mew.mp4
ffmpeg -y -i ../../../public/sounds/koemane/neko-mew.mp4 -vn ../../../public/sounds/koemane/neko-mew.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.5900059999994482' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.590' ../../../public/sounds/koemane/base.mp4


# name: ねこの威嚇
# ruby: ねこのいかく
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4821
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ねこの威嚇"
  ruby: "ねこのいかく"
  source: "koemane"
  fileName: "koemane/neko-mew.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4821"
EOF

# neko-melow
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:21:22.621 -i ./movies/koemane.mp4 -t 0:00:01.608 ../../../public/sounds/koemane/neko-melow.mp4
ffmpeg -y -i ../../../public/sounds/koemane/neko-melow.mp4 -vn ../../../public/sounds/koemane/neko-melow.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.6082550000000992' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.608' ../../../public/sounds/koemane/base.mp4


# name: ねこの鳴き声
# ruby: ねこのなきごえ
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4882
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ねこの鳴き声"
  ruby: "ねこのなきごえ"
  source: "koemane"
  fileName: "koemane/neko-melow.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4882"
EOF

# monkey
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:23:10.207 -i ./movies/koemane.mp4 -t 0:00:01.687 ../../../public/sounds/koemane/monkey.mp4
ffmpeg -y -i ../../../public/sounds/koemane/monkey.mp4 -vn ../../../public/sounds/koemane/monkey.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.6872009999997317' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.687' ../../../public/sounds/koemane/base.mp4


# name: 笑うチンパンジー
# ruby: わらうちんぱんじー
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4990
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "笑うチンパンジー"
  ruby: "わらうちんぱんじー"
  source: "koemane"
  fileName: "koemane/monkey.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=4990"
EOF

# gorilla
mkdir -p ../../../public/sounds/koemane
ffmpeg -y -ss 1:24:00.121 -i ./movies/koemane.mp4 -t 0:00:01.492 ../../../public/sounds/koemane/gorilla.mp4
ffmpeg -y -i ../../../public/sounds/koemane/gorilla.mp4 -vn ../../../public/sounds/koemane/gorilla.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.4921850000000632' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.492' ../../../public/sounds/koemane/base.mp4


# name: ゴリラの鳴き声
# ruby: ごりら
# category: koemane
# clipUrl: https://www.youtube.com/watch?v=Hd0o35yBCP4&t=5040
# 
touch ../../../dataset/sounds/koemane.yml
cat <<EOF >> ../../../dataset/sounds/koemane.yml
- name: "ゴリラの鳴き声"
  ruby: "ごりら"
  source: "koemane"
  fileName: "koemane/gorilla.mp3"
  category: ["koemane"]
  clipUrl: "https://www.youtube.com/watch?v=Hd0o35yBCP4&t=5040"
EOF


