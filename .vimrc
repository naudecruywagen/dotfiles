" vundle setup

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'fugitive.vim'
Plugin 'molokai'

call vundle#end()

filetype plugin indent on

" styling
syntax enable
colorscheme molokai

" editor
set hlsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set ruler
set clipboard=unnamed
set mouse=a
set ignorecase
set smartcase

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
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" setup NERDTRee
let g:NERDTreeWinSize = 40
autocmd VimEnter * NERDTree

" set ruby as syntax for files without extensions
autocmd BufNewFile,BufRead * if expand('%:t') !~ '\.' | set syntax=ruby | endif

" esc to clear search highlighting
nnoremap <silent> <esc> :noh<cr><esc>
nnoremap <esc>[ <esc>[
