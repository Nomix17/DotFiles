picname=~/.config/swaylock/lockpicture.png
grim "$picname"

convert $picname -blur 0x8 $picname

swaylock -C ~/.config/swaylock/mocha.conf
