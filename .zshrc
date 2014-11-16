export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.rvm/bin:$PATH 
export JAVA_HOME=$(/usr/libexec/java_home)
export EDITOR=vi
export LC_ALL="en_US.UTF-8"

[[ -s "/usr/local/share/npm/bin" ]] && export PATH=$PATH:/usr/local/share/npm/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

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

# Bindings

bindkey -v			#VI mode

# Searchi
bindkey '^R'      history-incremental-search-backward
bindkey '^S'      history-incremental-search-forward
bindkey '^[[A' 	  up-line-or-search	# Cursor up
bindkey '^[[B' 	  down-line-or-search	# Cursor down

#Navigation
bindkey "^[[C"	  forward-char		# Cursor right
bindkey "^[[D"	  backward-char		# Cursor left
bindkey "^[^[[C"  forward-word		# Alt Cursor right
bindkey "^[^[[D"  backward-word		# Alt Cursor left
bindkey "^[[H"	  beginning-of-line	# Home key
bindkey "^[[F"	  end-of-line		# End key

# Make the delete key (or Fn + Delete on the Mac) work instead of outputting a ~
bindkey '^?' backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char
