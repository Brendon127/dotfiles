" Open at startup if no file is given as parameter
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open at startup when file path is give as parameter
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" enable relative line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

" Hide executable files
let NERDTreeIgnore = ['\.pyc$', '\.o', '\.class', '\.zip', 'exe']

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

let g:NERDTreeWinSize=30

let NERDTreeMapPreviewVSplit='gv'
let NERDTreeMapPreviewSplit='gh'

let NERDTreeMapOpenVSplit='v'
let NERDTreeMapOpenSplit='h'


