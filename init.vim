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

" keybind
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" autocmd
au BufNewFile *.sh set fileformat=unix

" user command
command! Config edit ~\AppData\Local\nvim\init.vim
command! GConfig edit ~\AppData\Local\nvim\ginit.vim

" terminal config
tnoremap <silent> <ESC> <C-\><C-n>
augroup TerminalStuff
    autocmd TermOpen * setlocal nonumber norelativenumber
augroup END

" --------- vim-plug ---------------
call plug#begin('~/.vim/plugged')

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
Plug 'mattn/vim-goimports'

call plug#end()

function s:is_plugged(name)
    if exists('g:plugs') && has_key(g:plugs, a:name) && isdirectory(g:plugs[a:name].dir)
        return 1
    else
        return 0
    endif
endfunction

" colorscheme
if s:is_plugged('iceberg.vim')
    colorscheme iceberg
endif

" NERDTree
if s:is_plugged('iceberg.vim')
    noremap <C-n> :NERDTreeFocus<CR>
endif

" lsp
if s:is_plugged('vim-lsp')
    let g:lsp_diagnostics_enabled = 1
    " debug
    let g:lsp_log_verbose = 1
    let g:lsp_log_file = expand('~/vim-lsp.log')
    let g:asyncomplete_log_file = expand('~/asyncomplete.log')
    let g:lsp_async_completion = 1
endif

nmap <C-]> :LspDefinition<CR>
