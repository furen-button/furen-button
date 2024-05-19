#!/bin/bash -xe

# cp local.sh ../../dataset/sounds/erusa.sh
# rm ../../dataset/sounds/erusa.yml

# ./download.sh VQRO0SdkAWQ sekiro-5

# mokkai
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:02:12.949 -i saikyou.mp4 -t 0:00:02.683 ../../public/sounds/saikyou/mokkai.mp4
ffmpeg -y -i ../../public/sounds/saikyou/mokkai.mp4 -vn ../../public/sounds/saikyou/mokkai.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.683333333333337' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.683' ../../public/sounds/saikyou/base.mp4


# name: もっかいやらせて
# ruby: もっかいやらせて
# category: emotions
# clipUrl: https://youtube.com/clip/Ugkx9uOVDm9lXpAg6U6OA0RnokzyIoUG9xcu?si=wOxRQzlYrr518b7I
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "もっかいやらせて"
  ruby: "もっかいやらせて"
  source: "saikyou"
  fileName: "saikyou/mokkai.wav"
  category: ["emotions"]
  clipUrl: "https://youtube.com/clip/Ugkx9uOVDm9lXpAg6U6OA0RnokzyIoUG9xcu?si=wOxRQzlYrr518b7I"
EOF


# yasei
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:03:12.983 -i saikyou.mp4 -t 0:00:03.049 ../../public/sounds/saikyou/yasei.mp4
ffmpeg -y -i ../../public/sounds/saikyou/yasei.mp4 -vn ../../public/sounds/saikyou/yasei.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.0499999999999545' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.049' ../../public/sounds/saikyou/base.mp4


# name: 気持ちが野生に帰ったわ
# ruby: きもちがやせいにかえったら
# category: game
# clipUrl: https://www.youtube.com/watch?v=5wAzbEHtskU&t=192
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "気持ちが野生に帰ったわ"
  ruby: "きもちがやせいにかえったら"
  source: "saikyou"
  fileName: "saikyou/yasei.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5wAzbEHtskU&t=192"
EOF

# yareyareyare
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:06:57.333 -i saikyou.mp4 -t 0:00:03.233 ../../public/sounds/saikyou/yareyareyare.mp4
ffmpeg -y -i ../../public/sounds/saikyou/yareyareyare.mp4 -vn ../../public/sounds/saikyou/yareyareyare.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.233333333333178' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.233' ../../public/sounds/saikyou/base.mp4


# name: うおーやれやれやれやれやれ！
# ruby: うおーやれやれやれやれやれ！
# category: game
# clipUrl: https://www.youtube.com/watch?v=5wAzbEHtskU&t=417
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "うおーやれやれやれやれやれ！"
  ruby: "うおーやれやれやれやれやれ！"
  source: "saikyou"
  fileName: "saikyou/yareyareyare.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5wAzbEHtskU&t=417"
EOF

# waraigoe
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:07:39.666 -i saikyou.mp4 -t 0:00:02.683 ../../public/sounds/saikyou/waraigoe.mp4
ffmpeg -y -i ../../public/sounds/saikyou/waraigoe.mp4 -vn ../../public/sounds/saikyou/waraigoe.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.683333333333337' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.683' ../../public/sounds/saikyou/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: waraigoe
# clipUrl: https://youtube.com/clip/UgkxsYqr3s2JHM_VHHnmRBhtFBt8D3bi_Ye2?si=N2vpYXmDtUTDWjlW
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "saikyou"
  fileName: "saikyou/waraigoe.wav"
  category: ["waraigoe"]
  clipUrl: "https://youtube.com/clip/UgkxsYqr3s2JHM_VHHnmRBhtFBt8D3bi_Ye2?si=N2vpYXmDtUTDWjlW"
EOF

# ganbare
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:07:43.500 -i saikyou.mp4 -t 0:00:02.599 ../../public/sounds/saikyou/ganbare.mp4
ffmpeg -y -i ../../public/sounds/saikyou/ganbare.mp4 -vn ../../public/sounds/saikyou/ganbare.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.599999999999852' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.599' ../../public/sounds/saikyou/base.mp4


