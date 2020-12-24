#!/bin/bash

# mangkoran's startup apps
~/.screenlayout/screenlayout.sh &
~/.fehbg &
xsetroot -cursor_name left_ptr
xinput --set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1
# picom -b
# picom -b --experimental-backends
redshift &
unclutter --timeout 2 &
discord &
telegram-desktop -scale 90 &
# ~/.gdfuse/automount.sh &
sleep 1 && ~/.config/polybar/launch.sh
