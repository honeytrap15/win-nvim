set number
set shiftwidth=4
set tabstop=4
set autoindent
set clipboard+=unnamed

set list
set listchars=tab:»-,trail:.,eol:↲,extends:»,precedes:«,nbsp:%

call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lsp'
Plug 'fatih/vim-go'
Plug 'cocopon/iceberg.vim'

call plug#end()

colorscheme iceberg

noremap <C-n> :vs .<CR>
noremap <C-q> :q<CR>
let g:netrw_banner=0
