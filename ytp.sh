#!/bin/sh

# ytp.sh <playlist_file>
# Take a list of YouTube URLs; one per line.
# Generates a playlist URL that doesn't need you to be logged in.
# Only supports youtube.com/watch URLs, not e.g. embeds or youtu.be URLs.

# Copyright Steven Maude 2015
# Licensed under GPLv3.
set -eu

mystring=""
OIFS=$IFS
IFS="="

while read BASE_URL ID
do
  if [ "$mystring" = "" ]; then
    mystring="$ID"
  else
    mystring="${mystring},${ID}"
  fi
done <$1

IFS=$OIFS
echo "https://www.youtube.com/watch_videos?video_ids=${mystring}"
