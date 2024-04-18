
" Language: rgo
" Maintainer: Joseph Harriott
" Last Change: Mon 15 Apr 2024
" for general  ripgrep  output
" $vimfiles/vim/syntax/rgo.vim   configured in  $vimfiles/vim/filetype.vim

if exists('b:current_syntax') | finish | endif

syn match rgOFN '^[^:]*:'  " dim out the filename
hi def link rgOFN LineNr

let b:current_syntax = "rgo"

