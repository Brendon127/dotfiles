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
Plug 'pangloss/vim-javascript'
Plug 'slim-template/vim-slim'

Plug 'airblade/vim-gitgutter'                           " Git gutter
Plug 'jreybert/vimagit'                                 " Magit for vim :D
Plug 'tpope/vim-git'                                    " Pretty format for git
Plug 'zivyangll/git-blame.vim'                          " Shortcut to blame

Plug 'SirVer/ultisnips'                                 " Snippets engine

" Themes
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'sickill/vim-monokai'


call plug#end()

source ~/.dotfiles/editors/nvim/plugins/coc.vim
source ~/.dotfiles/editors/nvim/plugins/nerdtree.vim
source ~/.dotfiles/editors/nvim/plugins/emmet.vim
source ~/.dotfiles/editors/nvim/plugins/fzf.vim
source ~/.dotfiles/editors/nvim/plugins/git-gutter.vim
source ~/.dotfiles/editors/nvim/plugins/ultisnips.vim
