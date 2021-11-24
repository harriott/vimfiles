
" Vim syntax file

" Language:	digraphs
"  for  $vimfiles/digraphs.txt  created by  $vimfiles/digraphsTidy.pl
" Maintainer: Joseph Harriott
" Last Change: Sat 06 Nov 2021

" This file should be in your  .vim/syntax  folder.
" You need this modeline in the file that you want to affect:  vim: ft=digraphs:

if exists('b:current_syntax') | finish |  endif

syn match DigChar '`` \S\S'  " dimming out my separator characters and the digraph keystrokes
hi def link DigChar LineNr

let b:current_syntax = "digraphs"

