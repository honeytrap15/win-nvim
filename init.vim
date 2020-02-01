set number
set shiftwidth=4
set tabstop=4
set autoindent
set clipboard+=unnamed
set hlsearch
set expandtab

set list
set listchars=tab:»-,trail:.,eol:↲,extends:»,precedes:«,nbsp:%

" --------- vim-plug ---------------
call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lsp'
Plug 'fatih/vim-go'
Plug 'cocopon/iceberg.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

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

>>>>>>> Stashed changes
