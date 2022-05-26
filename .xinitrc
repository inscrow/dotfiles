#!/bin/bash

unclutter &
xcompmgr -n &
~/.fehbg &
touchpad_toggle.sh &
dunst &

status-monitor &

hash st && st -e tmux new-session &
$BROWSER &
exec dwm
