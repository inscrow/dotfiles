# completion
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' \
	'+l:|?=** r:|?=**'

# aliases
alias dots='/usr/bin/git --git-dir=$HOME/dots --work-tree=$HOME'
alias ls='ls --color=always'
alias qutec='$EDITOR ~/.config/qutebrowser/config.py'
alias rd=rmdir
alias spc='$EDITOR ~/.config/startpage/index.html'
alias src='source ~/.zshrc'
alias v=nvim
alias vd='$EDITOR ~/.config/nvim/init.vim'

# change dir without cd
setopt autocd

# prompt customization
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats ' %s(%F{red}%b%f)'
precmd() { vcs_info }
setopt prompt_subst
PROMPT='<>{ %F{red}%1~%f${vcs_info_msg_0_} }<> '

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
