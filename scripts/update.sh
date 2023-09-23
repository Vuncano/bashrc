#!/bin/sh

updatnum=$(checkupdates | wc -l)
  
if [ $updatnum -ge 1 ]; then
  sudo pacman -Syu || pacman -Syu
else 
  echo "no pacman updates"
fi

[ -d $HOME/.config/yay ] && echo " "; read -p"do you want to update yay packages? [y/n] " yay_yes
[ ${yay_yes} = y ] && yay -Sua || echo " "; echo "not possible to update yay packages"

[ -d $HOME/.config/yay ] && echo " "; read -p"do you want to see the arch linux news page? [y/n] " news_yes
[ ${news_yes} = y ] && yay -Pww
