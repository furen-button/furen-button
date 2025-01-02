#!/bin/bash -xe
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

rm -rf ./20200304-zatsudan.yml


# otya
mkdir -p ../../public/sounds/20200304-zatsudan
ffmpeg -y -ss 0:15:34.792 -i ../../scripts/video-clip-tool/public/movies/20200304-zatsudan.mp4 -t 0:00:02.161 ../../public/sounds/20200304-zatsudan/otya.mp4
ffmpeg -y -i ../../public/sounds/20200304-zatsudan/otya.mp4 -vn ../../public/sounds/20200304-zatsudan/otya.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.1611560000006875' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=2.1611560000006875' ../../public/sounds/20200304-zatsudan/base.mp4


# name: お茶飲も
# ruby: おちゃのも
# category: emotions
# clipUrl: https://www.youtube.com/watch?v=S2BVyuRrIRw&t=934
#
touch ./20200304-zatsudan.yml
cat <<EOF >> ./20200304-zatsudan.yml
- name: "お茶飲も"
  ruby: "おちゃのも"
  source: "20200304-zatsudan"
  fileName: "20200304-zatsudan/otya.mp3"
  category: ["emotions"]
  clipUrl: "https://www.youtube.com/watch?v=S2BVyuRrIRw&t=934"
EOF

# onesan-voice
mkdir -p ../../public/sounds/20200304-zatsudan
ffmpeg -y -ss 0:15:57.461 -i ../../scripts/video-clip-tool/public/movies/20200304-zatsudan.mp4 -t 0:00:06.295 ../../public/sounds/20200304-zatsudan/onesan-voice.mp4
ffmpeg -y -i ../../public/sounds/20200304-zatsudan/onesan-voice.mp4 -vn ../../public/sounds/20200304-zatsudan/onesan-voice.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6.295597000000043' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=6.295597000000043' ../../public/sounds/20200304-zatsudan/base.mp4


# name: はじめまして フレン・E・ルスタリオ と申します - お姉さんボイス
# ruby: はじめましてふれんいー
# category: kawaii
# clipUrl: https://www.youtube.com/watch?v=S2BVyuRrIRw&t=957
#
touch ./20200304-zatsudan.yml
cat <<EOF >> ./20200304-zatsudan.yml
- name: "はじめまして フレン・E・ルスタリオ と申します - お姉さんボイス"
  ruby: "はじめましてふれんいー"
  source: "20200304-zatsudan"
  fileName: "20200304-zatsudan/onesan-voice.mp3"
  category: ["kawaii"]
  clipUrl: "https://www.youtube.com/watch?v=S2BVyuRrIRw&t=957"
EOF

# onesan-voice-kudasai
mkdir -p ../../public/sounds/20200304-zatsudan
ffmpeg -y -ss 0:15:51.682 -i ../../scripts/video-clip-tool/public/movies/20200304-zatsudan.mp4 -t 0:00:01.104 ../../public/sounds/20200304-zatsudan/onesan-voice-kudasai.mp4
ffmpeg -y -i ../../public/sounds/20200304-zatsudan/onesan-voice-kudasai.mp4 -vn ../../public/sounds/20200304-zatsudan/onesan-voice-kudasai.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.1048270000000002' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.1048270000000002' ../../public/sounds/20200304-zatsudan/base.mp4


# name: 「お姉さんボイスください」
# ruby: おねえさんぼいすください
# category: comment
# clipUrl: https://www.youtube.com/watch?v=S2BVyuRrIRw&t=951
#
touch ./20200304-zatsudan.yml
cat <<EOF >> ./20200304-zatsudan.yml
- name: "「お姉さんボイスください」"
  ruby: "おねえさんぼいすください"
  source: "20200304-zatsudan"
  fileName: "20200304-zatsudan/onesan-voice-kudasai.mp3"
  category: ["comment"]
  clipUrl: "https://www.youtube.com/watch?v=S2BVyuRrIRw&t=951"
EOF

# nuget
mkdir -p ../../public/sounds/20200304-zatsudan
ffmpeg -y -ss 0:10:38.296 -i ../../scripts/video-clip-tool/public/movies/20200304-zatsudan.mp4 -t 0:00:14.196 ../../public/sounds/20200304-zatsudan/nuget.mp4
ffmpeg -y -i ../../public/sounds/20200304-zatsudan/nuget.mp4 -vn ../../public/sounds/20200304-zatsudan/nuget.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=14.196741999999972' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=14.196741999999972' ../../public/sounds/20200304-zatsudan/base.mp4


# name: ソースはナゲットでおねがいします
# ruby: そーすはなげっとでおねがいします
# category: meigen
# clipUrl: https://www.youtube.com/watch?v=S2BVyuRrIRw&t=638
#
touch ./20200304-zatsudan.yml
cat <<EOF >> ./20200304-zatsudan.yml
- name: "ソースはナゲットでおねがいします"
  ruby: "そーすはなげっとでおねがいします"
  source: "20200304-zatsudan"
  fileName: "20200304-zatsudan/nuget.mp3"
  category: ["meigen"]
  clipUrl: "https://www.youtube.com/watch?v=S2BVyuRrIRw&t=638"
