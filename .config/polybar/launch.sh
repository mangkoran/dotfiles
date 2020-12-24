#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch polybar
if type "xrandr"; then
  polybar primary &
  for m in $(xrandr --query | grep " connected" | grep -v " primary" | cut -d" " -f1); do
    MONITOR=$m polybar secondary &
  done
else
  polybar primary &
fi

# sleep 5
# xdo raise -n polybar
# echo $? > /home/apiqnzr/temp
