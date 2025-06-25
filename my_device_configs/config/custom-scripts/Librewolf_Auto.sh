#!/bin/bash

librewolf &

for i in {1..20}; do
    wid=$(wmctrl -l | grep "LibreWolf" | awk '{print $1}')
    
    if [[ -n "$wid" ]]; then
        i3-msg "[id=\"$wid\"] move scratchpad"
        exit 0
    fi
    
    sleep 0.5
done

echo "LibreWolf window not found after waiting"
exit 1

