
" Vim syntax file

" Language: OneTab exports
" Detection: $vfv/filetype.vim
" Maintainer: Joseph Harriott
" Last Change: lun 14 sept 2026
" Detection: $vfv/filetype.vim

" $vfv/syntax/OneTab.vim

if exists("b:current_syntax") | finish | endif

syntax match OneTab '^[^|]\+|'
hi def link OneTab Directory  " for an unobtrusive heading

let b:current_syntax = "OneTab"

