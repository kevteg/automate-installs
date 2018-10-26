syntax on
set rtp+=~/.vim/bundle/Vundle.vim
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
"execute pathogen#infect()
"let g:airline_theme="luna"
set number
set clipboard=unnamed
set rtp+=~/.vim/bundle/fzf
vmap <C-c> "+y

map <C-n> :NERDTreeToggle<CR>

call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'nlknguyen/papercolor-theme'
Plugin 'ap/vim-css-color'
Plugin 'altercation/vim-colors-solarized'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'wincent/command-t'
Plugin 'nvie/vim-flake8'
Plugin 'vim-syntastic/syntastic'
Plugin 'junegunn/fzf.vim'
call vundle#end()            " required
set background=dark
colorscheme solarized
set t_Co=256
let g:solarized_termcolors=256
filetype plugin indent on    " required
