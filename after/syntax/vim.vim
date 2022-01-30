
" Language:	vim
" Maintainer: Joseph Harriott
" Last Change: Sun 30 Jan 2022

" $vimfiles/after/syntax/vim.vim
" put this in your modeline: " vim: ft=vim:

" my syntax for folding
syntax match buildY '^"">.*$'
syntax match buildN '^ \+"">.*$'

hi def buildY term=bold cterm=bold gui=bold guifg=LightGreen
hi def buildN term=bold cterm=bold gui=bold guifg=LightGray
" see  cterm-colors  in  ../keystrokes.md

let b:current_syntax = "vim"

syntax sync fromstart  " for longer build scripts

