#!/usr/bin/env bash
# shellcheck disable=SC2016

# URLs to download (music):
URLS_MUSIC=(
    # Pop/RnB/Rap.
    "https://music.youtube.com/playlist?list=PLteo-8G34jul5Sln0GHtsQlNQib92YYdL&si=a_sW8QYkCIBQlXJf"
    
    # EDM.
    "https://music.youtube.com/playlist?list=PLteo-8G34juniGo_247mk_bXPGUf9Cnc2&si=8uh28Vs4PGm9sDu6"

    # Punk Rock.
    "https://music.youtube.com/playlist?list=PLteo-8G34jukYU7YaMhCErqpqNEq5uzX7&si=_D93cLTYUQuekxlV"

    # Weird.
    "https://music.youtube.com/playlist?list=PLteo-8G34junJ7sZNWZgMbRDZa2S-ntLP&si=fo7ISCUJM3Hmd5-W"

    # Chill pop.
    "https://music.youtube.com/playlist?list=PLteo-8G34jukzDAUMjFlo3QIMtQh4mYWs&si=39Z1ticXBaC1ccs0"

    # Chill Everything.
    "https://music.youtube.com/playlist?list=PLteo-8G34jumBUYURk_VW3Uy-EpBQ4B2Z&si=RuY_NSFqIuY6OoFJ"
)

# URLs to download (audio):
URLS_AUDIO=()

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
YTDLP_ARGS_MUSIC=(
    --match-filter "availability=public"
    --lazy-playlist
    --playlist-end 20
    --ignore-errors
    --no-overwrites
    # --download-archive .archivemusic
    --concurrent-fragments 3
    --cookies "$COOKIES_FILE"
    --windows-filenames
    --restrict-filenames
    --no-write-playlist-metafiles
    --mtime
    --extract-audio
    --embed-metadata
    --audio-format mp3
    --audio-quality 0
    --format "bestaudio/best"
    --output "$OUT_DIR_MUSIC/%(playlist)s/%(playlist_index)05d.%(uploader)s.%(title)s.%(ext)s"
)
YTDLP_ARGS_AUDIO=()
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