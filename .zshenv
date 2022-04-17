# change zsh directory to ~/.config/zsh
export ZDOTDIR="$HOME/.config/zsh/"

export PATH="$HOME/.local/bin:$PATH"
export EDITOR="nvim"
export BROWSER="qutebrowser"

# to make android studio work
export _JAVA_AWT_WM_NONREPARENTING=1

# color manpages
export MANPAGER="less -R --use-color -Dd+r -Du+b"

# avoid loading 2 configurations of ranger
export RANGER_LOAD_DEFAULT_RC="FALSE"
