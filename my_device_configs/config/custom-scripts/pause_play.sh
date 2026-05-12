playing=0
for p in $(playerctl -l); do
  if [ "$(playerctl -p "$p" status)" = "Playing" ]; then
    playing=1
    break
  fi
done

if [ $playing -eq 1 ]; then
  for p in $(playerctl -l); do playerctl -p "$p" pause; done
else
  for p in $(playerctl -l); do playerctl -p "$p" play; done
fi
