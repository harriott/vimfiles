
" Vim syntax file

" Language: unix_file.vim - for output of unix  file *
" Maintainer: Joseph Harriott
" Last Change: ven 13 sept 2024

" $vimfiles/syntax/unix_file.vim  configured in  $vfv/filetype.vim

if exists("b:current_syntax")
  finish
endif

setlocal nowrap

syntax match unix_file_description ':.*'
hi def link unix_file_description LineNr

let b:current_syntax = "unix_file"

