set number
set noswapfile
set ignorecase

syntax on

set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin indent on

let @m = "oif __name__ == \"__main__\":\<Esc>"
let @b = "obreakpoint()\<Esc>"

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary' " block comment with gcc
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' " fuzzy find documents
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } " toggle better file sidebar
Plug 'easymotion/vim-easymotion' " better motion controls
Plug 'dracula/vim', { 'as': 'dracula' } " custom theme
Plug 'mhinz/vim-startify' " better start screen (shows recent files)
Plug 'vim-airline/vim-airline' " taskbar at bottom
Plug 'psliwka/vim-smoothie'  " smooth scroll
Plug 'rstacruz/vim-closer'  " close brackets
Plug 'ntpeters/vim-better-whitespace'
Plug 'morhetz/gruvbox'

call plug#end()

nnoremap <C-p> :Files<Cr>
let g:EasyMotion_leader_key = '\'

set background=dark
colorscheme gruvbox
