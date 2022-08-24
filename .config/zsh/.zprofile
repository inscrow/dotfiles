if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
	exec startx
fi
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty2" ]; then
	# run qt applications under wayland
	export QT_QPA_PLATFORM=wayland

	exec start-newm
fi
