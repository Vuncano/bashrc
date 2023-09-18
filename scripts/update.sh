#!/bin/sh

# [ -d $HOME/.config/yay ] && sudo pacman -Syu && sleep 1 && yay -Sua && sleep 1 && yay -Pww || echo "not possible"

sudo pacman -Syu || pacman -Syu || echo " "; echo "not possible to update pacman packages"

[ -d $HOME/.config/yay ] && echo " "; read -p"do you want to update yay packages? [y / n] " yay_yes
[ ${yay_yes} = y ] && yay -Sua || echo " "; echo "not possible to update yay packages"

[ -d $HOME/.config/yay ] && echo " "; read -p"do you want to see the arch linux news page? [y / n] " news_yes
[ ${news_yes} = y ] && yay -Pww
