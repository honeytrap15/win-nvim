set number
set shiftwidth=4
set tabstop=4
set autoindent

set list
set listchars=tab:»-,trail:.,eol:↲,extends:»,precedes:«,nbsp:%

call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lsp'
Plug 'fatih/vim-go'

call plug#end()
