
" Vim syntax file

" Language:	cmusq
" Maintainer: Joseph Harriott
" Last Change: Thu 04 Aug 2022

" $vimfiles/syntax/cmusq.vim
"  for the output of  $ABjo/Openbox/cmusqueue.sh
" you need this modeline in the file that you want to affect:  vim: ft=cmusq:

if exists('b:current_syntax') | finish | endif

" Highlight the tracknumber only:
syn match filename '.\+/\zs\d\{1,2}'
hi def link filename DiffText

let b:current_syntax = "cmusq"

