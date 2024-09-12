" vim: se fdl=1:

" Maintainer: Joseph Harriott
" Last Change: mar 23 avr 2024
  " used by
  "   $vfv/after/syntax/bbcode.vim
  "   $vfv/after/syntax/neomuttrc.vim
  "   $vfv/after/syntax/sh.vim

""> my syntax for  #=>  folding
syntax match foldY '^ *#=.*$'
syntax match foldN '^# \+#=.*$'

hi def foldY term=bold cterm=bold gui=bold guifg=LightGreen
hi def foldN term=bold cterm=bold gui=bold guifg=LightGray
" see  cterm-colors  in  $vimfiles/QR.md

