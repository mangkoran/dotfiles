xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

pgrep -x sxhkd > /dev/null || sxhkd &

~/.screenlayout/screenlayout.sh
~/.config/polybar/launch.sh
nitrogen --restore

picom -b & 
redshift &

discord &
telegram-desktop &
