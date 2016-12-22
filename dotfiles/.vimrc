"learning purposes, disable arrow keys
"Assign other uses for arrows
map <up> <nop>
map <down> <nop>
map <left> <nop>
" Use Texplore as a fileexplorer
map <right> :Texplore<CR>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Use plugin manager pathogen
execute pathogen#infect()
 
" Open everything in tabs by default
:tab all
 
"" Always wrap long lines:
set wrap
 
" Syntax highlighting on
syntax on

" Colorscheme
colorscheme molokai
 
" Search highlighting
set hlsearch
 
" Use different escape key
imap jk <esc>
 
" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed
set showmode
 
" Indentation additions
filetype indent plugin on
set modeline
set tabstop=4 expandtab shiftwidth=4 softtabstop=4
 
" Set ruler
set ruler
 
" Auto-indent (refactor)
map <F7> gg=G
 
" Linenumbers
set nu
map <F6> :set invnumber<CR>
 
" Tab-move
map <F12> :tabn <CR>
 
" Tab-back
map <F11> :tabp <CR>
 
" Generate todolist"
command! Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw

" Mouse support 
set mouse=a

" Autocompletion mode + behave like bash autocomplete
set wildmode=longest:full
set wildmenu

" Golang Plugins
"set runtimepath^=~/.vim/bundle/vim-go
"let g:neocomplete#enable_at_startup = 1

" Run GoLang
map <F5> :!go %<CR>

" Automatic reloading of vimrc
autocmd! bufwritepost .vimrc source %