# name: がんばれ！いける！
# ruby: がんばれいける
# category: game
# clipUrl: https://youtube.com/clip/UgkxsYqr3s2JHM_VHHnmRBhtFBt8D3bi_Ye2?si=N2vpYXmDtUTDWjlW
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "がんばれ！いける！"
  ruby: "がんばれいける"
  source: "saikyou"
  fileName: "saikyou/ganbare.wav"
  category: ["game"]
  clipUrl: "https://youtube.com/clip/UgkxsYqr3s2JHM_VHHnmRBhtFBt8D3bi_Ye2?si=N2vpYXmDtUTDWjlW"
EOF

# yabai
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:07:37.800 -i saikyou.mp4 -t 0:00:00.999 ../../public/sounds/saikyou/yabai.mp4
ffmpeg -y -i ../../public/sounds/saikyou/yabai.mp4 -vn ../../public/sounds/saikyou/yabai.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=0.9999999999998295' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:00.999' ../../public/sounds/saikyou/base.mp4


# name: やばい殺される
# ruby: やばいころされる
# category: game
# clipUrl: https://youtube.com/clip/UgkxsYqr3s2JHM_VHHnmRBhtFBt8D3bi_Ye2?si=N2vpYXmDtUTDWjlW
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "やばい殺される"
  ruby: "やばいころされる"
  source: "saikyou"
  fileName: "saikyou/yabai.wav"
  category: ["game"]
  clipUrl: "https://youtube.com/clip/UgkxsYqr3s2JHM_VHHnmRBhtFBt8D3bi_Ye2?si=N2vpYXmDtUTDWjlW"
EOF

# kisi
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:14:26.650 -i saikyou.mp4 -t 0:00:01.216 ../../public/sounds/saikyou/kisi.mp4
ffmpeg -y -i ../../public/sounds/saikyou/kisi.mp4 -vn ../../public/sounds/saikyou/kisi.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.216666666666697' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.216' ../../public/sounds/saikyou/base.mp4


# name: 騎士なのでやっぱ
# ruby: きしなのでやっぱ
# category: game
# clipUrl: https://youtube.com/clip/Ugkxkgq8xhyse3Bpcj5OG0aTyTyNwtk20qlx?si=IrutXPbLstLjNNBv
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "騎士なのでやっぱ"
  ruby: "きしなのでやっぱ"
  source: "saikyou"
  fileName: "saikyou/kisi.wav"
  category: ["game"]
  clipUrl: "https://youtube.com/clip/Ugkxkgq8xhyse3Bpcj5OG0aTyTyNwtk20qlx?si=IrutXPbLstLjNNBv"
EOF

# waraigoe-2
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:14:31.666 -i saikyou.mp4 -t 0:00:06.216 ../../public/sounds/saikyou/waraigoe-2.mp4
ffmpeg -y -i ../../public/sounds/saikyou/waraigoe-2.mp4 -vn ../../public/sounds/saikyou/waraigoe-2.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6.216666666666697' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:06.216' ../../public/sounds/saikyou/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: game
# clipUrl: https://youtube.com/clip/Ugkxkgq8xhyse3Bpcj5OG0aTyTyNwtk20qlx?si=IrutXPbLstLjNNBv
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "saikyou"
  fileName: "saikyou/waraigoe-2.wav"
  category: ["game"]
  clipUrl: "https://youtube.com/clip/Ugkxkgq8xhyse3Bpcj5OG0aTyTyNwtk20qlx?si=IrutXPbLstLjNNBv"
EOF

# ikimasu
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:16:58.400 -i saikyou.mp4 -t 0:00:01.050 ../../public/sounds/saikyou/ikimasu.mp4
ffmpeg -y -i ../../public/sounds/saikyou/ikimasu.mp4 -vn ../../public/sounds/saikyou/ikimasu.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.0500000000000682' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.050' ../../public/sounds/saikyou/base.mp4


