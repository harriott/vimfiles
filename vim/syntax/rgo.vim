
" Language: rgo
" Maintainer: Joseph Harriott
" Last Change: Mon 15 Apr 2024
" for general  ripgrep  output
" $vfv/syntax/rgo.vim   configured in  $vfv/filetype.vim

if exists('b:current_syntax') | finish | endif

syn match rgOFN '^\(C:\|..\)[^:]*:'  " dim out the filename
hi def link rgOFN LineNr

let b:current_syntax = "rgo"

