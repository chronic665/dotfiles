#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#THEME=daftpunk-black
#THEME=space
#THEME=c64
#THEME=chronic
#ETH_IF=enp0s31f6
ETH_IF=enp0s20f0u2
WIRELESS=wlp2s0

# Launch bar1 and bar2
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m ETH_IF=$ETH_IF WIRELESS=$WIRELESS polybar --reload -c ~/.i3/polybar/themes/$THEME/polybar top &
    MONITOR=$m polybar --reload -c ~/.i3/polybar/themes/$THEME/polybar bottom &
done

echo "Bars launched..."
