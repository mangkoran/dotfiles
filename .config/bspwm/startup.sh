#!/bin/bash

# mangkoran's startup script

# configs
eval "$(ssh-agent -s)" &
eval "$(opam env)" && ~/.gdfuse/automount.sh &
~/.screenlayout/screenlayout.sh &
~/.fehbg &
xsetroot -cursor_name left_ptr
xinput --set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1

# apps
# picom -b
# picom -b --experimental-backends
discord &
redshift &
telegram-desktop -scale 90 &
unclutter --timeout 2 &

sleep 3
~/.config/polybar/launch.sh &
