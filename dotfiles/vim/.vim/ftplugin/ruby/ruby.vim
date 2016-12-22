
"#################################################################
"### Ruby Program language specific options
"#################################################################

"=======================
" SETTINGS
"=======================

" Setting indentation
set modeline
set tabstop=4 expandtab shiftwidth=4 softtabstop=4

" Setting Auto-fold
setlocal foldmethod=indent
set foldlevel=2

" Mapping Toggle fold
map <F8> :set foldmethod=indent<CR>
map <F9> zi
map <F10> zc

" Enable ruby extensions
filetype indent on
set omnifunc=syntaxcomplete#Complete

"=======================
" COMPILING
"=======================

" Run rubycode
map <F5> :!ruby %<CR>
 
"=======================
" FUNCTIONS 
"=======================

" Setting Ruby specific folding
function! RubyMethodFold(line)
  let stack = synstack(a:line, (match(getline(a:line), '^\s*\zs'))+1)
 
  for synid in stack
    if GetSynString(GetSynDict(synid)) ==? "rubyMethodBlock" || GetSynString(GetSynDict(synid)) ==? "rubyDefine" || GetSynString(GetSynDict(synid)) ==? "rubyDocumentation"
      return 1
    endif
  endfor
 
  return 0
endfunction

"=======================
" Using functions 
"=======================

" Using ruby fold function 
set foldmethod=expr
set foldexpr=RubyMethodFold(v:lnum)
 
