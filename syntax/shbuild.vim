"
" Language:	sh
" Maintainer: Joseph Harriott
" Last Change: Mon 14 Sep 2020
" Additional syntax highlighting for my Bash build scripts.
" You should at least have this in your modeline: # vim: fdm=expr ft=sh.shbuild:
" Then $VIMRUNTIME/syntax/vim.vim is enhanced a little by these extra settings.

syntax match buildY '#=.*$'
syntax match buildN '.\+#=.*$'

hi def buildY term=bold cterm=bold gui=bold guifg=LightGreen
hi def buildN term=bold cterm=bold gui=bold guifg=LightGray
" see  cterm-colors  in  ../keystrokes.md

let b:current_syntax = "shbuild"

syntax sync fromstart  " for longer build scripts

