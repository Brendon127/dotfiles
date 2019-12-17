call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}         " Autocompletion
Plug 'junegunn/fzf.vim'                                 " Fuzy search
Plug 'scrooloose/nerdtree'                              " File explorer

Plug 'ryanoasis/vim-devicons'                           " icons in NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'          " Syntax highlight for NERDTree

Plug 'tpope/vim-commentary'                             " Easy comments with gcc

Plug 'jiangmiao/auto-pairs'                             " Auto pairs on brackets

Plug 'mattn/emmet-vim'                                  " Quick html tags

Plug 'MaxMEllon/vim-jsx-pretty'                                  " Quick html tags


" Themes
Plug 'morhetz/gruvbox'

call plug#end()


source ~/.dotfiles/vim/plugins/coc.vim
source ~/.dotfiles/vim/plugins/nerdtree.vim
source ~/.dotfiles/vim/plugins/emmet.vim
source ~/.dotfiles/vim/plugins/fzf.vim
