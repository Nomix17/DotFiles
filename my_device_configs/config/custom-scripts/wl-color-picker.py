#!/usr/bin/env python3

import subprocess
from PIL import Image
import os

img_path = "/tmp/color_picker_img.png"
subprocess.run(["notify-send", "Color Picker", "Pick a pixel..."])

slurp_process = subprocess.run(
    ["slurp", "-p", "-f", "%x_%y"],
    stdout=subprocess.PIPE, stderr=subprocess.PIPE
)

if slurp_process.returncode != 0 or not slurp_process.stdout.strip():
    subprocess.run(["notify-send", "Color picker", "Selection cancelled"])
    raise SystemExit(1)

x_str, y_str = slurp_process.stdout.decode().strip().split("_")
x, y = int(x_str), int(y_str)

subprocess.run(["grim", "-l", "0", img_path], check=True)

SCALE = 1.25

x = int(x * SCALE)
y = int(y * SCALE)

img = Image.open(img_path).convert("RGB")
x = min(x, img.width - 1)
y = min(y, img.height - 1)

rgb = img.getpixel((x, y))
hex_color = f"#{rgb[0]:02x}{rgb[1]:02x}{rgb[2]:02x}"

subprocess.run(["wl-copy"], input=hex_color.encode())

subprocess.run(["notify-send", "Color picker", f"Copied {hex_color} to clipboard"])

os.remove(img_path)
