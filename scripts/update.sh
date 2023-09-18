#!/bin/bash

[ -d $HOME/.config/yay ] && sudo pacman -Syu && yay -Sua && yay -Pww || echo "not possible"
