
" Language: gnudiff (output of gnu diffutils)
" Maintainer: Joseph Harriott
" Last Change: Thu 04 Jan 2024

" $vimfiles/syntax/gnudiff.vim  configured in  $vimfiles/filetype.vim

if exists('b:current_syntax') | finish | endif

syn match gdAnd ' and '
hi def link gdAnd LineNr
syn match gdDiffer ' differ$'
hi def link gdDiffer LineNr
syn match gdFiles '^Files'
hi def link gdFiles LineNr
syn match gdOnly '^Only in '
hi def link gdOnly LineNr

let b:current_syntax = "digs"

