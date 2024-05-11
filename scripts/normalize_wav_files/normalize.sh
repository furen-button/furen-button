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
  ./env/bin/ffmpeg-normalize --keep-lra-above-loudness-range-target "${file}.wav" -o "${file}-normalized.wav" -f
done

deactivate
