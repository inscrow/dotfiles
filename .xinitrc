#!/bin/bash

unclutter &
xcompmgr &
touchpad_toggle.sh &
dunst &

status-monitor &

hash st && st -e tmux new-session &
$BROWSER &
feh --bg-fill ~/.config/wallpaper.png &
exec dwm
