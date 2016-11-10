# Path to oh-my-zsh installation.
export ZSH=/Users/naude/.oh-my-zsh

ZSH_THEME="robbyrussell"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(rails git ruby pod)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

eval "$(rbenv init -)"

# Aliases
alias zshconfig="vi ~/.zshrc"

alias mvim="mvim -v" 
alias vi="mvim" 
alias vim="mvim" 

alias glp='git pull && git push'
alias gcamp='git commit -am $1 && git pull && git push'
alias fi='fastlane integrate'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
