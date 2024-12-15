#!/bin/sh

# This script should be ran at startup, to set up screens for awesome-wm
# It checks if two monitors are connected, and, in that case, runs xrandr
# The line of code can be generated / changed through arandr



if [[ $(xrandr | grep -sw 'connected' | wc -l) == "2" ]]; then
	echo "Two displays detected"
	xrandr --output eDP --mode 1920x1200 --pos 1920x435 --rotate normal --output HDMI-A-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DisplayPort-0 --off --output DisplayPort-1 --off --output DisplayPort-2 --off --output DisplayPort-3 --off --output DisplayPort-4 --off --output DisplayPort-5 --off --output DisplayPort-6 --off
fi
