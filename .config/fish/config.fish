if status is-interactive
	# for aliases, look in ./functions directory
	# greeter function
	# function fish_greeting
	# 	set color "\033[48;2;189;133;106m"
	# 	echo -e "$color ゲンガー \033[0m"
	# end
	set fish_greeting # disable greeter

	zoxide init fish | source
end

if status --is-login
	set -gx PATH ~/.local/bin $PATH
	set -gx EDITOR nvim
	set -gx BROWSER qutebrowser

	# to make android studio work
	set -gx _JAVA_AWT_WM_NONREPARENTING 1

	# color manpages
	set -xU MANPAGER 'less -R --use-color -Dd+r -Du+b'
	
	# start X at login
	if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
		exec startx -- -keeptty
	end
end
