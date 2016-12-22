
"#################################################################
"### Golang Program language specific options
"#################################################################

"=======================
" Golang SETTINGS
"=======================

"=======================
" vim-go plugin 
"=======================

" Plugin vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"=======================
" Tagbar plugin 
"=======================

" Plugin extra configuration for Tagbar (golang-specific)
" if !executable('ctags')
"   finish
" elseif globpath(&rtp, 'plugin/tagbar.vim') == ""
"   finish
" endif
"
" if !exists("g:go_gotags_bin")
"   let g:go_gotags_bin = "gotags"
" endif


function! s:SetTagbar()
  let bin_path = go#path#CheckBinPath(g:go_gotags_bin) 
  if empty(bin_path) 
    return 
  endif

  if !exists("g:tagbar_type_go")
    let g:tagbar_type_go = {
          \ 'ctagstype' : 'go',
          \ 'kinds'     : [
          \ 'p:package',
          \ 'i:imports',
          \ 'c:constants',
          \ 'v:variables',
          \ 't:types',
          \ 'n:interfaces',
          \ 'w:fields',
          \ 'e:embedded',
          \ 'm:methods',
          \ 'r:constructor',
          \ 'f:functions'
          \ ],
          \ 'sro' : '.',
          \ 'kind2scope' : {
          \ 't' : 'ctype',
          \ 'n' : 'ntype'
          \ },
          \ 'scope2kind' : {
          \ 'ctype' : 't',
          \ 'ntype' : 'n'
          \ },
          \ 'ctagsbin'  : bin_path,
          \ 'ctagsargs' : '-sort -silent'
          \ }
  endif
endfunction

call s:SetTagbar()

