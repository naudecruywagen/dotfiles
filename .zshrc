export PATH=$PATH/bin:/usr/local/bin:
export PATH=$PATH/.rbenv/bin:
export PATH=$PATH/git/sourcekit-lsp/.build/debug/
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH=/Users/naude/.oh-my-zsh

ZSH_THEME="robbyrussell"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(git pod)

source $ZSH/oh-my-zsh.sh

alias zshconfig="vi ~/.zshrc"
alias fin='fastlane integrate'
alias fid='bundle exec fastlane integrate_discovery'
alias fucking='sudo'
alias start_wiremock='java -jar ./wiremock-standalone-2.11.0.jar --verbose'
alias x='open -a'
alias o='open -a'
alias vim=mvim
alias vi=mvim
alias reloadzsh="source ~/.zshrc"
alias recordsim="xcrun simctl io booted recordVideo simulatorRecording.mov"
alias gmd='git merge develop'
alias icloud='~/Library/Mobile\ Documents/com\~apple\~CloudDocs/'
alias be='bundle exec'
alias st='speedtest'
alias make='$(xcrun --sdk iphoneos --find clang) -isysroot $(xcrun --sdk iphoneos --show-sdk-path) -arch armv7 -arch armv7s -arch arm64'
alias simdir='open `xcrun simctl get_app_container booted com.gopotluck.over data`'
alias uninstallover='xcrun simctl uninstall booted com.gopotluck.over'

function push() {
    xcrun simctl openurl booted $1
}

function paste() {
    pbcopy $1
    xcrun simctl pbpaste booted
}

eval "$(rbenv init -)"