# name: いきます！
# ruby: いきます
# category: game
# clipUrl: https://youtube.com/clip/Ugkx2L7lopfrzV088Vq4tMLJstZPEu769Sju?si=YCEbmfRr1aObVj-A
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "いきます！"
  ruby: "いきます"
  source: "saikyou"
  fileName: "saikyou/ikimasu.wav"
  category: ["game"]
  clipUrl: "https://youtube.com/clip/Ugkx2L7lopfrzV088Vq4tMLJstZPEu769Sju?si=YCEbmfRr1aObVj-A"
EOF

# ike
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:17:03.133 -i saikyou.mp4 -t 0:00:01.683 ../../public/sounds/saikyou/ike.mp4
ffmpeg -y -i ../../public/sounds/saikyou/ike.mp4 -vn ../../public/sounds/saikyou/ike.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.6833333333331666' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.683' ../../public/sounds/saikyou/base.mp4


# name: いけ！がんばれ！やれ！
# ruby: いけがんばれやれ
# category: game
# clipUrl: https://youtube.com/clip/Ugkx2L7lopfrzV088Vq4tMLJstZPEu769Sju?si=YCEbmfRr1aObVj-A
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "いけ！がんばれ！やれ！"
  ruby: "いけがんばれやれ"
  source: "saikyou"
  fileName: "saikyou/ike.wav"
  category: ["game"]
  clipUrl: "https://youtube.com/clip/Ugkx2L7lopfrzV088Vq4tMLJstZPEu769Sju?si=YCEbmfRr1aObVj-A"
EOF

# waraigoe-3
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:17:12.116 -i saikyou.mp4 -t 0:00:03.100 ../../public/sounds/saikyou/waraigoe-3.mp4
ffmpeg -y -i ../../public/sounds/saikyou/waraigoe-3.mp4 -vn ../../public/sounds/saikyou/waraigoe-3.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.100000000000591' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.100' ../../public/sounds/saikyou/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: game
# clipUrl: https://youtube.com/clip/Ugkx2L7lopfrzV088Vq4tMLJstZPEu769Sju?si=YCEbmfRr1aObVj-A
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "saikyou"
  fileName: "saikyou/waraigoe-3.wav"
  category: ["game"]
  clipUrl: "https://youtube.com/clip/Ugkx2L7lopfrzV088Vq4tMLJstZPEu769Sju?si=YCEbmfRr1aObVj-A"
EOF

# kisi-tsuyoi
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:18:44.266 -i saikyou.mp4 -t 0:00:02.283 ../../public/sounds/saikyou/kisi-tsuyoi.mp4
ffmpeg -y -i ../../public/sounds/saikyou/kisi-tsuyoi.mp4 -vn ../../public/sounds/saikyou/kisi-tsuyoi.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.2833333333335304' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.283' ../../public/sounds/saikyou/base.mp4


# name: 騎士がいっちゃん強いってとこを見せつけなきゃいけないからな
# ruby: きしがいっちゃんつよいってとこをみせつけなきゃいけないからな
# category: game
# clipUrl: https://youtube.com/clip/UgkxaiVgdZ0aI_zrmjDiz5xtTlPV7RD-6SXh?si=wnpleJjmiujv0Xym
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "騎士がいっちゃん強いってとこを見せつけなきゃいけないからな"
  ruby: "きしがいっちゃんつよいってとこをみせつけなきゃいけないからな"
  source: "saikyou"
  fileName: "saikyou/kisi-tsuyoi.wav"
  category: ["game"]
  clipUrl: "https://youtube.com/clip/UgkxaiVgdZ0aI_zrmjDiz5xtTlPV7RD-6SXh?si=wnpleJjmiujv0Xym"
EOF

# saigo-no-hi
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:22:08.916 -i saikyou.mp4 -t 0:00:02.400 ../../public/sounds/saikyou/saigo-no-hi.mp4
ffmpeg -y -i ../../public/sounds/saikyou/saigo-no-hi.mp4 -vn ../../public/sounds/saikyou/saigo-no-hi.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.400000000000091' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.400' ../../public/sounds/saikyou/base.mp4


