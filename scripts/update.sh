#!/bin/bash

if [ -d $HOME/.config/yay ]
then
  sudo pacman -Syu && yay -Sua && yay -Pww
fi


