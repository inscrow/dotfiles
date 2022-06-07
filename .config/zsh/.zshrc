# completion
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' \
	'+l:|?=** r:|?=**'

# aliases
setopt complete_aliases
alias dots='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
alias gokyo='$EDITOR ~/docs/go-kyo-no-waza.txt'
alias gotour='$HOME/go/bin/tour'
alias gtypist='gtypist -c 1,7'
alias ls='ls --color=always'
alias qutec='$EDITOR ~/.config/qutebrowser/config.py'
alias rd=rmdir
alias spc='$EDITOR ~/.config/startpage/index.html'
alias src='source ~/.config/zsh/.zshrc'
alias t="tmux list-sessions && tmux attach || tmux"
alias v=nvim
alias vd='$EDITOR ~/.config/nvim/init.vim'

# change dir without cd
setopt autocd

# prompt customization
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats ' %s(%F{red}%b%f)'
precmd() { vcs_info }
setopt prompt_subst
PROMPT='<>{ %B%F{red}%1~%f${vcs_info_msg_0_}%b }<> '

# enable zoxide
eval "$(zoxide init zsh)"

# enable line editing in $EDITOR
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^E" edit-command-line

# functions
function img2wall {
	convert "$1" -resize 1366x768^ -gravity center \
		-extent 1366x768 wall-"${1/\.*}".png
}

function mangapdf {
	CHAPTER="$1"
	PDF_TITLE="$(echo "$1" | tr '/' '_').pdf"
	cd "$HOME/docs/Manga/$CHAPTER"
	convert $(ls | sort -n) $PDF_TITLE
	zathura $HOME/docs/Manga/$CHAPTER/$PDF_TITLE
	cd -
}

# start tmux session in a specified dir and set
function ts {
	TRGT_DIR="$1"
	TRGT_NAME=$(basename "$TRGT_DIR")
	tmux new -d -s "$TRGT_NAME" -c "$TRGT_DIR"
	[ "x$TMUX" = "x" ] || tmux switchc -t "$TRGT_NAME" && tmux attach -t "$TRGT_NAME"
}