# name: 人類最後の日はたぶんこんな日なんだろうな
# ruby: じんるいさいごのひはたぶん
# category: game
# clipUrl: https://youtube.com/clip/UgkxMTxTPF_e3wJlAcjsTwDmktJHlorCagk6?si=WFWT3p9qQHOdi2ea
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "人類最後の日はたぶんこんな日なんだろうな"
  ruby: "じんるいさいごのひはたぶん"
  source: "saikyou"
  fileName: "saikyou/saigo-no-hi.wav"
  category: ["game"]
  clipUrl: "https://youtube.com/clip/UgkxMTxTPF_e3wJlAcjsTwDmktJHlorCagk6?si=WFWT3p9qQHOdi2ea"
EOF

# waraigoe-4
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:22:58.933 -i saikyou.mp4 -t 0:00:02.116 ../../public/sounds/saikyou/waraigoe-4.mp4
ffmpeg -y -i ../../public/sounds/saikyou/waraigoe-4.mp4 -vn ../../public/sounds/saikyou/waraigoe-4.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.1166666666665606' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.116' ../../public/sounds/saikyou/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: waraigoe
# clipUrl: https://www.youtube.com/watch?v=5wAzbEHtskU&t=1378
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "saikyou"
  fileName: "saikyou/waraigoe-4.wav"
  category: ["waraigoe"]
  clipUrl: "https://www.youtube.com/watch?v=5wAzbEHtskU&t=1378"
EOF

# ecchi
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:24:00.683 -i saikyou.mp4 -t 0:00:02.566 ../../public/sounds/saikyou/ecchi.mp4
ffmpeg -y -i ../../public/sounds/saikyou/ecchi.mp4 -vn ../../public/sounds/saikyou/ecchi.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.5666666666668334' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.566' ../../public/sounds/saikyou/base.mp4


# name: ここえっちだななんか
# ruby: ここえっちだななんか
# category: game
# clipUrl: https://www.youtube.com/watch?v=5wAzbEHtskU&t=1440
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "ここえっちだななんか"
  ruby: "ここえっちだななんか"
  source: "saikyou"
  fileName: "saikyou/ecchi.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5wAzbEHtskU&t=1440"
EOF

# koumei
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:30:42.583 -i saikyou.mp4 -t 0:00:02.700 ../../public/sounds/saikyou/koumei.mp4
ffmpeg -y -i ../../public/sounds/saikyou/koumei.mp4 -vn ../../public/sounds/saikyou/koumei.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.7000000000000455' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.700' ../../public/sounds/saikyou/base.mp4


# name: わたし孔明並の知識を見せてしまった
# ruby: ここえっちだななんか
# category: game
# clipUrl: https://youtube.com/clip/UgkxSr2pNvh-VYFJS2mUGshIC1LFwzZspPY4?si=LYo34B3RPXJ4-Pnp
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "わたし孔明並の知識を見せてしまった"
  ruby: "ここえっちだななんか"
  source: "saikyou"
  fileName: "saikyou/koumei.wav"
  category: ["game"]
  clipUrl: "https://youtube.com/clip/UgkxSr2pNvh-VYFJS2mUGshIC1LFwzZspPY4?si=LYo34B3RPXJ4-Pnp"
EOF

# onnakisi
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:30:47.016 -i saikyou.mp4 -t 0:00:02.433 ../../public/sounds/saikyou/onnakisi.mp4
ffmpeg -y -i ../../public/sounds/saikyou/onnakisi.mp4 -vn ../../public/sounds/saikyou/onnakisi.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.433333333333394' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.433' ../../public/sounds/saikyou/base.mp4


# name: コーヴァスで女騎士だてにやってないからさぁ
# ruby: こーゔぁすでおんなきしだてにやってないからさぁ
# category: game
# clipUrl: https://www.youtube.com/watch?v=5wAzbEHtskU&t=1847
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "コーヴァスで女騎士だてにやってないからさぁ"
  ruby: "こーゔぁすでおんなきしだてにやってないからさぁ"
  source: "saikyou"
  fileName: "saikyou/onnakisi.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5wAzbEHtskU&t=1847"
EOF

# joe
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:37:04.483 -i saikyou.mp4 -t 0:00:01.550 ../../public/sounds/saikyou/joe.mp4
ffmpeg -y -i ../../public/sounds/saikyou/joe.mp4 -vn ../../public/sounds/saikyou/joe.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.550000000000182' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.550' ../../public/sounds/saikyou/base.mp4


