#!/bin/sh

notf=0

while :
do
  
  checkbat=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}' | tr -d '%\n')
  
  ischarching=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state | awk '{print $2}' | tr -d '\n')


  if [ "$ischarching" == "discharging" ] && [ $notf -eq 0 ]; then
    [ "$checkbat" -le 15 ] && zenity --warning --text="low battery level: $(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}' | tr -d '\n')" && notf=1
  fi

  if [ "$ischarching" == "charging" ]; then
    notf=0
  fi

  sleep 180
done
