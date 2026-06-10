#!/bin/bash
# This script moves current window to a screen edge
# -t => top
# -b => bottom
# -l => left
# -r => right
# ex: i3-move-win-to-edge -t
usage() {
  echo "Usage: $0 [-t] [-b] [-l] [-r]" 1>&2; exit 1;
}
top_offset=50
bottom_offset=9
left_offset=7
right_offset=7
window_border=1
all_info=`xwininfo -id $(xdotool getactivewindow)`
window_x=`echo "$all_info" | sed -n -e "s/^ \+Absolute upper-left X: \+\([0-9]\+\).*/\1/p"`
window_y=`echo "$all_info" | sed -n -e "s/^ \+Absolute upper-left Y: \+\([0-9]\+\).*/\1/p"`
window_width=`echo "$all_info" | sed -n -e "s/^ \+Width: \+\([0-9]\+\).*/\1/p"`
window_height=`echo "$all_info" | sed -n -e "s/^ \+Height: \+\([0-9]\+\).*/\1/p"`
screen_dimensions=`xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+x[0-9]+).*$/\1/'`
screen_width=`echo "$screen_dimensions" | cut -d'x' -f1`
screen_height=`echo "$screen_dimensions" | cut -d'x' -f2`

moveTo() {
  result=`i3-msg move position $1 px $2 px 2>&1`
  if echo "$result" | grep -q "not floating"; then
    case "$3" in
      t) i3-msg move up ;;
      b) i3-msg move down ;;
      l) i3-msg move left ;;
      r) i3-msg move right ;;
    esac
  fi
}
clamp() {
  echo $(( $1 < 0 ? 0 : $1 ))
}
while getopts tblr o; do
  case "${o}" in
    t)
      moveTo $(clamp $(( window_x - window_border ))) $(clamp $(( top_offset - window_border ))) t
      ;;
    b)
      moveTo $(clamp $(( window_x - window_border ))) $(( screen_height - window_height - bottom_offset )) b
      ;;
    l)
      moveTo $(clamp $(( left_offset - window_border ))) $(clamp $(( window_y - window_border ))) l
      ;;
    r)
      moveTo $(( screen_width - window_width - window_border - window_border - right_offset )) $(clamp $(( window_y - window_border ))) r
      ;;
    *)
      usage
      ;;
  esac
done
shift "$((OPTIND-1))"