# name: ジョーが場外に！
# ruby: じょーがじょうがいに
# category: game
# clipUrl: https://youtube.com/clip/UgkxedBVrBuox_VmQIpsGNQtlXNSJKMc-4c3?si=q3SLDAd7nSb9nMd1
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "ジョーが場外に！"
  ruby: "じょーがじょうがいに"
  source: "saikyou"
  fileName: "saikyou/joe.wav"
  category: ["game"]
  clipUrl: "https://youtube.com/clip/UgkxedBVrBuox_VmQIpsGNQtlXNSJKMc-4c3?si=q3SLDAd7nSb9nMd1"
EOF

# ageage
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:34:48.066 -i saikyou.mp4 -t 0:00:01.366 ../../public/sounds/saikyou/ageage.mp4
ffmpeg -y -i ../../public/sounds/saikyou/ageage.mp4 -vn ../../public/sounds/saikyou/ageage.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.3666666666654237' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.366' ../../public/sounds/saikyou/base.mp4


# name: バイブスアゲアゲってかんじ
# ruby: ばいぶすあげあげってかんじ
# category: game
# clipUrl: https://www.youtube.com/watch?v=5wAzbEHtskU&t=2088
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "バイブスアゲアゲってかんじ"
  ruby: "ばいぶすあげあげってかんじ"
  source: "saikyou"
  fileName: "saikyou/ageage.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5wAzbEHtskU&t=2088"
EOF

# waraigoe-5
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 0:56:18.566 -i saikyou.mp4 -t 0:00:10.166 ../../public/sounds/saikyou/waraigoe-5.mp4
ffmpeg -y -i ../../public/sounds/saikyou/waraigoe-5.mp4 -vn ../../public/sounds/saikyou/waraigoe-5.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=10.166666666666515' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:10.166' ../../public/sounds/saikyou/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: game
# clipUrl: https://youtube.com/clip/UgkxZG50NQUp5TIDn7Lteq1y8jXfnv1o258F?si=qruUxa9hoZ6hZZJo
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "saikyou"
  fileName: "saikyou/waraigoe-5.wav"
  category: ["waraigoe"]
  clipUrl: "https://youtube.com/clip/UgkxZG50NQUp5TIDn7Lteq1y8jXfnv1o258F?si=qruUxa9hoZ6hZZJo"
EOF

# hito-no
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 1:13:45.116 -i saikyou.mp4 -t 0:00:02.683 ../../public/sounds/saikyou/hito-no.mp4
ffmpeg -y -i ../../public/sounds/saikyou/hito-no.mp4 -vn ../../public/sounds/saikyou/hito-no.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=2.683333333333394' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:02.683' ../../public/sounds/saikyou/base.mp4


# name: 人の心がない
# ruby: ひとのこころがない
# category: game
# clipUrl: https://youtube.com/clip/Ugkx1Tu299W-j2IfSMHYtp6Y2gTjOsIou5iO?si=3-DrhbzGxRDllYY4
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "人の心がない"
  ruby: "ひとのこころがない"
  source: "saikyou"
  fileName: "saikyou/hito-no.wav"
  category: ["game"]
  clipUrl: "https://youtube.com/clip/Ugkx1Tu299W-j2IfSMHYtp6Y2gTjOsIou5iO?si=3-DrhbzGxRDllYY4"
EOF

# waraigoe-6
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 1:46:24.716 -i saikyou.mp4 -t 0:00:01.400 ../../public/sounds/saikyou/waraigoe-6.mp4
ffmpeg -y -i ../../public/sounds/saikyou/waraigoe-6.mp4 -vn ../../public/sounds/saikyou/waraigoe-6.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.4000000000005457' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.400' ../../public/sounds/saikyou/base.mp4


# name: わらいごえ
# ruby: わらいごえ
# category: waraigoe
# clipUrl: https://youtube.com/clip/UgkxfEXjYJ8hQYEQhTK5oWoTgHZJZuQ9fhK5?si=J--B9PuJhw0pW6Ae
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "わらいごえ"
  ruby: "わらいごえ"
  source: "saikyou"
  fileName: "saikyou/waraigoe-6.wav"
  category: ["waraigoe"]
  clipUrl: "https://youtube.com/clip/UgkxfEXjYJ8hQYEQhTK5oWoTgHZJZuQ9fhK5?si=J--B9PuJhw0pW6Ae"
