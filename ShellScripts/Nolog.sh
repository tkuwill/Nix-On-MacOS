#!/bin/zsh
# Description: Check if ~/logs is here or not. If it is not in ~, create one. This script is for automator.

cd 

STA=$(ls | grep 'logs')
if [ "$STA" = "logs" ]; then
    sleep 1
elif [ "$STA" = "" ]; then
   mkdir -p ~/logs 
fi
