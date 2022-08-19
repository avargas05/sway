#!/bin/sh
# Turns the screen off and puts to background
swayidle \
  timeout 10 'swaymsg "output * dpms off"' \
  resume 'swaymsg "output * dpms on"' &

# Locks the screen immediately
swaylock -c 333333

# Kills the background task so idle timer doesn't keep running
kill %%