EOF

# billi
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 1:46:19.749 -i saikyou.mp4 -t 0:00:03.133 ../../public/sounds/saikyou/billi.mp4
ffmpeg -y -i ../../public/sounds/saikyou/billi.mp4 -vn ../../public/sounds/saikyou/billi.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=3.133333333333212' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:03.133' ../../public/sounds/saikyou/base.mp4


# name: ビリー今までありがとう。儚く散ってくれ。
# ruby: びりーいままでありがとう
# category: game
# clipUrl: https://youtube.com/clip/UgkxfEXjYJ8hQYEQhTK5oWoTgHZJZuQ9fhK5?si=J--B9PuJhw0pW6Ae
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "ビリー今までありがとう。儚く散ってくれ。"
  ruby: "びりーいままでありがとう"
  source: "saikyou"
  fileName: "saikyou/billi.wav"
  category: ["game"]
  clipUrl: "https://youtube.com/clip/UgkxfEXjYJ8hQYEQhTK5oWoTgHZJZuQ9fhK5?si=J--B9PuJhw0pW6Ae"
EOF

# uwo-kita
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 2:19:34.966 -i saikyou.mp4 -t 0:00:25.566 ../../public/sounds/saikyou/uwo-kita.mp4
ffmpeg -y -i ../../public/sounds/saikyou/uwo-kita.mp4 -vn ../../public/sounds/saikyou/uwo-kita.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=25.566666666667516' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:25.566' ../../public/sounds/saikyou/base.mp4


# name: うおおおーきたー！ 鮮やかなプレイすごくない？
# ruby: うおおおーきたーあざかなぷれいすごくない
# category: game
# clipUrl: https://youtube.com/clip/UgkxQj-gxCjenNtoE1Y6P26l9Jq6s-xQXw7r?si=wxlKy-IHNXgZwLcl
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "うおおおーきたー！ 鮮やかなプレイすごくない？"
  ruby: "うおおおーきたーあざかなぷれいすごくない"
  source: "saikyou"
  fileName: "saikyou/uwo-kita.wav"
  category: ["game"]
  clipUrl: "https://youtube.com/clip/UgkxQj-gxCjenNtoE1Y6P26l9Jq6s-xQXw7r?si=wxlKy-IHNXgZwLcl"
EOF

# dokoiku
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 2:23:19.533 -i saikyou.mp4 -t 0:00:01.049 ../../public/sounds/saikyou/dokoiku.mp4
ffmpeg -y -i ../../public/sounds/saikyou/dokoiku.mp4 -vn ../../public/sounds/saikyou/dokoiku.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=1.0499999999992724' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:01.049' ../../public/sounds/saikyou/base.mp4


# name: どこいくねーん！
# ruby: どこいくねーん
# category: game
# clipUrl: https://www.youtube.com/watch?v=5wAzbEHtskU&t=8599
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "どこいくねーん！"
  ruby: "どこいくねーん"
  source: "saikyou"
  fileName: "saikyou/dokoiku.wav"
  category: ["game"]
  clipUrl: "https://www.youtube.com/watch?v=5wAzbEHtskU&t=8599"
EOF


# bijo
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 2:34:39.916 -i saikyou.mp4 -t 0:00:06.866 ../../public/sounds/saikyou/bijo.mp4
ffmpeg -y -i ../../public/sounds/saikyou/bijo.mp4 -vn ../../public/sounds/saikyou/bijo.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6.866666666668607' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:06.866' ../../public/sounds/saikyou/base.mp4


# name: ありがとう今日も美女でーす
# ruby: ありがとうきょうもびじょでーす
# category: supacha
# clipUrl: https://www.youtube.com/watch?v=5wAzbEHtskU&t=9279
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "ありがとう今日も美女でーす"
  ruby: "ありがとうきょうもびじょでーす"
  source: "saikyou"
  fileName: "saikyou/bijo.wav"
  category: ["supacha"]
  clipUrl: "https://www.youtube.com/watch?v=5wAzbEHtskU&t=9279"
