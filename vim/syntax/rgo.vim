
" Language: rgo - for general  ripgrep  output
" Maintainer: Joseph Harriott
" Last Change: Mon 15 Apr 2024
" $vfv/syntax/rgo.vim
" Detection: $vfv/filetype.vim

if exists('b:current_syntax') | finish | endif

" syn match rgOFN '^\(C:\|..\)[^:]*:'  " dim out the filename
" hi def link rgOFN LineNr

" syn match rgofpc '^.\+' contains=rgofn  " ripgrep output file path & :
syn match rgofn '^[-/._0-9a-zA-Z]\+\ze:'
hi def link rgofn DiffText

syn match rgsc ':'  " dimming out punctuation
hi def link rgsc LineNr

let b:current_syntax = "rgo"

