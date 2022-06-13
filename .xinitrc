#!/bin/bash

unclutter &
# picom --experimental-backends --backend glx &
touchpad_toggle.sh &
dunst &

status-monitor &

hash st && st -e tmux new-session &
$BROWSER &
feh --bg-fill ~/.config/wallpaper.png &
exec dwm
