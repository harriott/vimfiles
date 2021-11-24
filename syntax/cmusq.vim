
" Vim syntax file

" Language:	cmusq
" Maintainer: Joseph Harriott
" Last Change: Mon 22 Nov 2021

" $vimfiles/syntax/cmusq.vim
"  for the output of  $ARCHBUILDS/jo/Openbox/cmusqueue.sh
" you need this modeline in the file that you want to affect:  vim: ft=cmusq:

if exists('b:current_syntax') | finish |  endif

" Highlight the tracknumber only:
syn match filename '/\d\{1,2}'
hi def link filename DiffText

let b:current_syntax = "cmusq"

