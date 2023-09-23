#!/bin/sh

grep -v "#" ~/.config/bashrc/scripts/emoji/unicode.emoji | dmenu -i -l 15 -fn Monospace-20 | awk '{print $1}' | tr -d '\n' | xclip -selection clipboard
