
" Language:	vim
" Maintainer: Joseph Harriott
" Last Change: Tue 30 Aug 2022

" $vimfiles/vim/after/syntax/vim.vim
" put this in your modeline: " vim: ft=vim:

let g:after_syntax_vim = 1

" my syntax for folding
syntax match buildN '^ \+"">.*$'
syntax match buildY '^"">.*$'

hi def buildN term=bold cterm=bold gui=bold guifg=LightGray
hi def buildY term=bold cterm=bold gui=bold guifg=LightGreen
" see  cterm-colors  in  $vimfiles/QR.md

let b:current_syntax = "vim"

syntax sync fromstart  " for longer build scripts

