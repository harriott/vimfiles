
" Language:	sh
" Maintainer: Joseph Harriott
" Last Change: Mon 25 Jan 2021
" Syntax highlighting for folding my Bash scripts.

" this file should be in your  after/vimfiles/syntax  folder
" put this in your modeline: # vim: ft=shfold:

" shell syntax
" source $VIMRUNTIME/syntax/sh.vim

syntax sync fromstart  " for longer build scripts

" my syntax for folding
syntax match foldY '#=.*$'
syntax match foldN '.\+#=.*$'

hi def foldY term=bold cterm=bold gui=bold guifg=LightGreen
hi def foldN term=bold cterm=bold gui=bold guifg=LightGray
" see  cterm-colors  in  ../keystrokes.md

let b:current_syntax = "shfold"

