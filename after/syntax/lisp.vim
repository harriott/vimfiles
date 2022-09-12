" vim: se fdl=1:

" Maintainer: Joseph Harriott
" Last Change: Mon 05 Sep 2022

" $vimfiles/after/syntax/lisp.vim, supplementary to  $VIMRUNTIME/syntax/lisp.vim
"
""> my syntax for  ;;;\+  scfoding
syntax match scfodN '; ;;;.*$'
syntax match scfodY '^;;;.*$'

hi def scfodN term=bold cterm=bold gui=bold guifg=LightGray
hi def scfodY term=bold cterm=bold gui=bold guifg=LightGreen
" see  cterm-colors  in  $vimfiles/QR.md

