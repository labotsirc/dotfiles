set nocompatible
set ruler
set number
set undolevels=5000
set virtualedit=block

nnoremap <SPACE> <PAGEDOWN>

" Search enhancements
set smartcase ignorecase
highlight Search ctermfg=White ctermbg=Red
set hlsearch incsearch
nmap <Leader><space> :nohlsearch<CR>

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

" Vundle core
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Vundles
"Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-fugitive'

call vundle#end()

" Theme
syntax enable
colorscheme atom-dark-256
set t_CO=256

" Split management
set splitbelow splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
