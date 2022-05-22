#!/bin/bash

unclutter &
picom --experimental-backends --backend glx &
~/.fehbg &
touchpad_toggle.sh &
dunst &

status-monitor &

hash st && st -e tmux new-session &
$BROWSER &
exec dwm
