# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/work/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
eval "$(starship init zsh)"

source $ZSH/oh-my-zsh.sh

alias v='nvim'
alias c='clear'
alias r='ranger'

