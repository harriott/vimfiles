
" Language: rgtl  ($misc/CP/QR/QR.md)
" Maintainer: Joseph Harriott
" Last Change: Mon 15 Apr 2024
" solely for output of  rg --type-list > $ITscr/CP/ripgrep.rgtl
" $vfv/syntax/rgtl.vim   configured in  $vfv/filetype.vim

if exists('b:current_syntax') | finish | endif

syn match rgProgram '^.\+\ze:'  " colourise the program
hi def link rgProgram DiffAdd

syn match rgsc '\v,|:'  " dimming out punctuation
hi def link rgsc LineNr

let b:current_syntax = "rtgl"

