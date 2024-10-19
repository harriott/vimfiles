
" Language: ufco.vim - for output of unix command  file *
" Maintainer: Joseph Harriott
" Last Change: ven 13 sept 2024
" Detection: $vfv/filetype.vim

" $vimfiles/syntax/ufco.vim

if exists("b:current_syntax")
  finish
endif

setlocal nowrap

syntax match unix_file_description ':.*'
hi def link unix_file_description LineNr

let b:current_syntax = "ufco"

