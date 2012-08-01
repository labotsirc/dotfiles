set ruler
set undolevels=5000
set virtualedit=block

nnoremap <SPACE> <PAGEDOWN>

" Search enhancements
set smartcase ignorecase
highlight Search ctermfg=White ctermbg=Red
set hlsearch
nmap <DEL> :nohlsearch<CR>

" Smarter indenting
set autoindent smartindent
" Disable outdenting of scripting comments
inoremap # X<C-H>#
" Disable shift-resistance either
nnoremap <silent> >> :call ShiftLine()<CR>

function! ShiftLine()
    set nosmartindent
    normal! >>
    set smartindent
endfunction
