syntax enable

colorscheme Monokai 
let g:molokai_original=1
let g:rehash256=1

set guifont=Menlo\ Regular:h14
set hlsearch
set tabstop=4
set shiftwidth=4
set number
set nowrap

" == SETUP FILETYPES ======================================

" autocmd BufNewFile,BufRead *.json set ft=javascript
au BufRead,BufNewFile *.{bones,json,geojson,mml} set filetype=javascript
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} set filetype=mkd

" == KEY BINDINGS =========================================

" Disable the arrow keys to learn the hard way
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

