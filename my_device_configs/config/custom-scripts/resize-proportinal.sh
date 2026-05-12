#!/bin/sh
id=$(i3-msg -t get_tree | jq '.. | select(.focused? == true).window')
geom=$(xwininfo -id $id | awk '/Width|Height/ {print $2}')
w=$(echo $geom | awk '{print $1}')
h=$(echo $geom | awk '{print $2}')
factor=0.05
if [ "$1" = "shrink" ]; then factor=$(echo "-$factor" | bc); fi
dw=$(printf "%.0f" "$(echo "$w * $factor" | bc)")
dh=$(printf "%.0f" "$(echo "$h * $factor" | bc)")
i3-msg "resize grow width $dw px"
i3-msg "resize grow height $dh px"
