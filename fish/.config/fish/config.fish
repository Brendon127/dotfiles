set -e fish_user_paths
starship init fish | source

set -gx EDITOR nvim
set -gx PATH $PATH $HOME/bin
set -gx PATH $PATH (yarn global bin)
set -gx PATH $HOME/.rbenv/bin $PATH

function cd
    if count $argv > /dev/null
        builtin cd "$argv"; and ls
    else
        builtin cd ~; and ls
    end
end

set -gx GPG_TTY (tty)


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

# Dotnet
alias nuget="mono /usr/local/bin/nuget.exe"
set --universal fish_user_paths $fish_user_paths ~/.dotnet/tools/

set --export ANDROID $HOME/dev/android
set --export ANDROID_HOME $ANDROID/sdk;
set -gx PATH $ANDROID_HOME/tools $PATH;
set -gx PATH $ANDROID_HOME/tools/bin $PATH;
set -gx PATH $ANDROID_HOME/platform-tools $PATH;
set -gx PATH $ANDROID_HOME/emulator $PATH

set --export JAVA_HOME /opt/android-studio/jre
set -gx PATH $JAVA_HOME/bin $PATH;

# set TERMINAL kitty

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
source ~/.config/fish/dotnet.fish
