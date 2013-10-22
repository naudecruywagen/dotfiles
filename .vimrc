execute pathogen#infect()

syntax enable

" styling
colorscheme Monokai 
let g:molokai_original=1
let g:rehash256=1
set guifont=Menlo\ Regular:h14

" editor
set hlsearch
set tabstop=4
set shiftwidth=4
set number
set ruler
set clipboard=unnamed

" not to break on words
set formatoptions=1
set linebreak

" fixing up moving line by line in the paragraph
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" no annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" setup filetypes 
au BufRead,BufNewFile *.{bones,json,geojson,mml} set filetype=javascript
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} set filetype=mkd
