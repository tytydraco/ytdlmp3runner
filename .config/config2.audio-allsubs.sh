#!/usr/bin/env bash
# shellcheck disable=SC2016

# yt-dlp \
#     --cookies-from-browser firefox \
#     --flat-playlist \
#     --print "%(channel_url)s/videos" \
#     "https://www.youtube.com/feed/channels"

readarray -t YOUTUBE_SUBSCRIPTIONS < subscriptions.txt

# URLs to download (music):
URLS_MUSIC=()

# URLs to download (audio):
URLS_AUDIO=("${YOUTUBE_SUBSCRIPTIONS[@]}")

# URLs to download (video):
URLS_VIDEO=()

# Output directories:
OUT_DIR_MUSIC="out/music"
OUT_DIR_AUDIO="out/audio"
OUT_DIR_VIDEO="out/video"

# CLEAN MUSIC FOLDER - FRESH INDICIES.
[[ -d "$OUT_DIR_MUSIC" ]] && rm -rf "${OUT_DIR_MUSIC:?}"/*

# Download parameters:
# BROWSER_COOKIES="firefox"
PRESERVE_ORIGINAL="false"

# Converters:
CONVERTERS_AUDIO=()
CONVERTERS_VIDEO=()

# Download configurations for yt-dlp:
COOKIES_FILE="cookies.txt"
DATE_CUTOFF=$(date -d '1 day ago' '+%Y%m%d')
YTDLP_ARGS_MUSIC=()
YTDLP_ARGS_AUDIO=(
    --lazy-playlist
    --break-match-filters "upload_date >= $DATE_CUTOFF"
    # --match-filter "duration < 14400"
    # --sponsorblock-remove sponsor
    --ignore-errors
    --no-overwrites
    --download-archive .archiveaudio
    --concurrent-fragments 3
    --cookies "$COOKIES_FILE"
    --windows-filenames
    --restrict-filenames
    --no-write-playlist-metafiles
    --mtime
    --extract-audio
    --embed-metadata
    --audio-format mp3
    --audio-quality 8
    --format "bestaudio/best"
    --postprocessor-args "ffmpeg:-ar:a 16000 -ac:a 1"
    --output "$OUT_DIR_AUDIO/%(channel)s/%(upload_date)s.%(title)s.%(ext)s"
)
YTDLP_ARGS_VIDEO=()

export URLS_MUSIC
export URLS_AUDIO
export URLS_VIDEO
export OUT_DIR_MUSIC
export OUT_DIR_AUDIO
export OUT_DIR_VIDEO
export BROWSER_COOKIES
export PRESERVE_ORIGINAL
export FPS
export CONVERTERS_AUDIO
export CONVERTERS_VIDEO
export YTDLP_ARGS_MUSIC
export YTDLP_ARGS_AUDIO
export YTDLP_ARGS_VIDEO