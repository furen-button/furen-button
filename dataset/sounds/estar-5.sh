#!/bin/bash -xe

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR
rm -rf ./estar-5.yml

# chiken-hermony
mkdir -p ../../public/sounds/estar-5
ffmpeg -y -ss 0:04:23.348 -i ../../scripts/video-clip-tool/public/movies/estar-5.mp4 -t 0:00:00.591 ../../public/sounds/estar-5/chiken-hermony.mp4
ffmpeg -y -i ../../public/sounds/estar-5/chiken-hermony.mp4 -vn ../../public/sounds/estar-5/chiken-hermony.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.5910599999999704' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0.5910599999999704' ../../public/sounds/estar-5/base.mp4


# name: ティキン！
# ruby: てぃきん
# category: collab
# clipUrl: https://www.youtube.com/watch?v=DqJrblxhu1s&t=263
# 
touch ./estar-5.yml
cat <<EOF >> ./estar-5.yml
- name: "ティキン！"
  ruby: "てぃきん"
  source: "estar-5"
  fileName: "estar-5/chiken-hermony.mp3"
  category: ["collab"]
  clipUrl: "https://www.youtube.com/watch?v=DqJrblxhu1s&t=263"
EOF

# a-n
mkdir -p ../../public/sounds/estar-5
ffmpeg -y -ss 0:52:35.690 -i ../../scripts/video-clip-tool/public/movies/estar-5.mp4 -t 0:00:04.256 ../../public/sounds/estar-5/a-n.mp4
ffmpeg -y -i ../../public/sounds/estar-5/a-n.mp4 -vn ../../public/sounds/estar-5/a-n.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4.256475000000137' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=4.256475000000137' ../../public/sounds/estar-5/base.mp4


# name: あーん
# ruby: あーん
# category: collab
# clipUrl: https://www.youtube.com/watch?v=DqJrblxhu1s&t=3155
# 
touch ./estar-5.yml
cat <<EOF >> ./estar-5.yml
- name: "あーん"
  ruby: "あーん"
  source: "estar-5"
  fileName: "estar-5/a-n.mp3"
  category: ["collab"]
  clipUrl: "https://www.youtube.com/watch?v=DqJrblxhu1s&t=3155"
EOF

# sukinamono-erande-kudasai
mkdir -p ../../public/sounds/estar-5
ffmpeg -y -ss 0:19:04.486 -i ../../scripts/video-clip-tool/public/movies/estar-5.mp4 -t 0:00:01.953 ../../public/sounds/estar-5/sukinamono-erande-kudasai.mp4
ffmpeg -y -i ../../public/sounds/estar-5/sukinamono-erande-kudasai.mp4 -vn ../../public/sounds/estar-5/sukinamono-erande-kudasai.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.9532720000001973' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.9532720000001973' ../../public/sounds/estar-5/base.mp4


# name: 「好きなもの選んでください、なんでも似合うので」「じゃあ星川が選ぶ」
# ruby: すきなものえらんでくださいなんでもにあうので
# category: collab
# clipUrl: https://www.youtube.com/watch?v=DqJrblxhu1s&t=1144
#
touch ./estar-5.yml
cat <<EOF >> ./estar-5.yml
- name: "「好きなもの選んでください、なんでも似合うので」「じゃあ星川が選ぶ」"
  ruby: "すきなものえらんでくださいなんでもにあうので"
  source: "estar-5"
  fileName: "estar-5/sukinamono-erande-kudasai.mp3"
  category: ["collab"]
  clipUrl: "https://www.youtube.com/watch?v=DqJrblxhu1s&t=1144"
EOF

# muri-muri-muri
mkdir -p ../../public/sounds/estar-5
ffmpeg -y -ss 0:19:07.137 -i ../../scripts/video-clip-tool/public/movies/estar-5.mp4 -t 0:00:03.471 ../../public/sounds/estar-5/muri-muri-muri.mp4
ffmpeg -y -i ../../public/sounds/estar-5/muri-muri-muri.mp4 -vn ../../public/sounds/estar-5/muri-muri-muri.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.4717559999996865' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=3.4717559999996865' ../../public/sounds/estar-5/base.mp4


# name: ほんとうにムリ！まじでムリ！ほんとに！まじでムリ！まじでムリ！！まじでムリ！！！
# ruby: ほんとうにむり
# category: collab
# clipUrl: https://www.youtube.com/watch?v=DqJrblxhu1s&t=1147
#
touch ./estar-5.yml
cat <<EOF >> ./estar-5.yml
- name: "ほんとうにムリ！まじでムリ！ほんとに！まじでムリ！まじでムリ！！まじでムリ！！！"
  ruby: "ほんとうにむり"
  source: "estar-5"
  fileName: "estar-5/muri-muri-muri.mp3"
  category: ["collab"]
  clipUrl: "https://www.youtube.com/watch?v=DqJrblxhu1s&t=1147"
EOF

# kaette
mkdir -p ../../public/sounds/estar-5
ffmpeg -y -ss 0:19:14.461 -i ../../scripts/video-clip-tool/public/movies/estar-5.mp4 -t 0:00:00.622 ../../public/sounds/estar-5/kaette.mp4
ffmpeg -y -i ../../public/sounds/estar-5/kaette.mp4 -vn ../../public/sounds/estar-5/kaette.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.6226430000001528' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0.6226430000001528' ../../public/sounds/estar-5/base.mp4


# name: 帰って
# ruby: かえって
# category: collab
# clipUrl: https://www.youtube.com/watch?v=DqJrblxhu1s&t=1154
#
touch ./estar-5.yml
cat <<EOF >> ./estar-5.yml
- name: "帰って"
  ruby: "かえって"
  source: "estar-5"
  fileName: "estar-5/kaette.mp3"
  category: ["collab"]
  clipUrl: "https://www.youtube.com/watch?v=DqJrblxhu1s&t=1154"
EOF

# ja-watashi-ga-erabimasu
mkdir -p ../../public/sounds/estar-5
ffmpeg -y -ss 0:19:19.386 -i ../../scripts/video-clip-tool/public/movies/estar-5.mp4 -t 0:00:02.467 ../../public/sounds/estar-5/ja-watashi-ga-erabimasu.mp4
ffmpeg -y -i ../../public/sounds/estar-5/ja-watashi-ga-erabimasu.mp4 -vn ../../public/sounds/estar-5/ja-watashi-ga-erabimasu.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.4679519999999684' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=2.4679519999999684' ../../public/sounds/estar-5/base.mp4


# name: じゃあわたしが選びます
# ruby: じゃあわたしがえらびます
# category: collab
# clipUrl: https://www.youtube.com/watch?v=DqJrblxhu1s&t=1159
#
touch ./estar-5.yml
cat <<EOF >> ./estar-5.yml
- name: "じゃあわたしが選びます"
  ruby: "じゃあわたしがえらびます"
  source: "estar-5"
  fileName: "estar-5/ja-watashi-ga-erabimasu.mp3"
  category: ["collab"]
  clipUrl: "https://www.youtube.com/watch?v=DqJrblxhu1s&t=1159"
EOF

