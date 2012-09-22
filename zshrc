export PATH=/usr/local/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
ZSH=$HOME/.oh-my-zsh

# Theme 
ZSH_THEME="kphoen"

# Aliases
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"

# Plugins
plugins=(git svn ruby)

source $ZSH/oh-my-zsh.sh

# Customize 
export LSCOLORS="Gxfxbxdxcxaeadabagacdx"
export LC_CTYPE="utf-8"
alias ls='ls -A -G'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting