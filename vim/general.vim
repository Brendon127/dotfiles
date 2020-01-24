" Aesthetics
" colorsheme 
syntax enable " Enable syntax highlighting
colorscheme gruvbox

" Spacing
set tabstop=4 " number of visual spaces per tab
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=0
set expandtab " tabs converted to spaces
set autoindent
set copyindent

" UI
set  relativenumber
set showcmd
filetype indent on " load filetype-specific indent files
set wildmenu
set showmatch

" Search
set incsearch " search as characters are entered
set hlsearch  " highlight matches


" Misc
set encoding=UTF-8
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

" File specific configs
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab                " indentation for yml files 
