#!/bin/sh

read -p "Hour:" hour_input
read -p "Minute:" minute_input
read -p "Day:" day_input

while :
do

  hour_system="$(date +'%H')"
  minute_system="$(date +'%M')"
  day_system="$(date +'%d')"
  
  if [ "$day_system" -eq "$day_input" ]; then
    if [ "$hour_system" -ge "$hour_input" ]; then
      if [ "$minute_system" -ge "$minute_input" ]; then
        while :
        do
          mplayer alarm.mp3
          sleep 60
        done
      fi
    fi
  fi

  sleep 60

done
