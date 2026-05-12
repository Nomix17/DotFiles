path="$HOME/Pictures/Screenshots/ocr.png"
scrot -s "$path"
text=$(tesseract "$path" - 2>/dev/null)
echo "$text"
if [ -n "$text" ]; then
  echo "$text" | xsel --clipboard --input
fi
rm "$path"

