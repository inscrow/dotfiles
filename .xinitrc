#!/bin/bash

unclutter &
picom --experimental-backends --backend glx &
~/.fehbg &
touchpad_toggle.sh &
dunst &

status-monitor &

exec dwm
