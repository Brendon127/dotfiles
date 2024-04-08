# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/brendon/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
export PATH="$PATH:$HOME/flutter/bin"
export PATH="$PATH:$(yarn global bin)"

plugins=(git docker docker-compose kubectl)

export NVM_DIR=~/.nvm
eval "$(starship init zsh)"

source $ZSH/oh-my-zsh.sh

alias v='nvim'
alias c='clear'
alias r='ranger'

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
