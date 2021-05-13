
" Maintainer: Joseph Harriott
" Last Change: Thu 13 May 2021
  " this file  after/syntax/HashEqualsFolding.vim  should be sourced by a filetype's after syntax

" my syntax for  #=>  folding
syntax match foldY '#=.*$'
syntax match foldN '.\+#=.*$'

hi def foldY term=bold cterm=bold gui=bold guifg=LightGreen
hi def foldN term=bold cterm=bold gui=bold guifg=LightGray
" see  cterm-colors  in  ../keystrokes.md

