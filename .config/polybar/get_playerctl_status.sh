#!/bin/bash

STATUS=$(playerctl --player=playerctld status 2> /dev/null)
EXIT_CODE=$?

if [ $EXIT_CODE = 0 ]; then
    echo $STATUS
else
    echo "No player is running"
fi
