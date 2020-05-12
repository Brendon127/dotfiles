let g:airline_theme='onedark'

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

function! AirlineInit()
  " first define a new part for modified
  call airline#parts#define('modified', {
    \ 'raw': '%m',
    \ 'accent': 'red',
    \ })

  " then override the default layout for section c with your new part
  let g:airline_section_c = airline#section#create(['%<', '%f', 'modified', ' ', 'readonly'])
  let g:airline_section_y = ""

  " let g:airline#extensions#default#layout = ['a', 'b', 'c', 'x', 'z']
endfunction
autocmd VimEnter * call AirlineInit()

let g:airline#extensions#hunks#enabled=0
