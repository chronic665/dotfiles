#!/bin/bash
#
# Dual monitor support

# TP config, just laptop 
# home config, just monitor


if xrandr | grep -q 'HDMI2 connected'
then
	xrandr --output HDMI2 --auto
fi

# TP config, laptop + 1 screen
if xrandr | grep -q 'eDP1 connected'
then
	echo "Setting TP setup"
	if xrandr | grep -q 'HDMI2 connected'
	then
		echo "setting double screen layout"
		xrandr --output eDP1 --auto --output HDMI2 --right-of eDP1
	else
		xrandr --output eDP1 --auto 
		echo "setting single screen layout"
	fi
fi

# MBP config, laptop + 2 screens
if xrandr | grep -q 'eDP-1 connected'
then
	echo "setting screens for MBP setup"
	if xrandr | grep -q 'DP-1 connected' && xrandr | grep -q 'DP-3 connected'
	then
		echo "setting triple screen layout"
#		xrandr --output eDP-1 --auto --output DP-1 --auto --left-of eDP-1 --output DP-3 --auto --left-of DP-1
		xrandr --output eDP-1 --mode 1920x1200 --output DP-3 --auto --left-of eDP-1 --output DP-1 --auto --left-of DP-3
	else
		echo "setting single screen layout"
#		xrandr --output eDP-1 --auto
		xrandr --output eDP-1 --auto
	fi

fi
