#!/bin/bash

~/.fehbg &
touchpad_toggle.sh &
dunst &

status-monitor &

exec dwm
