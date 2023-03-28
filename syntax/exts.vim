
" Language:	exts
" Maintainer: Joseph Harriott
" Last Change: Wed 22 Mar 2023

" $vimfiles/syntax/exts.vim  configured in  $vimfiles/filetype.vim

if exists('b:current_syntax') | finish | endif

syn match sortFrequency '\d\+`'  " dimming out my separator characters and the digraph keystrokes
hi def link sortFrequency LineNr

set nospell

let b:current_syntax = "exts"

