starship init fish | source

set EDITOR nvim

alias gs='git status'
alias ga='git add '
alias gb='git branch '
alias gd='git diff'
alias gco='git checkout '

alias r='ranger'
alias v='nvim'
alias z='zathura --fork'
# alias t='$TERMINAL 2> /dev/null &|'
alias o='okular'
alias c='clear'
alias vim=nvim

# alias t='tmux attach || tmux new-session'
alias t='tmux'
alias tn='tmux new-session'
alias ta='tmux attach'
alias tls='tmux ls'

set -e fish_user_paths
set ANDROID_HOME /opt/android/Sdk
set --universal fish_user_paths $fish_user_paths $ANDROID_HOME/emulator
set --universal fish_user_paths $fish_user_paths $ANDROID_HOME/tools
set --universal fish_user_paths $fish_user_paths $ANDROID_HOME/tools/bin
set --universal fish_user_paths $fish_user_paths $ANDROID_HOME/platform-tools

# set PATH $PATH $HOME/.dotfiles/scripts/bluetooth
set PATH $PATH $HOME/.dotfiles/scripts/startup

set TERMINAL alacritty

set -U fish_greeting ""

########
# git functions
########
function cm 
    set git_root ( git rev-parse --show-toplevel )
    set params 'set syntax=gitcommit | set spell'
    nvim -c $params  $git_root/.git/CUSTOM_COMMIT_MESSAGE
end

function cf 
    set git_root ( git rev-parse --show-toplevel )
    if count $argv > /dev/null
        # argument provided
        git commit -n -F $git_root/.git/CUSTOM_COMMIT_MESSAGE
    else
        git commit -F $git_root/.git/CUSTOM_COMMIT_MESSAGE
    end
end

function cdgr 
    set git_root ( git rev-parse --show-toplevel )
    cd $git_root
end