EOF

# akumano
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 2:40:10.833 -i saikyou.mp4 -t 0:00:12.200 ../../public/sounds/saikyou/akumano.mp4
ffmpeg -y -i ../../public/sounds/saikyou/akumano.mp4 -vn ../../public/sounds/saikyou/akumano.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=12.200000000000728' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:12.200' ../../public/sounds/saikyou/base.mp4


# name: いつも『あはは』『うふふ』って感じで笑ってるよね
# ruby: いつもあははうふふ
# category: supacha
# clipUrl: https://www.youtube.com/watch?v=5wAzbEHtskU&t=9610
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "いつも『あはは』『うふふ』って感じで笑ってるよね"
  ruby: "いつもあははうふふ"
  source: "saikyou"
  fileName: "saikyou/akumano.wav"
  category: ["supacha"]
  clipUrl: "https://www.youtube.com/watch?v=5wAzbEHtskU&t=9610"
EOF

# kawaii
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 2:41:28.799 -i saikyou.mp4 -t 0:00:04.299 ../../public/sounds/saikyou/kawaii.mp4
ffmpeg -y -i ../../public/sounds/saikyou/kawaii.mp4 -vn ../../public/sounds/saikyou/kawaii.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=4.299999999999272' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:04.299' ../../public/sounds/saikyou/base.mp4


# name: 今日も可愛いでーす
# ruby: きょうもかわいいでーす
# category: supacha
# clipUrl: https://www.youtube.com/watch?v=5wAzbEHtskU&t=9688
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "今日もかわいいでーす"
  ruby: "きょうもかわいいでーす"
  source: "saikyou"
  fileName: "saikyou/kawaii.wav"
  category: ["supacha"]
  clipUrl: "https://www.youtube.com/watch?v=5wAzbEHtskU&t=9688"
EOF

# kawaii-2
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 2:41:51.933 -i saikyou.mp4 -t 0:00:06.016 ../../public/sounds/saikyou/kawaii-2.mp4
ffmpeg -y -i ../../public/sounds/saikyou/kawaii-2.mp4 -vn ../../public/sounds/saikyou/kawaii-2.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=6.016666666666424' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:06.016' ../../public/sounds/saikyou/base.mp4


# name: どんなときでもかわいいからわたし
# ruby: どんなときでもかわいいからわたし
# category: supacha
# clipUrl: https://www.youtube.com/watch?v=5wAzbEHtskU&t=9711
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "どんなときでもかわいいからわたし"
  ruby: "どんなときでもかわいいからわたし"
  source: "saikyou"
  fileName: "saikyou/kawaii-2.wav"
  category: ["supacha"]
  clipUrl: "https://www.youtube.com/watch?v=5wAzbEHtskU&t=9711"
EOF

# bgm
mkdir -p ../../public/sounds/saikyou
ffmpeg -y -ss 2:43:01.733 -i saikyou.mp4 -t 0:00:25.000 ../../public/sounds/saikyou/bgm.mp4
ffmpeg -y -i ../../public/sounds/saikyou/bgm.mp4 -vn ../../public/sounds/saikyou/bgm.wav
ffmpeg -y -f lavfi -i 'color=c=black:s=1080x1920:r=30000/1001:d=25' -f lavfi -i 'aevalsrc=0|0:c=stereo:s=44100:d=0:00:25.000' ../../public/sounds/saikyou/base.mp4


# name: BGM（おうた）
# ruby: BGM
# category: se
# clipUrl: https://www.youtube.com/watch?v=5wAzbEHtskU&t=9781
# 
touch ../../dataset/sounds/saikyou.yml
cat <<EOF >> ../../dataset/sounds/saikyou.yml
- name: "BGM（おうた）"
  ruby: "BGM"
  source: "saikyou"
  fileName: "saikyou/bgm.wav"
  category: ["se"]
  clipUrl: "https://www.youtube.com/watch?v=5wAzbEHtskU&t=9781"
EOF

