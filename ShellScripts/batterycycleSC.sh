#!/bin/zsh
# Description: Record the battery cycles in logs. This script is for shortcut.

date >> ~/logs/batterycycle.log

STA=$(pmset -g rawbatt | sed '2 q' | sed '1 d' | awk '{print $1}')
if [ "$STA" = "No" ]; then
    pmset -g rawbatt | sed '2 q' | sed '1 d' | awk '{print " Battery: " $11}' >> ~/logs/batterycycle.log
elif [ "$STA" = "AC;" ]; then
	cha=$(pmset -g rawbatt | sed '2 q' | sed '1 d' | awk '{print $2}')
	if [ "$cha" = "Not" ]; then
	    pmset -g rawbatt | sed '2 q' | sed '1 d' | awk '{print " Battery: " $10}' >> ~/logs/batterycycle.log
	elif [ "$cha" = "Charging;" ]; then
	    pmset -g rawbatt | sed '2 q' | sed '1 d' | awk '{print " Battery: " $9}' >> ~/logs/batterycycle.log
	fi
fi
