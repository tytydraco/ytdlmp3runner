#!/usr/bin/env bash

SCRIPT_DIR="$(dirname -- "$(realpath -s -- "$0")")"

yt-dlp \
    --cookies-from-browser firefox \
    --flat-playlist \
    --print "%(channel_url)s/videos" \
    "https://www.youtube.com/feed/channels" \
    > "$SCRIPT_DIR/subscriptions.txt"