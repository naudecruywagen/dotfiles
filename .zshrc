export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.rbenv/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/naude/.oh-my-zsh

ZSH_THEME="robbyrussell"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(git pod)

source $ZSH/oh-my-zsh.sh

alias zshconfig="code ~/.zshrc"
alias fin='fastlane integrate'
alias fid='bundle exec fastlane integrate_discovery'
alias fucking='sudo'
alias start_wiremock='java -jar ./wiremock-standalone-2.5.0.jar --verbose'
alias x='open -a'
alias o='open -a'

eval "$(rbenv init -)"
