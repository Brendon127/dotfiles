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
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/cohama/lexima.vim.git' 							" auto close characters
Plug 'https://github.com/scrooloose/nerdtree.git' 							" NERD TREE
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/enricobacis/vim-airline-clock.git'
Plug 'https://github.com/roxma/nvim-yarp.git' 								" Deoplete dependency
Plug 'https://github.com/vim-syntastic/syntastic.git' 						" Syntax check
Plug 'https://github.com/tpope/vim-surround.git'
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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
colorscheme Iosvkem
" Alow to be transparrent
" hi Normal guibg=NONE ctermbg=NONE 
" let g:airline#extensions#tabline#enabled = 1



" remove bracket color confusion
hi! MatchParen cterm=NONE,bold gui=NONE,bold  guibg=#eee8d5 guifg=NONE  

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Key Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Switch split windows
	let mapleader = " "
	nnoremap <leader>w <C-w>
" Scrolling "
	nnoremap <A-j> 3<C-e>
	nnoremap <A-k> 3<C-y>
" Change buffers with numbers "
	nnoremap <leader>1 :b1<CR>
	nnoremap <leader>2 :b2<CR>
	nnoremap <leader>3 :b3<CR>
	nnoremap <leader>4 :b4<CR>
	nnoremap <leader>5 :b5<CR>
	nnoremap <leader>6 :b6<CR>
	nnoremap <leader>7 :b7<CR>
	nnoremap <leader>8 :b8<CR>
	nnoremap <leader>9 :b9<CR>

" Change to next buffer with ctrl-n and ctrl-b
	nnoremap <C-m> :bn<CR>
	nnoremap <C-n> :bp<CR>

" Ctrl P immediate buffers
	let g:ctrlp_cmd = 'CtrlPBuffer'
	let g:ctrlp_working_path_mode = 'c'

" Nerd Tree 
	nnoremap <leader>p <C-P>
	nnoremap <Leader>\ :NERDTreeToggle<Enter>
	let NERDTreeQuitOnOpen = 1
	let NERDTreeDirArrows = 1
	let NERDTreeShowLineNumbers=1 " enable line numbers
	let g:NERDTreeDirArrowExpandable = '▸'
	let g:NERDTreeDirArrowCollapsible = '▾'
	autocmd FileType nerdtree setlocal relativenumber " make sure relative line numbers are used
	" open on startup if no files were specified
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
	" Hide exe files
	let NERDTreeIgnore = ['\.pyc$', '\.o', '\.class', '\.zip', 'exe']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


