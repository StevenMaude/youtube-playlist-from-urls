#!/bin/sh

# ytp.sh <playlist_file>
# Take a list of YouTube URLs; one per line.
# Generates a playlist URL that doesn't need you to be logged in.
# Only supports youtube.com/watch URLs, not e.g. embeds or youtu.be URLs.

# Copyright Steven Maude 2015
# Licensed under GPLv3.
set -eu

ids=
while IFS="=" read base_url id
do
  if [ -z "$ids" ]; then
    ids="$id"
  else
    ids="${ids},${id}"
  fi
done <$1

echo "https://www.youtube.com/watch_videos?video_ids=$ids"
