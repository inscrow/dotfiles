if status is-interactive
	# aliases
	alias dots "/usr/bin/git --git-dir=$HOME/dots --work-tree=$HOME"
	complete dots --wraps git
	alias ls "ls --color=always"
	alias qutec "$EDITOR ~/.config/qutebrowser/config.py"
	alias spc "$EDITOR ~/.config/startpage/index.html"
	alias src "source ~/.config/fish/config.fish"
	alias v "nvim"
	alias vc "$EDITOR ~/.config/nvim/init.vim"

	# greeter function
	function fish_greeting
		set color "\033[48;2;189;133;106m"
		echo -e "$color ゲンガー \033[0m"
	end
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
