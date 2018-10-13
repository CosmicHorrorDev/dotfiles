#!/bin/sh

muted=$(pamixer --sink 0 --get-mute)

if [ "$muted" = true ]; then
    echo ""
else
    volume=$(pamixer --sink 0 --get-volume)
    echo " $volume%"
fi
