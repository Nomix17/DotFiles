#!/usr/bin/env bash

DEST="$HOME/.adb_dump"
mkdir -p "$DEST"

dirs=(
    "/sdcard/Pictures"
    "/sdcard/Documents"
    "/sdcard/Download"
    "/sdcard/DCIM"
    "/sdcard/Music"
    "/sdcard/Movies"
    "/sdcard/Recordings"
    "/sdcard/Android/data"
)

for dir in "${dirs[@]}"; do
    if [ "$1" == "log" ]; then
        echo "Pulling $dir..."
        adb pull "$dir" "$DEST/"
    else
        adb pull "$dir" "$DEST/" > /dev/null 2>&1
    fi
done

if [ "$1" == "log" ]; then
    echo "Finished!"
fi
