
" Language: rgtl  ($misc/CP/QR/QR.md)
" Maintainer: Joseph Harriott
" Last Change: mer 03 avr 2024

" $vimfiles/syntax/rgtl.vim   configured in  $vimfiles/filetype.vim

if exists('b:current_syntax') | finish | endif

syn match rgProgram '^.\+\ze:'  " colourise the program
hi def link rgProgram DiffAdd

syn match rgsc '\v,|:'  " dimming out punctuation
hi def link rgsc LineNr

let b:current_syntax = "rtgl"

