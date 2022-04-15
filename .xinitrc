#!/bin/bash

unclutter &
xcompmgr -n &
~/.fehbg &
touchpad_toggle.sh &
dunst &

status-monitor &

exec dwm
