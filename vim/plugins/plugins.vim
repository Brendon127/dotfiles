call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}         " Autocompletion
Plug 'junegunn/fzf.vim'                                 " Fuzy search
Plug 'scrooloose/nerdtree'                              " File explorer

Plug 'ryanoasis/vim-devicons'                           " icons in NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'          " Syntax highlight for NERDTree

Plug 'tpope/vim-commentary'                             " Easy comments with gcc
Plug 'tpope/vim-surround'                               " Easy surround

Plug 'jiangmiao/auto-pairs'                             " Auto pairs on brackets

Plug 'mattn/emmet-vim'                                  " Quick html tags

Plug 'MaxMEllon/vim-jsx-pretty'                         " Pretty syntax for jsx

Plug 'airblade/vim-gitgutter'                           " Git gutter
Plug 'jreybert/vimagit'                                 " Magit for vim :D
Plug 'tpope/vim-git'                                    " Pretty format for git

Plug 'SirVer/ultisnips'                                 " Snippets engine

" Themes
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'

call plug#end()


source ~/.dotfiles/vim/plugins/coc.vim
source ~/.dotfiles/vim/plugins/nerdtree.vim
source ~/.dotfiles/vim/plugins/emmet.vim
source ~/.dotfiles/vim/plugins/fzf.vim
source ~/.dotfiles/vim/plugins/git-gutter.vim
source ~/.dotfiles/vim/plugins/ultisnips.vim
