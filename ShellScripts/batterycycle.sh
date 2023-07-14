#!/bin/zsh
# Description: Record the battery cycles in logs.

date >> ~/logs/batterycycle.log
pmset -g rawbatt | sed '2 q' | sed '1 d' | awk '{print " Battery: " $11}' >> ~/logs/batterycycle.log
bat ~/logs/batterycycle.log
