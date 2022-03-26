# prompt
PROMPT="}<> "
RPROMPT="%~:%n @ %m"

# aliases
alias dots="/usr/bin/git --git-dir=$HOME/dots --work-tree=$HOME"
alias ls="ls --color=always"
alias qutec="$EDITOR ~/.config/qutebrowser/config.py"
alias spc="$EDITOR ~/.config/startpage/index.html"
alias src="source ~/.zshrc"
alias v="$EDITOR"

# cd automatically
setopt AUTOCD

# start completion
autoload -Uz compinit && compinit

# case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
