"
" Language:	sh
" Maintainer: Joseph Harriott
" Last Change: Thu 17 Sep 2020
" Additional syntax highlighting for folding my Bash scripts.
" You should at least have this in your modeline: # vim: fdm=expr ft=sh.shfold:
" Then $VIMRUNTIME/syntax/vim.vim is enhanced a little by these extra settings.

syntax match foldY '#=.*$'
syntax match foldN '.\+#=.*$'

hi def foldY term=bold cterm=bold gui=bold guifg=LightGreen
hi def foldN term=bold cterm=bold gui=bold guifg=LightGray
" see  cterm-colors  in  ../keystrokes.md

let b:current_syntax = "shfold"

syntax sync fromstart  " for longer build scripts

