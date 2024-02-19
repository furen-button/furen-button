#!/bin/bash -xe

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

# 事前に venv が必要
python3 -m venv env
. ./env/bin/activate
# install yt_dlp(URLパース), pytchat(チャット取得)
pip install yt_dlp pytchat
pip freeze > requirements.txt
pip install -r requirements.txt

python chat_get.py https://www.youtube.com/watch?v=mzrL3cruaMw

deactivate
