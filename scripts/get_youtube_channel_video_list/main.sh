#!/bin/bash -xe

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

npm install

# 検索結果が500を超えると抜けが発生するので1年ごとに取得する。
npm start 'part=snippet&channelId=UCuep1JCrMvSxOGgGhBfJuYw&order=date&type=video&maxResults=50&safeSearch=none&publishedBefore=2020-12-31T00:00:00Z&publishedAfter=2019-12-01T00:00:00Z'
cp result.csv ../../dataset/videolists/furen_2020.json

npm start 'part=snippet&channelId=UCuep1JCrMvSxOGgGhBfJuYw&order=date&type=video&maxResults=50&safeSearch=none&publishedBefore=2021-12-31T00:00:00Z&publishedAfter=2020-12-01T00:00:00Z'
cp result.csv ../../dataset/videolists/furen_2021.json

npm start 'part=snippet&channelId=UCuep1JCrMvSxOGgGhBfJuYw&order=date&type=video&maxResults=50&safeSearch=none&publishedBefore=2022-12-31T00:00:00Z&publishedAfter=2021-12-01T00:00:00Z'
cp result.csv ../../dataset/videolists/furen_2022.json

npm start 'part=snippet&channelId=UCuep1JCrMvSxOGgGhBfJuYw&order=date&type=video&maxResults=50&safeSearch=none&publishedBefore=2023-12-31T00:00:00Z&publishedAfter=2022-12-01T00:00:00Z'
cp result.csv ../../dataset/videolists/furen_2023.json

npm start 'part=snippet&channelId=UCuep1JCrMvSxOGgGhBfJuYw&order=date&type=video&maxResults=50&safeSearch=none&publishedBefore=2024-12-31T00:00:00Z&publishedAfter=2023-12-28T00:00:00Z'
cp result.csv ../../dataset/videolists/furen_2024.json

npm start 'part=snippet&channelId=UCuep1JCrMvSxOGgGhBfJuYw&order=date&type=video&maxResults=50&safeSearch=none&publishedBefore=2025-12-31T00:00:00Z&publishedAfter=2024-12-28T00:00:00Z'
cp result.csv ../../dataset/videolists/furen_2025.json
