
" Language: IMclf ($OSAB/QR.md)
" Maintainer: Joseph Harriott
" Last Change: mer 03 avr 2024

" $vimfiles/syntax/IMclf.vim
"  also  $vimfiles/ftplugin/IMclf.vim
"  configured in  $vimfiles/filetype.vim

if exists('b:current_syntax') | finish |  endif

syntax region fontPath start=/^Path: \|^  Font: / end=/$/
hi def link fontPath Folded  " for an unobtrusive heading

let b:current_syntax = "IMclf"

