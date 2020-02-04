set number
set shiftwidth=4
set tabstop=4
set autoindent
set clipboard+=unnamed
set hlsearch
set expandtab
set swapfile
set directory=~/nvim/swap

set list
set listchars=tab:»-,trail:.,eol:↲,extends:»,precedes:«,nbsp:%

set tags=./tags;$HOME

" --------- vim-plug ---------------
call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'
Plug 'cocopon/iceberg.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-dispatch'

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

call plug#end()
colorscheme iceberg

" --------- vim-plug ---------------

" keybind
noremap <C-n> :NERDTreeFocus<CR>
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" autocmd
au BufNewFile *.sh set fileformat=unix

" user command
command! Config edit ~\AppData\Local\nvim\init.vim
command! GConfig edit ~\AppData\Local\nvim\ginit.vim

" terminal config
let &shell = has('win32') ? 'powershell' : 'pwsh'
set shellquote= shellpipe=\| shellxquote=
set shellcmdflag=-NoLogo\ -NoProfile\ -ExecutionPolicy\ RemoteSigned\ -Command
set shellredir=\|\ Out-File\ -Encoding\ UTF8
tnoremap <silent> <ESC> <C-\><C-n>
augroup TerminalStuff
    autocmd TermOpen * setlocal nonumber norelativenumber
augroup END

" lsp
let g:lsp_diagnostics_enabled = 1
" debug
let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('~/vim-lsp.log')
let g:asyncomplete_log_file = expand('~/asyncomplete.log')
