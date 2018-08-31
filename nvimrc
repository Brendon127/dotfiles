set number relativenumber


call plug#begin()

Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git'
Plug 'haishanh/night-owl.vim'
Plug 'https://github.com/vim-airline/vim-airline.git'
call plug#end()



" Theme "
syntax enable
" colorscheme night-owl
let g:airline#extensions#tabline#enabled = 1

