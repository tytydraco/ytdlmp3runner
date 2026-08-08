#!/usr/bin/env bash
# shellcheck disable=SC2016

YOUTUBE_SUBSCRIPTIONS=(
    "https://www.youtube.com/channel/UCOHxDwCcOzBaLkeTazanwcw/videos"
    "https://www.youtube.com/channel/UCdBXOyqr8cDshsp7kcKDAkg/videos"
    "https://www.youtube.com/channel/UConVfxXodg78Tzh5nNu85Ew/videos"
    "https://www.youtube.com/channel/UCHnyfMqiRRG1u-2MsSQLbXA/videos"
    "https://www.youtube.com/channel/UCsBjURrPoezykLs9EqgamOA/videos"
    "https://www.youtube.com/channel/UCEIwxahdLz7bap-VDs9h35A/videos"
    "https://www.youtube.com/channel/UC6107grRI4m0o2-emgoDnAA/videos"
    "https://www.youtube.com/channel/UC7_YxT-KID8kRbqZo7MyscQ/videos"
    "https://www.youtube.com/channel/UC9RM-iSvTu1uPJb8X5yp3EQ/videos"
    "https://www.youtube.com/channel/UCSp-OaMpsO8K0KkOqyBl7_w/videos"
    "https://www.youtube.com/channel/UC1LpsuAUaKoMzzJSEt5WImw/videos"
    "https://www.youtube.com/channel/UCn_FAXem2-e3HQvmK-mOH4g/videos"
    "https://www.youtube.com/channel/UCNXFypYuT8l_G7Q-mCmAKTg/videos"
    "https://www.youtube.com/channel/UCpIafFPGutTAKOBHMtGen7g/videos"
    "https://www.youtube.com/channel/UCFKDEp9si4RmHFWJW1vYsMA/videos"
    "https://www.youtube.com/channel/UC1D3yD4wlPMico0dss264XA/videos"
    "https://www.youtube.com/channel/UCaTznQhurW5AaiYPbhEA-KA/videos"
    "https://www.youtube.com/channel/UCBa659QWEk1AI4Tg--mrJ2A/videos"
    "https://www.youtube.com/channel/UCgv4dPk_qZNAbUW9WkuLPSA/videos"
    "https://www.youtube.com/channel/UC_mYaQAE6-71rjSN6CeCA-g/videos"
    "https://www.youtube.com/channel/UCb0MyY46T9ZYOzDHkYnIoXg/videos"
    "https://www.youtube.com/channel/UCJ0-OtVpF0wOKEqT2Z1HEtA/videos"
    "https://www.youtube.com/channel/UCaGev0JRG7Dp5c_R4ROADLw/videos"
    "https://www.youtube.com/channel/UCrEAQx48oTZy7f9ZWsDawKg/videos"
    "https://www.youtube.com/channel/UCoxcjq-8xIDTYp3uz647V5A/videos"
    "https://www.youtube.com/channel/UCeTfBygNb1TahcNpZyELO8g/videos"
    "https://www.youtube.com/channel/UCY1kMZp36IQSyNx_9h4mpCg/videos"
    "https://www.youtube.com/channel/UC9-y-6csu5WGm29I7JiwpnA/videos"
    "https://www.youtube.com/channel/UCtPrkXdtCM5DACLufB9jbsA/videos"
    "https://www.youtube.com/channel/UC2avWDLN1EI3r1RZ_dlSxCw/videos"
    "https://www.youtube.com/channel/UCIZ5ZOeiXYbmKTl_85ghNPw/videos"
    "https://www.youtube.com/channel/UCSPLhwvj0gBufjDRzSQb3GQ/videos"
    "https://www.youtube.com/channel/UCy0tKL1T7wFoYcxCe0xjN6Q/videos"
    "https://www.youtube.com/channel/UCCXq_iM-YNIjX_lkyBIl4Sg/videos"
    "https://www.youtube.com/channel/UCKzJFdi57J53Vr_BkTfN3uQ/videos"
    "https://www.youtube.com/channel/UCrx2zrPjhGRi9TwszZiLwEg/videos"
    "https://www.youtube.com/channel/UCYO_jab_esuFRV4b17AJtAw/videos"
    "https://www.youtube.com/channel/UCYwVxWpjeKFWwu8TML-Te9A/videos"
    "https://www.youtube.com/channel/UCac1MisHGa0qtzf0oWlU8Zw/videos"
    "https://www.youtube.com/channel/UCR1IuLEqb6UEA_zQ81kwXfg/videos"
    "https://www.youtube.com/channel/UCMX31RavkfUHJvw03RbUZnA/videos"
    "https://www.youtube.com/channel/UCMOqf8ab-42UUQIdVoKwjlQ/videos"
    "https://www.youtube.com/channel/UCaSmDhQNWPogseoH-rRtEoA/videos"
    "https://www.youtube.com/channel/UCfCa5YJQHphJNmHNzCXHdKw/videos"
    "https://www.youtube.com/channel/UCPOv_c7pdPxidIVmp2SXwFA/videos"
    "https://www.youtube.com/channel/UCshObcm-nLhbu8MY50EZ5Ng/videos"
    "https://www.youtube.com/channel/UCh1zLfuN6F_X4eoNKCsyICA/videos"
    "https://www.youtube.com/channel/UC5Obl4eU2zVQwuXv91mypeQ/videos"
    "https://www.youtube.com/channel/UCgmI-uiLLAg--vDe7FFdekA/videos"
    "https://www.youtube.com/channel/UCtscFf8VayggrDYjOwDke_Q/videos"
    "https://www.youtube.com/channel/UCNbxzUq4EKZfmp4FdJbs9OA/videos"
    "https://www.youtube.com/channel/UCNEs6RmBQwQrr39RmDCDa8A/videos"
    "https://www.youtube.com/channel/UCoDmZirW1o9XSKSRM6YJ1rQ/videos"
    "https://www.youtube.com/channel/UC797fsP6okMRGNKEo6eiVYQ/videos"
    "https://www.youtube.com/channel/UCQoJIigcorV_0MQ7-A9kg7A/videos"
    "https://www.youtube.com/channel/UCaSCt8s_4nfkRglWCvNSDrg/videos"
    "https://www.youtube.com/channel/UCmtyQOKKmrMVaKuRXz02jbQ/videos"
    "https://www.youtube.com/channel/UCfMJ2MchTSW2kWaT0kK94Yw/videos"
    "https://www.youtube.com/channel/UCvFApMFo_AafXbHRyEJefjA/videos"
    "https://www.youtube.com/channel/UCtJPeNYnAXhB1-_h8xbIX_Q/videos"
    "https://www.youtube.com/channel/UCt-HTfaCUz8QIoknqyXKYiw/videos"
    "https://www.youtube.com/channel/UCcf4LQogGFtYzPhq05uHE4g/videos"
    "https://www.youtube.com/channel/UCbCq5Y0WPGimG2jNXhoQxGw/videos"
    "https://www.youtube.com/channel/UCVSHXNNBitaPd5lYz48--yg/videos"
    "https://www.youtube.com/channel/UCVovvq34gd0ps5cVYNZrc7A/videos"
    "https://www.youtube.com/channel/UCuUHDELv0TZM7VeDchmZrFQ/videos"
    "https://www.youtube.com/channel/UCMOoG4xb3o0XfG0DcQUkO4Q/videos"
    "https://www.youtube.com/channel/UCS0N5baNlQWJCUrhCEo8WlA/videos"
    "https://www.youtube.com/channel/UC1DTYW241WD64ah5BFWn4JA/videos"
    "https://www.youtube.com/channel/UC9KvrhhUgAfO0nZUlhA6foA/videos"
    "https://www.youtube.com/channel/UCK8XIGR5kRidIw2fWqwyHRA/videos"
    "https://www.youtube.com/channel/UCXgNowiGxwwnLeQ7DXTwXPg/videos"
    "https://www.youtube.com/channel/UCBNG0osIBAprVcZZ3ic84vw/videos"
    "https://www.youtube.com/channel/UC67gfx2Fg7K2NSHqoENVgwA/videos"
    "https://www.youtube.com/channel/UCfsznjef2zGJnrCRQBXqo6Q/videos"
    "https://www.youtube.com/channel/UC-7nELDbJEPF3muAzSeT74g/videos"
    "https://www.youtube.com/channel/UCR6LasBpceuYUhuLToKBzvQ/videos"
    "https://www.youtube.com/channel/UC8E-9dGUWPvgbvqxQOeXUZA/videos"
    "https://www.youtube.com/channel/UCNIuvl7V8zACPpTmmNIqP2A/videos"
    "https://www.youtube.com/channel/UC9PIn6-XuRKZ5HmYeu46AIw/videos"
    "https://www.youtube.com/channel/UCj1VqrHhDte54oLgPG4xpuQ/videos"
    "https://www.youtube.com/channel/UC0e3QhIYukixgh5VVpKHH9Q/videos"
    "https://www.youtube.com/channel/UCRcgy6GzDeccI7dkbbBna3Q/videos"
    "https://www.youtube.com/channel/UCQMjMW-9PhWoH6TWwmnVWvA/videos"
    "https://www.youtube.com/channel/UCFAiFyGs6oDiF1Nf-rRJpZA/videos"
    "https://www.youtube.com/channel/UCR1D15p_vdP3HkrH8wgjQRw/videos"
    "https://www.youtube.com/channel/UC8pmIe5FjmYlwP0Uf2dyQXQ/videos"
    "https://www.youtube.com/channel/UC-_S--EQgZGmYJHB-uc2CRg/videos"
    "https://www.youtube.com/channel/UC81tTA6P5bbfimo22OeR70Q/videos"
    "https://www.youtube.com/channel/UClq42foiSgl7sSpLupnugGA/videos"
    "https://www.youtube.com/channel/UClFLXO6ecX-ucJp9gGJYiDw/videos"
    "https://www.youtube.com/channel/UCZiqc1Zq_1TYr8wRlCpx-Qg/videos"
    "https://www.youtube.com/channel/UCPaaxgKnxD6R0qqNPE5NSlQ/videos"
    "https://www.youtube.com/channel/UCAL3JXZSzSm8AlZyD3nQdBA/videos"
    "https://www.youtube.com/channel/UCkaVUGLDZdSiel21lH5yRug/videos"
    "https://www.youtube.com/channel/UCp4oMaqaY0hIoT9jafj1g8g/videos"
    "https://www.youtube.com/channel/UCFMVTkKDPWwCtV6o-ZmHJoQ/videos"
    "https://www.youtube.com/channel/UCoo8qQwz4w_rZXlA6orVp9g/videos"
    "https://www.youtube.com/channel/UCSAUGyc_xA8uYzaIVG6MESQ/videos"
    "https://www.youtube.com/channel/UCvGMGQC8gNkd4gwxSbABIlw/videos"
    "https://www.youtube.com/channel/UCMpizQXRt817D0qpBQZ2TlA/videos"
    "https://www.youtube.com/channel/UCeQEKFH31vvD-InkTGSvCrA/videos"
    "https://www.youtube.com/channel/UC1_uAIS3r8Vu6JjXWvastJg/videos"
    "https://www.youtube.com/channel/UCrMePiHCWG4Vwqv3t7W9EFg/videos"
    "https://www.youtube.com/channel/UCsxNbiFg17QgIl1vYNHEBsA/videos"
    "https://www.youtube.com/channel/UC5k3Kc0avyDJ2nG9Kxm9JmQ/videos"
    "https://www.youtube.com/channel/UC6nSFpj9HTCZ5t-N3Rm3-HA/videos"
    "https://www.youtube.com/channel/UCqmugCqELzhIMNYnsjScXXw/videos"
    "https://www.youtube.com/channel/UCwmFOfFuvRPI112vR5DNnrA/videos"
    "https://www.youtube.com/channel/UCXjOE2rifvhbcaGFgC-3tjg/videos"
    "https://www.youtube.com/channel/UCOYWgypDktXdb-HfZnSMK6A/videos"
    "https://www.youtube.com/channel/UCA8ajCp4jw4z3UzjPmQsTjg/videos"
    "https://www.youtube.com/channel/UCafjCzkyUMcho894c_JRv2A/videos"
    "https://www.youtube.com/channel/UCShx17I3QA396dGPxCMTJvQ/videos"
    "https://www.youtube.com/channel/UCNWoF63cvwiY5AwioiFs6lQ/videos"
    "https://www.youtube.com/channel/UCQG40havu4kNpB4pxUDQhYQ/videos"
    "https://www.youtube.com/channel/UCJLoMm3XdBoMnQrKoboRkPA/videos"
    "https://www.youtube.com/channel/UCiNLr9wX35KksK77mrQgxiw/videos"
    "https://www.youtube.com/channel/UC2C_jShtL725hvbm1arSV9w/videos"
    "https://www.youtube.com/channel/UCSju5G2aFaWMqn-_0YBtq5A/videos"
    "https://www.youtube.com/channel/UCUMwY9iS8oMyWDYIe6_RmoA/videos"
    "https://www.youtube.com/channel/UC8Q7XEy86Q7T-3kNpNjYgwA/videos"
    "https://www.youtube.com/channel/UC-k1VD5K6kwizjhg-HKj1rw/videos"
    "https://www.youtube.com/channel/UCCWeRTgd79JL0ilH0ZywSJA/videos"
    "https://www.youtube.com/channel/UCFhXFikryT4aFcLkLw2LBLA/videos"
    "https://www.youtube.com/channel/UCpFFItkfZz1qz5PpHpqzYBw/videos"
    "https://www.youtube.com/channel/UC7Ucs42FZy3uYzjrqzOIHsw/videos"
    "https://www.youtube.com/channel/UCl_dlV_7ofr4qeP1drJQ-qg/videos"
    "https://www.youtube.com/channel/UC1UIj7Y9SphX5GuoG2e94XQ/videos"
    "https://www.youtube.com/channel/UCAeVgWS2TuufFgdrAEjhNFw/videos"
    "https://www.youtube.com/channel/UCYhzyDH0vGmebTHP2_vla9Q/videos"
    "https://www.youtube.com/channel/UCkitABalXafr-NqceQdDXtg/videos"
    "https://www.youtube.com/channel/UCaYhcUwRBNscFNUKTjgPFiA/videos"
    "https://www.youtube.com/channel/UCnHX5FjwtQpxkCGziuh4NJA/videos"
)

