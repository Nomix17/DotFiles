#!/bin/bash
librewolf &

while [ 1 ]; do
    wid=$(wmctrl -l | grep "LibreWolf" | awk '{print $1}')
    if [[ -n "$wid" ]]; then
        sleep 0.05
        i3-msg "[id=\"$wid\"] move scratchpad"
        exit 0
    fi
    
    sleep 0.01
done

echo "LibreWolf window not found after waiting"
exit 1

