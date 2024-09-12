
" Language:	vim
" Maintainer: Joseph Harriott
" Last Change: mer 22 mai 2024

" $vfv/after/syntax/vim.vim

let g:after_syntax_vim = 1

" my syntax for folding
syntax match buildN '^ \+"">.*$'
syntax match buildY '^"">.*$'

hi def buildN term=bold cterm=bold gui=bold guifg=LightGray
hi def buildY term=bold cterm=bold gui=bold guifg=LightGreen
" see  cterm-colors  in  $vimfiles/QR.md

let b:current_syntax = "vim"

syntax sync fromstart  " for longer build scripts

