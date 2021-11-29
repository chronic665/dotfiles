#!/bin/sh
# Times the screen off and puts it to background
swayidle \
    timeout 10 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &
# Locks the screen immediately
#swaylock -c 222222 --clock --indicator --screenshots --effect-scale 0.4 --effect-vignette 0.2:0.5 --effect-blur 4x2 --datestr "%a %e.%m.%Y" --timestr "%k:%M"
swaylock -e -f -i ~/.config/sway/arch_linux-wallpaper-1920x1080.jpg
# Kills last background task so idle timer doesn't keep running
kill %%