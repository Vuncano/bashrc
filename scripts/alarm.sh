#!/bin/sh

read -p "Hour:" hour_input
read -p "Minute:" minute_input


while :
do

  hour_system="$(date +'%H')"
  minute_system="$(date +'%M')"
  
  if [ "$hour_system" -ge "$hour_input" ]; then
    if [ "$minute_system" -ge "$minute_input" ]; then
      while :
      do
        mplayer alarm.mp3
        sleep 30
      done
    fi
  fi

done
