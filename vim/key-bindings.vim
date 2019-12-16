" ========
" Movement
" ========
" Move vertically by visual line, when lines are wrapped
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" ====================================================================================

" =========
" Scrolling
" =========
nnoremap <C-j> 3<C-e>
nnoremap <C-k> 3<C-y>
" ====================================================================================
"

" ============
" Space Leader
" ============
let mapleader =" "
" SPC
    ", - switch buffers
        nnoremap <silent> <leader>, :Buffers<CR>

    ". - browse files
        nnoremap <silent> <leader>. :silent :Files<CR>

    "SPC - browse files sibling directory
        nnoremap <silent> <leader><leader> :Files <C-r>=expand("%:h")<CR>/<CR>

    "f - file
        
    "o - open
        " t -terminal 
                nnoremap <silent> <leader>ot :silent exec "!$TERMINAL&" <CR>
        " p -project (NERDTree)
                nnoremap <silent> <leader>op :NERDTreeToggle<CR>
        " r -ranger
                nnoremap <silent> <leader>or :silent exec "!$TERMINAL -e $SHELL -c 'ranger;zsh'&" <CR>
        " n -visual-file-explorer
                nnoremap <silent> <leader>on :silent exec "!nemo&" <CR>
        " v - vimrc
                nnoremap <silent> <leader>ov :vsplit ~/.dotfiles/vim/<CR>
        " z - zshrc
                nnoremap <silent> <leader>oz :e ~/.dotfiles/zsh/<CR>
                
    "p - project
    "s - snippets
    "w - window
        nnoremap <silent> <leader>w <C-w>
    "c - code
        " d -jump to definition
                nnoremap <silent> <leader>cd <C-]>
    "/ - search
        " f -function
            nnoremap <silent> <leader>/f :BTags <CR>


" ====================================================================================
let mapleader =","
nnoremap <silent> <leader>, :w<CR>