# URLs to download (music):
URLS_MUSIC=()

# URLs to download (audio):
URLS_AUDIO=()

# URLs to download (video):
URLS_VIDEO=("${YOUTUBE_SUBSCRIPTIONS[@]}")

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
CONVERTERS_VIDEO=(
    "convert_video_uid0004"
    "convert_video_uid0016"
    "convert_video_uid0017"
)

# Download configurations for yt-dlp:
COOKIES_FILE="cookies.txt"
DATE_CUTOFF=$(date -d '1 day ago' '+%Y%m%d')
YTDLP_ARGS_MUSIC=()
YTDLP_ARGS_AUDIO=()
YTDLP_ARGS_VIDEO=(
    --extractor-args "youtube:player_client=default,web_embedded"
    --lazy-playlist
    --break-match-filters "upload_date >= $DATE_CUTOFF"
    # --match-filter "duration < 7200"
    # --sponsorblock-remove sponsor
    --ignore-errors
    --no-overwrites
    --download-archive .archivevideo
    --concurrent-fragments 3
    --cookies "$COOKIES_FILE"
    --windows-filenames
    --restrict-filenames
    --no-write-playlist-metafiles
    --mtime
    --format-sort "res:480"
    --output "$OUT_DIR_VIDEO/%(channel)s/%(upload_date)s.%(title)s.%(ext)s"
)

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