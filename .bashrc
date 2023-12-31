# documentation on ble.sh https://github.com/akinomyoga/ble.sh

#
# ~/.bashrc
#

# If not running interactively, don't do anything

set -o vi
bind 'set completion-ignore-case on'

#changes what terminal shows b4 the cousor
export PS1="[\u@\e[0;34mVuncano\e[m \W]\$"


#pretty stuff

# neofetch --disable packages 
# neofetch --ascii_distro arch_small --distro_shorthand on --gpu_type dedicated --disable theme icons resolution model term title underline packages kernel --color_blocks off --os_arch off


# Define a few Color's
BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
PURPLE='\e[0;35m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
LIGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
NC='\e[0m'              # No Color
# Sample Command using color: echo -e "${CYAN}This is BASH
#${RED}${BASH_VERSION%.*}${CYAN} - DISPLAY on ${RED}$DISPLAY${NC}\n"

#alias
alias sv="sudo vim"
alias v="vim"
alias sdn="shutdown now"
alias rb="reboot"
alias lsall="ls -a"
alias battery="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
alias nvd="nvim ."
alias nv="nvim"
alias snv="sudo nvim"
alias snvd="sudo nvim ."
alias nvf="fd --type f --hidden --exclude .git | sk-tmux --reverse --height 25% --preview='head -$LINES {}' | xargs -r nvim"

alias ls='ls --color=auto --group-directories-first'
alias mkdir="mkdir -v"
alias rm="rm --verbose"
alias cp="cp -v"


#japanese stuff
export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'


# functions

# xkeys(){
#   xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'
# }
#

# Default programs
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="qutebrowser"
export READER="zathura"
export FILE="pcmanfm"



HISTSIZE=20000
HISTFILESIZE=20000


source ~/.local/share/blesh/ble.sh
