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

export DOTNET_ROOT=/usr/local/share/dotnet/x64


alias start-fines='docker-compose -p fines -f ~/Projects/Fines/FinesSA-Api/compose/infrastructure.yml start'
alias stop-fines='docker-compose -p fines -f ~/Projects/Fines/FinesSA-Api/compose/infrastructure.yml stop'

alias start-dot='docker-compose -p 10dot -f ~/Projects/10dot/10dot/compose/infrastructure.yml start'
alias stop-dot='docker-compose -p 10dot -f ~/Projects/10dot/10dot/compose/infrastructure.yml stop'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="${PATH}:${HOME}/.krew/bin"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home 
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents

# export ANDROID_HOME=/Users/brendon/Library/Android/sdk

export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME

#Tools exporting
export PATH=$PATH:$ANDROID_HOME/emulator:$PATH
export PATH=$PATH:$ANDROID_HOME/tools:$PATH
export PATH=$PATH:$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH





