"
" Language:	sh
" Maintainer: Joseph Harriott
" Last Change: Mon 25 Jan 2021

" this file should be in your  after/vimfiles/syntax  folder
" put this in your modeline: " vim: ft=vim.config:

" my syntax for folding
syntax match buildY '^"">.*$'
syntax match buildN '^ \+"">.*$'

hi def buildY term=bold cterm=bold gui=bold guifg=LightGreen
hi def buildN term=bold cterm=bold gui=bold guifg=LightGray
" see  cterm-colors  in  ../keystrokes.md

let b:current_syntax = "vim"

syntax sync fromstart  " for longer build scripts

