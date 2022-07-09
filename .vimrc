set background=dark

set tabstop=3
set shiftwidth=3

set undofile
set undolevels=1000
set undoreload=10000

set nocompatible
filetype plugin indent on 
syntax enable

command! W :execute ':silent w !sudo tee % > /dev/null' | :edit!
inoremap <F3> <c-o>:w<cr>
