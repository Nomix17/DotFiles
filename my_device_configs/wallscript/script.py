import os
import time
from datetime import datetime

changed = True
morning = True

while True:
    hour = datetime.now().hour
    if 6 <= hour < 18:
        if not morning:
            changed = True
            morning = True
    else:
        if morning:
            changed = True
            morning = False

    if changed:
        if morning:
            os.system('gsettings set org.gnome.desktop.background picture-uri "~/.Wallpapers/morning.jpg"')
        else:
            os.system('gsettings set org.gnome.desktop.background picture-uri "~/.Wallpapers/night.jpg"')
        changed = False

    time.sleep(100)

