
" Language: IMfo ($OSAB/QR.md)
" Maintainer: Joseph Harriott
" Last Change: Tue 09 Apr 2024

" $vfv/syntax/IMfo.vim
"  also  $vfv/ftplugin/IMfo.vim
"  configured in  $vimfiles/filetype.vim

if exists('b:current_syntax') | finish |  endif

syntax region fontPath start=/^Path: \|^  Font: / end=/$/
hi def link fontPath Folded  " for an unobtrusive heading

let b:current_syntax = "IMfo"

