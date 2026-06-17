#!/bin/bash -xe

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

npm install

# playlistItems.list 経由でチャンネルの全動画を一括取得する
npm start UCuep1JCrMvSxOGgGhBfJuYw
cp result.json ../../dataset/videolists/furen.json
