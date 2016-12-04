"disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"always wrap long lines:
set wrap
 
"syntax highlighting on
syntax on

"better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed
set showmode
 
"python additions
filetype indent plugin on
set modeline
set tabstop=8 expandtab shiftwidth=4 softtabstop=4
set ruler
 
"auto-indent (refactor)
map <F7> gg=G
 
"auto-fold
setlocal foldmethod=indent
set foldlevel=1
"toggle fold
map <F8> :set foldmethod=indent<CR>
map <F9> zi
 
"linenumbers
set nu
 
"tabmove
map <F12> :tabn <CR>

"setruler
set ruler

"tabnext
map <F12> :tabn <CR>
"tabback
map <F11> :tabp <CR>

"run rubycode
map <F5> :!ruby %<CR>

"set 'jk' as escape
inoremap jk <Esc>

"use an explore window to open new files with the arrow key
map <Right> :Texplore<CR>
