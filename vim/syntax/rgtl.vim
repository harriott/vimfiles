
" Language: rgtl - solely for  rg --type-list > $ITscr/CP/ripgrep-type-list.rgtl
" Maintainer: Joseph Harriott
" Last Change: ven 04 oct 2024

" $vfv/syntax/rgtl.vim
" Detection: $vfv/filetype.vim

if exists('b:current_syntax') | finish | endif

" syn match rgOFN '^\(C:\|..\)[^:]*:'  " dim out the filename
" hi def link rgOFN LineNr

syn match rgpgn '^.\+\ze:'  " colourise the program group name
hi def link rgpgn DiffAdd

syn match rgsc '\v,|:'  " dimming out punctuation
hi def link rgsc LineNr

let b:current_syntax = "rgtl"

