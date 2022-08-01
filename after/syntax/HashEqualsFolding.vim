" vim: se fdl=1:

" Maintainer: Joseph Harriott
" Last Change: Mon 18 Oct 2021
  " used by
  "   $vimfiles/after/syntax/bbcode.vim
  "   $vimfiles/after/syntax/sh.vim
  "   $vimfiles/after/syntax/neomuttrc.vim

""> my syntax for  #=>  folding
syntax match foldY ' *#=.*$'
syntax match foldN '# \+#=.*$'
syntax match core 'core'

hi def foldY term=bold cterm=bold gui=bold guifg=LightGreen
hi def core term=bold cterm=bold gui=bold guifg=Green
hi def foldN term=bold cterm=bold gui=bold guifg=LightGray
" see  cterm-colors  in  $vimfiles/QR.md

