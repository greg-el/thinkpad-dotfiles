#!/bin/bash
STATUS=$(playerctl status 2>&1)
if [[ "$STATUS" = "No players found" ]]; then
    echo -n ""
else
    if [[ "$STATUS" = "Playing" ]]; then
        echo -n $(playerctl metadata title && echo -n " - " && playerctl metadata artist)
    else 
        echo -n "no music playing"
    fi
fi