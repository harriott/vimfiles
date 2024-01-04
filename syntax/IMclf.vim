
" Language: convert -list font
" Maintainer: Joseph Harriott
" Last Change: Wed 08 Dec 2021

" f=$CrPl/IMclf-sbMb.txt; echo "vim: ft=IMclf fdm=expr:" > $f; convert -list font >> $f

if exists('b:current_syntax') | finish |  endif

syntax region fontPath start=/^Path: \|^  Font: / end=/$/
hi def link fontPath Folded  " for an unobtrusive heading

let b:current_syntax = "IMclf"

