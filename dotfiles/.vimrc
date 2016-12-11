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
 
"open everything in tabs by default
:tab all
 
"automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
 
""always wrap long lines:
set wrap
 
"syntax highlighting on
syntax on
 
"search highlighting
set hlsearch
 
"use different escape key
imap jk <esc>
 
"better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed
set showmode
 
"indentation additions
filetype indent plugin on
set modeline
set tabstop=4 expandtab shiftwidth=4 softtabstop=4
 
"set ruler
set ruler
 
"auto-indent (refactor)
map <F7> gg=G
 
"auto-fold
"setlocal foldmethod=indent
"set foldlevel=2
 
"toggle fold
"map <F8> :set foldmethod=indent<CR>
"map <F9> zi
"map <F10> zc
 
"Folding
function! RubyMethodFold(line)
  let stack = synstack(a:line, (match(getline(a:line), '^\s*\zs'))+1)
 
  for synid in stack
    if GetSynString(GetSynDict(synid)) ==? "rubyMethodBlock" || GetSynString(GetSynDict(synid)) ==? "rubyDefine" || GetSynString(GetSynDict(synid)) ==? "rubyDocumentation"
      return 1
    endif
  endfor
 
  return 0
endfunction
 
set foldmethod=expr
set foldexpr=RubyMethodFold(v:lnum)
 
 
"linenumbers
set nu
map <F6> :set invnumber<CR>
 
"tabmove
map <F12> :tabn <CR>
 
"tabback
map <F11> :tabp <CR>
 
"run rubycode
map <F5> :!ruby %<CR>
 
"enable ruby extensions
set nocompatible
filetype on
filetype indent on
filetype plugin on
set omnifunc=syntaxcomplete#Complete
 
" Generate todolist"
command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw

" Mouse support 
set mouse=a

" Autocompletion mode + behave like bash autocomplete
set wildmode=longest:full
set wildmenu

