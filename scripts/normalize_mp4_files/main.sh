#!/bin/bash -xe

SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR

find ../../public/sounds | grep "\.mp4$" | grep -v "\-scaled\.mp4$" | sed s/\.mp4// | grep -E '(/.+){5}$' | sort | uniq > list.txt

for file in `cat list.txt`
do
  ORIGINAL_FILE="${file}.mp4"
  SCALED_FILE="${file}-scaled.mp4"
  if [ -e "${SCALED_FILE}" ]; then
    continue
  fi
  ffmpeg -i "${ORIGINAL_FILE}" -vf scale=320:240 -c:v libx264 -crf 23 "${SCALED_FILE}"
done
