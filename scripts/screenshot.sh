#!/bin/sh

parameter="$1"
dir="$2"
temp_png="$HOME/Pictures/screen_$(date +'%F_%H-%M-%S').png"

case "$parameter" in
  "clipboard"|"clip")
    scrot "$temp_png" && xclip -selection clipboard -t image/png "$temp_png" && rm -fr "$temp_png"
    ;;
  "save")
    scrot "$dir"
    ;;
  *)
esac
