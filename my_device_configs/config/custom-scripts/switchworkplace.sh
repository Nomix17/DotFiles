processnumber=$(ps aux | grep -E 'lutris|steam' | wc -l)

if [ "$processnumber" -gt 1 ]; then

  echo "workplace1"
  i3-msg workspace 1

else

  echo "normal workplace"
  i3-msg workspace next

fi
