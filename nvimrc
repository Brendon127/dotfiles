""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editor Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number relativenumber
set tabstop=4 " Indent 4 spaces in size but still tab char
set shiftwidth=4	
set encoding=UTF-8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git' 				" better cpp syntax
Plug 'https://github.com/vim-airline/vim-airline.git'						" Bottom bar 
Plug 'https://github.com/jiangmiao/auto-pairs.git' 							" auto close characters
Plug 'https://github.com/scrooloose/nerdtree.git' 							" NERD TREE
Plug 'https://github.com/tpope/vim-commentary.git'							"Comment multiple lines with gc
Plug 'https://github.com/enricobacis/vim-airline-clock.git'					" Adds time in airline bar
Plug 'https://github.com/roxma/nvim-yarp.git' 								" Deoplete dependency
Plug 'https://github.com/vim-syntastic/syntastic.git' 						" Syntax check
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/euclio/vim-markdown-composer.git' 					" Markdown composer
Plug 'https://github.com/gabrielelana/vim-markdown.git'						" Markdown syntax
Plug 'leafgarland/typescript-vim'											" Typscript syntax highlight
if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'zchee/deoplete-clang'
else
	  Plug 'Shougo/deoplete.nvim'
	  Plug 'roxma/nvim-yarp'
	  Plug 'roxma/vim-hug-neovim-rpc'

endif

" Themes
	Plug 'haishanh/night-owl.vim' 
	Plug 'https://github.com/neutaaaaan/iosvkem.git'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'https://github.com/srcery-colors/srcery-vim.git'
	Plug 'https://github.com/tomasr/molokai.git'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Custom Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Deoplete "
	let g:deoplete#enable_at_startup = 1
	" let g:deoplete#disable_auto_complete = 1
	inoremap <expr> <C-n>  deoplete#mappings#manual_complete()deoplete#mappings#manual_complete
	set completeopt-=preview   " Close preview window

	inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>" 
	let g:AutoClosePumvisible = {"ENTER": "<C-Y>", "ESC": "<ESC>"}  			" Remvove annoying double esc to exit insert mode

" Nerd Tree 
	let mapleader = " "
	nnoremap <leader>p <C-P>
	nnoremap <leader>\ :NERDTreeToggle<Enter>
	let NERDTreeQuitOnOpen = 1
	let NERDTreeDirArrows = 1
	let NERDTreeShowLineNumbers=1 " enable line numbers
	let g:NERDTreeDirArrowExpandable = '▸'
	let g:NERDTreeDirArrowCollapsible = '▾'
	autocmd FileType nerdtree setlocal relativenumber " make sure relative line numbers are used
	" open on startup if no files were specified
	autocmd StdinReadPre * let s:std_in=1 " don't open NERDTree when commandline argument is passed
	autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif " don't open NERDTree when commandline argument is passed

	" Hide exe files
	let NERDTreeIgnore = ['\.pyc$', '\.o', '\.class', '\.zip', 'exe']

" Ctrl P immediate buffers
	let g:ctrlp_cmd = 'CtrlPBuffer'
	let g:ctrlp_working_path_mode = 'c'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
colorscheme molokai
" Alow to be transparrent
" hi Normal guibg=NONE ctermbg=NONE 
" let g:airline#extensions#tabline#enabled = 1



" remove bracket color confusion
hi! MatchParen cterm=NONE,bold gui=NONE,bold  guibg=#eee8d5 guifg=NONE  

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Key Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "
" Switch split windows
	nnoremap <leader>w <C-w>
	
" Scrolling "
	nnoremap <A-j> 3<C-e>
	nnoremap <A-k> 3<C-y>
	

let mapleader = ","
" Easier Split Windows
	nnoremap <leader>v :vsplit 
	nnoremap <leader>s :split 
	nnoremap <leader>r <C-w>q
" Easier saving
	nnoremap <leader>w :w<enter>

"Easy access to config files
	nnoremap <leader>sv :source ~/.dotfiles/nvimrc<enter>
	nnoremap <leader>ev :split ~/.dotfiles/nvimrc<enter>	






""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


