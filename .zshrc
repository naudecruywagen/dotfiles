export PATH=/usr/local/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)
export EDITOR=vi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "/usr/local/share/npm/bin" ]] && export PATH=$PATH:/usr/local/share/npm/bin

ZSH=$HOME/.oh-my-zsh

# Theme 
ZSH_THEME="amok"

# Aliases
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias mvim="mvim -v" 
alias vi="mvim" 

alias vim="mvim" 
# Plugins
plugins=(gem sublime brew git svn ruby)

source $ZSH/oh-my-zsh.sh

# Customize 
export LSCOLORS="Dxcxbxdxcxaeadabagacdx"
export LC_CTYPE="utf-8"

alias ls='ls -A -G'
alias tmux="TERM=screen-256color-bce tmux"
export TERM=screen-256color

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#VI mode

#bindkey -v
#bindkey '^R' history-incremental-search-backward
