" vundle setup

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

" styling
syntax enable

" editor
set hlsearch
set tabstop=4
set shiftwidth=4
set number
set ruler
set clipboard=unnamed
set mouse=a

" cusror styles
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" not to break on words
set formatoptions=1
set linebreak
set nowrap

" no annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" setup NERDTRee

autocmd VimEnter * NERDTree
