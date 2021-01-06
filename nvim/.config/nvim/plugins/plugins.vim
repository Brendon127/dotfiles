call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}         " Autocompletion
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'                              " File explorer

Plug 'ryanoasis/vim-devicons'                           " icons in NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'          " Syntax highlight for NERDTree

Plug 'tpope/vim-commentary'                             " Easy comments with gcc
Plug 'tpope/vim-surround'                               " Easy surround

Plug 'jiangmiao/auto-pairs'                             " Auto pairs on brackets
" Plug 'Raimondi/delimitMate'
Plug 'bkad/CamelCaseMotion'                             " Navigate camel case

Plug 'mattn/emmet-vim'                                  " Quick html tags

Plug 'sheerun/vim-polyglot'                             " Mutli language support

Plug 'airblade/vim-gitgutter'                           " Git gutter
Plug 'jreybert/vimagit'                                 " Magit for vim :D
Plug 'tpope/vim-git'                                    " Pretty format for git
Plug 'zivyangll/git-blame.vim'                          " Shortcut to blame
Plug 'tpope/vim-fugitive'
Plug 'SirVer/ultisnips'                                 " Snippets engine

Plug 'terryma/vim-multiple-cursors'
Plug 'pseewald/vim-anyfold'                             " Code folding

Plug 'vim-airline/vim-airline'                                 

Plug 'tpope/vim-rails'

" Themes
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'sickill/vim-monokai'
Plug 'joshdick/onedark.vim'



call plug#end()

source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/emmet.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/git-gutter.vim
source ~/.config/nvim/plugins/ultisnips.vim
source ~/.config/nvim/plugins/camel-case.vim
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/anyfold.vim
source ~/.config/nvim/plugins/ack.vim
