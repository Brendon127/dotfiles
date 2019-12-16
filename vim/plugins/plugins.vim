call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}         " Autocompletion
Plug 'junegunn/fzf.vim'                                 " Fuzy search
Plug 'scrooloose/nerdtree'

Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()


source ~/.dotfiles/vim/plugins/coc.vim
source ~/.dotfiles/vim/plugins/nerdtree.vim
