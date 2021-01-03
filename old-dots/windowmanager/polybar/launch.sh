#!/bin/bash
killall polybar
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload top-left &
done


MONITOR0="eDP-1"
MONITOR1="HDMI-1"
MONITOR2="DP-2"

MONITOR=$MONITOR0 polybar --reload top-right &
MONITOR=$MONITOR0 polybar --reload top-center &
MONITOR=$MONITOR1 polybar --config=$HOME/.dotfiles/windowmanager/polybar/monitor-1.config --reload top-center &
MONITOR=$MONITOR2 polybar --reload top-center &
