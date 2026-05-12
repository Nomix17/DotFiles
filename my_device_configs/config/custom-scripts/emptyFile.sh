#!/bin/bash
mkdir -p /tmp/emptiedFile
cp "$1" /tmp/emptiedFile/

if [ "$XDG_SESSION_TYPE" = "x11" ]; then
  cat "$1" | xclip -selection clipboard
elif [ "$XDG_SESSION_TYPE" = "wayland" ]; then
  cat "$1" | wl-copy
fi

echo "" > "$1"
