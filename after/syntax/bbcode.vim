
" Language:	bbcode
" Maintainer: Joseph Harriott
" Last Change: Thu 13 May 2021
" syntax highlighting for folding
" (see  $vimfiles/ftplugin/bbcode.vim)

" this file should be in  after/vimfiles/syntax  folder
"  it is supplementary to  $vimfiles/pack/packs-cp/opt/vim-bbcode/syntax/bbcode.vim

" my syntax for folding
syntax match foldY '#=.*$'
syntax match foldN '.\+#=.*$'

hi def foldY term=bold cterm=bold gui=bold guifg=LightGreen
hi def foldN term=bold cterm=bold gui=bold guifg=LightGray
" see  cterm-colors  in  ../keystrokes.md

let b:current_syntax = "bbcode"