EOF

# night-pool
mkdir -p ../../public/sounds/20200304-zatsudan
ffmpeg -y -ss 0:33:18.101 -i ../../scripts/video-clip-tool/public/movies/20200304-zatsudan.mp4 -t 0:00:02.256 ../../public/sounds/20200304-zatsudan/night-pool.mp4
ffmpeg -y -i ../../public/sounds/20200304-zatsudan/night-pool.mp4 -vn ../../public/sounds/20200304-zatsudan/night-pool.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.256618000000117' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=2.256618000000117' ../../public/sounds/20200304-zatsudan/base.mp4


# name: 「一人ナイトプール全力バタフライ」
# ruby: ひとりないとぷーる
# category: comment
# clipUrl: https://www.youtube.com/watch?v=S2BVyuRrIRw&t=1998
#
touch ./20200304-zatsudan.yml
cat <<EOF >> ./20200304-zatsudan.yml
- name: "「一人ナイトプール全力バタフライ」"
  ruby: "ひとりないとぷーる"
  source: "20200304-zatsudan"
  fileName: "20200304-zatsudan/night-pool.mp3"
  category: ["comment"]
  clipUrl: "https://www.youtube.com/watch?v=S2BVyuRrIRw&t=1998"
EOF

# syouganai-nya
mkdir -p ../../public/sounds/20200304-zatsudan
ffmpeg -y -ss 0:24:23.688 -i ../../scripts/video-clip-tool/public/movies/20200304-zatsudan.mp4 -t 0:00:04.459 ../../public/sounds/20200304-zatsudan/syouganai-nya.mp4
ffmpeg -y -i ../../public/sounds/20200304-zatsudan/syouganai-nya.mp4 -vn ../../public/sounds/20200304-zatsudan/syouganai-nya.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4.459323999999924' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=4.459323999999924' ../../public/sounds/20200304-zatsudan/base.mp4


# name: しょうがないにゃあ
# ruby: しょうがないにゃあ
# category: sensitive
# clipUrl: https://www.youtube.com/watch?v=S2BVyuRrIRw&t=1463
#
touch ./20200304-zatsudan.yml
cat <<EOF >> ./20200304-zatsudan.yml
- name: "しょうがないにゃあ"
  ruby: "しょうがないにゃあ"
  source: "20200304-zatsudan"
  fileName: "20200304-zatsudan/syouganai-nya.mp3"
  category: ["sensitive"]
  clipUrl: "https://www.youtube.com/watch?v=S2BVyuRrIRw&t=1463"
EOF

# face
mkdir -p ../../public/sounds/20200304-zatsudan
ffmpeg -y -ss 0:23:26.690 -i ../../scripts/video-clip-tool/public/movies/20200304-zatsudan.mp4 -t 0:00:01.857 ../../public/sounds/20200304-zatsudan/face.mp4
ffmpeg -y -i ../../public/sounds/20200304-zatsudan/face.mp4 -vn ../../public/sounds/20200304-zatsudan/face.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.8579859999999826' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.8579859999999826' ../../public/sounds/20200304-zatsudan/base.mp4


# name: みんなわたしの顔見たいだろうからアップにしておくわ
# ruby: みんなわたしのかおみたいだろうからあっぷにしておくわ
# category: kawaii
# clipUrl: https://www.youtube.com/watch?v=S2BVyuRrIRw&t=1406
#
touch ./20200304-zatsudan.yml
cat <<EOF >> ./20200304-zatsudan.yml
- name: "みんなわたしの顔見たいだろうからアップにしておくわ"
  ruby: "みんなわたしのかおみたいだろうからあっぷにしておくわ"
  source: "20200304-zatsudan"
  fileName: "20200304-zatsudan/face.mp3"
  category: ["kawaii"]
  clipUrl: "https://www.youtube.com/watch?v=S2BVyuRrIRw&t=1406"
EOF

# kekkonsuru
mkdir -p ../../public/sounds/20200304-zatsudan
ffmpeg -y -ss 0:15:01.681 -i ../../scripts/video-clip-tool/public/movies/20200304-zatsudan.mp4 -t 0:00:01.148 ../../public/sounds/20200304-zatsudan/kekkonsuru.mp4
ffmpeg -y -i ../../public/sounds/20200304-zatsudan/kekkonsuru.mp4 -vn ../../public/sounds/20200304-zatsudan/kekkonsuru.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.1486109999999599' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.1486109999999599' ../../public/sounds/20200304-zatsudan/base.mp4


# name: いいよ 結婚する？
# ruby: いいよけっこんする
# category: kawaii
# clipUrl: https://www.youtube.com/watch?v=S2BVyuRrIRw&t=901
#
touch ./20200304-zatsudan.yml
cat <<EOF >> ./20200304-zatsudan.yml
- name: "いいよ 結婚する？"
  ruby: "いいよけっこんする"
  source: "20200304-zatsudan"
  fileName: "20200304-zatsudan/kekkonsuru.mp3"
  category: ["kawaii"]
  clipUrl: "https://www.youtube.com/watch?v=S2BVyuRrIRw&t=901"
EOF


