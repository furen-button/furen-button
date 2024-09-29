#!/bin/bash -xe

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

# 事前に venv が必要
python3 -m venv env
. ./env/bin/activate
# ffmpeg-normalize のインストールをする。事前に ffmpeg 自体のインストールが必要。
pip install -r requirements.txt
# pip freeze > requirements.txt

find ../../public/sounds | grep "\.wav$" | grep -v "\-normalized\.wav$" | sed s/\.wav// > list.txt

for file in `cat list.txt`
do
  ORIGINAL_WAV="${file}.wav"
  CONVERTED_MP3="${file}.mp3"
  NORMALIZED_WAV="${file}-normalized.wav"
  CONVERTED_NORMALIZED_WAV="${file}-normalized.mp3"
  if [ -e "${CONVERTED_NORMALIZED_WAV}" ]; then
    continue
  fi
  ./env/bin/ffmpeg-normalize --keep-lra-above-loudness-range-target "${ORIGINAL_WAV}" -o "${NORMALIZED_WAV}" -f
  ffmpeg -i "${ORIGINAL_WAV}" -ab 128k -ar 44100 "${CONVERTED_MP3}"
  ffmpeg -i "${NORMALIZED_WAV}" -ab 128k -ar 44100 "${CONVERTED_NORMALIZED_WAV}"
done

deactivate