# waraigoe
mkdir -p ../../public/sounds/estar-5
ffmpeg -y -ss 0:19:30.116 -i ../../scripts/video-clip-tool/public/movies/estar-5.mp4 -t 0:00:01.442 ../../public/sounds/estar-5/waraigoe.mp4
ffmpeg -y -i ../../public/sounds/estar-5/waraigoe.mp4 -vn ../../public/sounds/estar-5/waraigoe.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.4429220000001806' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=1.4429220000001806' ../../public/sounds/estar-5/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: waraigoe
# clipUrl: https://www.youtube.com/watch?v=DqJrblxhu1s&t=1170
#
touch ./estar-5.yml
cat <<EOF >> ./estar-5.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "estar-5"
  fileName: "estar-5/waraigoe.mp3"
  category: ["waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=DqJrblxhu1s&t=1170"
EOF

# noritama
mkdir -p ../../public/sounds/estar-5
ffmpeg -y -ss 0:19:45.870 -i ../../scripts/video-clip-tool/public/movies/estar-5.mp4 -t 0:00:09.090 ../../public/sounds/estar-5/noritama.mp4
ffmpeg -y -i ../../public/sounds/estar-5/noritama.mp4 -vn ../../public/sounds/estar-5/noritama.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=9.090110000000095' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=9.090110000000095' ../../public/sounds/estar-5/base.mp4


# name: 「〜好きなふりかけの味を教えて下さい」
# ruby: すきなふりかけのあじを
# category: collab
# clipUrl: https://www.youtube.com/watch?v=DqJrblxhu1s&t=1185
#
touch ./estar-5.yml
cat <<EOF >> ./estar-5.yml
- name: "「〜好きなふりかけの味を教えて下さい」"
  ruby: "すきなふりかけのあじを"
  source: "estar-5"
  fileName: "estar-5/noritama.mp3"
  category: ["collab"]
  clipUrl: "https://www.youtube.com/watch?v=DqJrblxhu1s&t=1185"
EOF

# cho-kawaii-ko
mkdir -p ../../public/sounds/estar-5
ffmpeg -y -ss 0:24:24.333 -i ../../scripts/video-clip-tool/public/movies/estar-5.mp4 -t 0:00:18.849 ../../public/sounds/estar-5/cho-kawaii-ko.mp4
ffmpeg -y -i ../../public/sounds/estar-5/cho-kawaii-ko.mp4 -vn ../../public/sounds/estar-5/cho-kawaii-ko.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=18.84999999999991' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=18.84999999999991' ../../public/sounds/estar-5/base.mp4


# name: サンタさんに向けてクッキー作ったり
# ruby: さんたさんにむけて
# category: collab
# clipUrl: https://www.youtube.com/watch?v=DqJrblxhu1s&t=1464
#
touch ./estar-5.yml
cat <<EOF >> ./estar-5.yml
- name: "サンタさんに向けてクッキー作ったり"
  ruby: "さんたさんにむけて"
  source: "estar-5"
  fileName: "estar-5/cho-kawaii-ko.mp3"
  category: ["collab"]
  clipUrl: "https://www.youtube.com/watch?v=DqJrblxhu1s&t=1464"
EOF

# ryote-wo-ohiza
mkdir -p ../../public/sounds/estar-5
ffmpeg -y -ss 0:31:59.506 -i ../../scripts/video-clip-tool/public/movies/estar-5.mp4 -t 0:00:05.231 ../../public/sounds/estar-5/ryote-wo-ohiza.mp4
ffmpeg -y -i ../../public/sounds/estar-5/ryote-wo-ohiza.mp4 -vn ../../public/sounds/estar-5/ryote-wo-ohiza.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=5.231614000000036' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=5.231614000000036' ../../public/sounds/estar-5/base.mp4


# name: その両手をおひざに置くのやめて
# ruby: そのりょうてをおひざにおくのやめて
# category: collab
# clipUrl: https://www.youtube.com/watch?v=DqJrblxhu1s&t=1919
#
touch ./estar-5.yml
cat <<EOF >> ./estar-5.yml
- name: "その両手をおひざに置くのやめて（戌亥とこ）"
  ruby: "そのりょうてをおひざにおくのやめて"
  source: "estar-5"
  fileName: "estar-5/ryote-wo-ohiza.mp3"
  category: ["collab"]
  clipUrl: "https://www.youtube.com/watch?v=DqJrblxhu1s&t=1919"
EOF

# kouza-no-bango
mkdir -p ../../public/sounds/estar-5
ffmpeg -y -ss 0:34:22.074 -i ../../scripts/video-clip-tool/public/movies/estar-5.mp4 -t 0:00:09.666 ../../public/sounds/estar-5/kouza-no-bango.mp4
ffmpeg -y -i ../../public/sounds/estar-5/kouza-no-bango.mp4 -vn ../../public/sounds/estar-5/kouza-no-bango.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=9.666666666666515' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=9.666666666666515' ../../public/sounds/estar-5/base.mp4


# name: 口座の番号を教えてもらえれば
# ruby: こうざのばんごうをおしえてもらえれば
# category: collab
# clipUrl: https://www.youtube.com/watch?v=DqJrblxhu1s&t=2062
#
touch ./estar-5.yml
cat <<EOF >> ./estar-5.yml
- name: "口座の番号を教えてもらえれば"
  ruby: "こうざのばんごうをおしえてもらえれば"
  source: "estar-5"
  fileName: "estar-5/kouza-no-bango.mp3"
  category: ["collab"]
  clipUrl: "https://www.youtube.com/watch?v=DqJrblxhu1s&t=2062"
EOF

# almost-chiken
mkdir -p ../../public/sounds/estar-5
ffmpeg -y -ss 0:08:32.181 -i ../../scripts/video-clip-tool/public/movies/estar-5.mp4 -t 0:00:06.590 ../../public/sounds/estar-5/almost-chiken.mp4
ffmpeg -y -i ../../public/sounds/estar-5/almost-chiken.mp4 -vn ../../public/sounds/estar-5/almost-chiken.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6.590477999999962' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=6.590477999999962' ../../public/sounds/estar-5/base.mp4


# name: みんな脳みそ8割チキンじゃない？（星川）
# ruby: みんなのうみそ8わり
# category: collab
# clipUrl: https://www.youtube.com/watch?v=DqJrblxhu1s&t=512
#
touch ./estar-5.yml
cat <<EOF >> ./estar-5.yml
- name: "みんな脳みそ8割チキンじゃない？（星川サラ）"
  ruby: "みんなのうみそ8わり"
  source: "estar-5"
  fileName: "estar-5/almost-chiken.mp3"
  category: ["collab"]
  clipUrl: "https://www.youtube.com/watch?v=DqJrblxhu1s&t=512"
EOF


# need-the-bone-that-senpai-ate
mkdir -p ../../public/sounds/estar-5
ffmpeg -y -ss 0:50:05.862 -i ../../scripts/video-clip-tool/public/movies/estar-5.mp4 -t 0:00:11.250 ../../public/sounds/estar-5/need-the-bone-that-senpai-ate.mp4
ffmpeg -y -i ../../public/sounds/estar-5/need-the-bone-that-senpai-ate.mp4 -vn ../../public/sounds/estar-5/need-the-bone-that-senpai-ate.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=11.250210000000152' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=11.250210000000152' ../../public/sounds/estar-5/base.mp4


# name: 骨いる？（樋口楓）
# ruby: ほねいる？
# category: collab
# clipUrl: https://www.youtube.com/watch?v=DqJrblxhu1s&t=3005
#
touch ./estar-5.yml
cat <<EOF >> ./estar-5.yml
- name: "骨いる？（樋口楓）"
  ruby: "ほねいる？"
  source: "estar-5"
  fileName: "estar-5/need-the-bone-that-senpai-ate.mp3"
  category: ["collab"]
  clipUrl: "https://www.youtube.com/watch?v=DqJrblxhu1s&t=3005"
EOF
