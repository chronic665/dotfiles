#!/usr/bin/env bash

# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Config
ETH_IF=ens8u1u1
WIRELESS=wlp2s0

# Launch polybar
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m ETH_IF=$ETH_IF WIRELESS=$WIRELESS polybar --reload -c ~/.config/polybar/themes/chronic/config.ini top &
    MONITOR=$m polybar --reload -c ~/.config/polybar/themes/chronic/config.ini bottom &
done