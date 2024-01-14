#!/bin/sh

parameter="$1"
dir="$2"
temp_png="$HOME/Pictures/Screenshots/screen_$(date +'%F_%H-%M-%S').png"

case "$parameter" in
  "clipboard"|"clip")
    scrot "$temp_png" && xclip -selection clipboard -t image/png "$temp_png" && rm -fr "$temp_png"
    exit 0
    ;;
  "save")
    scrot "$dir"
    exit 0
    ;;
  "")
    scrot "$temp_png"
    exit 0
    ;;
  *)
esac

exit 1
