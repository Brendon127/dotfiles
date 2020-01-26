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
        nnoremap <silent> <leader><leader> :GFiles --exclude-standard  --others --cached <CR>

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
        " s - snippets
                nnoremap <silent> <leader>os :UltiSnipsEdit<CR>
                
    "p - project
    "g - git
        "n - next hunk
            nnoremap <silent> <leader>gn :GitGutterNextHunk <CR>
        "p - previous hunk
            nnoremap <silent> <leader>gp :GitGutterPrevHunk <CR>
        "a - previous hunk
            nnoremap <silent> <leader>ga :GitGutterStageHunk <CR>
        "u - previous hunk
            nnoremap <silent> <leader>gu :GitGutterUndoHunk <CR>
        "s - next hunk
            nnoremap <silent> <leader>gs :Magit<CR>

    "s - snippets
    "w - window
        nnoremap <silent> <leader>w <C-w>
    "c - code
        " d -jump to definition
                nnoremap <silent> <leader>cd <C-]>
        " l -jump to definition
                nnoremap <silent> <leader>cl :CocCommand eslint.executeAutofix <CR> :w <CR>
    "/ - search
        " f -function
            nnoremap <silent> <leader>/f :BTags <CR>


" ====================================================================================

