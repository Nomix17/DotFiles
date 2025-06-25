devicename=$(adb shell getprop ro.product.model)
dumpdir="$HOME/.dumpeddata/$devicename"
mkdir -p "$dumpdir"
adb pull /sdcard/DCIM "$dumpdir/DCIM"
adb pull /sdcard/Pictures "$dumpdir/Pictures"
adb pull /sdcard/Documents "$dumpdir/Documents"
adb pull /sdcard "$dumpdir/"

