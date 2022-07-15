#!/bin/sh
#run xrandr - numbers change !!!
#xrandr --output DVI-I-1 --auto --left-of DVI-I-2
#xrandr --output DVI-I-0 --auto --left-of DVI-I-3
#xrandr --output DP-1 --right-of DP-3 --auto
#xrandr --output DP-1 --right-of eDP-1 --auto

#xrandr --output eDP-1 --mode 2880x1800+3840+0 --output DP-1 --auto --left-of eDP-1 --output DP-3 --auto --left-of DP-1
xrandr --output eDP-1 --auto --output DP-1 --auto --left-of eDP-1 --output DP-3 --auto --left-of DP-1