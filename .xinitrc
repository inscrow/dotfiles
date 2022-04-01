#!/bin/bash

picom --experimental-backend --blur-background --blur-method="kawase" &
~/.fehbg &
touchpad_toggle.sh &
dunst &

status-monitor &

exec dwm
