" vim-plug setup
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tomasr/molokai'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
call plug#end()

if executable('sourcekit-lsp')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'sourcekit-lsp',
        \ 'cmd': {server_info->['sourcekit-lsp']},
        \ 'whitelist': ['swift'],
        \ })
endif

filetype plugin indent on

" styling
syntax enable
colorscheme molokai

" editor
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
set background=dark
set gfn=Menlo:h14

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
map <C-n> :NERDTreeToggle<CR>

" setup vim-markdown
let g:vim_markdown_folding_disabled = 1

" setup vim-markdown-preview
let vim_markdown_preview_github = 1

" set ruby as syntax for files without extensions
autocmd BufNewFile,BufRead * if expand('%:t') !~ '\.' | set syntax=ruby | endif

" esc to clear search highlighting
nnoremap <silent> <esc> :noh<cr><esc>
nnoremap <esc>[ <esc>[

" user defined commands
command! Prettyjson execute '%!python -m json.tool'
command! Prettyxml execute '%!xmllint --format -'

" fix control a remapping
nnoremap <c-a> <c-a>

