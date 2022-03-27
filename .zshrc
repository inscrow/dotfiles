# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Za-z}'

# powerlevel10k
source ~/.powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# enable syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
