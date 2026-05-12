#!/bin/bash

mkdir -p ~/Pictures/Screenshots

picname=~/Pictures/Screenshots/Screenshot_from_$(date +"%Y-%m-%d__%H-%M-%S").png

if [ "$XDG_SESSION_TYPE" = "x11" ]; then
    if [ "$1" = "fullscreen" ]; then
        scrot -f "$picname"
    else
        scrot -f "$picname" -s
    fi
    notify-send "Screenshot taken $(basename $picname)"

elif [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    if [ "$1" = "fullscreen" ]; then
        grim "$picname"
    else
        grim -g "$(slurp)" "$picname"
    fi
fi
