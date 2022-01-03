
" Language:	convert -list font
" Maintainer: Joseph Harriott
" Last Change: Wed 08 Dec 2021

" f=$CP/IMclf-sbMb.txt; echo "vim: ft=IMclf fdm=expr:" > $f; convert -list font >> $f

if exists('b:current_syntax') | finish |  endif

syntax region fontPath start=/^Path: \|^  Font: / end=/$/
hi def link fontPath Folded  " for an unobtrusive heading

" syn match fontPath 'Path: ' nextgroup=filename
" syn match filename '[-_0-9a-zA-Z]\+' contained
" hi def link filename DiffText

let b:current_syntax = "IMclf"

