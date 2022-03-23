#!/bin/bash

xcompmgr -cf &
~/.fehbg &
touchpad_toggle.sh &
dunst &

status-monitor &

exec dwm
