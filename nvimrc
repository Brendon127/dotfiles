""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editor Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number relativenumber 
set tabstop=4 " Indent 4 spaces in size but still tab char
set shiftwidth=4	

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git' 				" better cpp syntax
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/cohama/lexima.vim.git' 							" auto close characters
Plug 'https://github.com/scrooloose/nerdtree.git' 							" NERD TREE
if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
	  Plug 'Shougo/deoplete.nvim'
	  Plug 'roxma/nvim-yarp'
	  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Themes
Plug 'haishanh/night-owl.vim' 
Plug 'https://github.com/neutaaaaan/iosvkem.git'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Custom Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Deoplete "
	let g:deoplete#enable_at_startup = 1 " open on startup
	inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>" 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
colorscheme Iosvkem
let g:airline#extensions#tabline#enabled = 1
" remove bracket color confusion
hi! MatchParen cterm=NONE,bold gui=NONE,bold  guibg=#eee8d5 guifg=NONE  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Key Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Scrolling "
nnoremap <C-j> 3<C-e>
nnoremap <C-k> 3<C-y>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
