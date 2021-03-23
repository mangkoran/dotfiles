#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll --length 20 \
        --scroll-padding "   " \
        --match-command "$HOME/.config/polybar/get_playerctl_status.sh" \
        --match-text "Playing" "--before-text ' ' --length 20" \
        --match-text "Paused" "--before-text ' ' --length 20" \
        --update-interval 0.4 \
        --update-check true '/home/apiqnzr/.config/polybar/get_now_playing.sh' &
# playerctl metadata --format "{{ artist }} - {{ title }}" | tr -d '\n' | zscroll -l 20 -n false \
                                                                                # --match-command "playerctl --player=playerctld status" \
                                                                                # --match-text "Playing" "--scroll 1" \
                                                                                # --match-text "Paused" "--scroll 0" \
                                                                                # --update-check true \
                                                                                # --update-interval 1
#
# playerctl metadata --format "{{ artist }} - {{ title }}" | tr -d '\n' | zscroll -n false
wait

