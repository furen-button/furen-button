#!/bin/bash -xe

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

# ファイル内の wav を mp3 に変換する
find ../../../dataset/sounds -type f | grep yml | gsed -i -e "s/\.wav/\.mp3/"
