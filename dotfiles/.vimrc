syntax on
set rtp+=~/.vim/bundle/Vundle.vim
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
execute pathogen#infect()
let g:airline_theme="luna"
set number
set t_Co=256
set background=dark
set clipboard=unnamedplus
vmap <C-c> "+y
colorscheme PaperColor
map <C-n> :NERDTreeToggle<CR>

call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'valloric/youcompleteme'
Plugin 'nlknguyen/papercolor-theme'
Plugin 'ap/vim-css-color'
Plugin 'altercation/vim-colors-solarized'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'wincent/command-t'
call vundle#end()            " required
filetype plugin indent on    " required
