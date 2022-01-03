
" Vim syntax file

" Language:	file type list
" Maintainer: Joseph Harriott
" Last Change: Wed 10 Nov 2021

"  for
"   dts.*  files  made by  $ fx <fileExtension>  - see  $Bash/bashrc-console
"   lwt.*  files  made by  PS> lwt-*  - see  $MSWin10\PSProfile.ps1

" This file should be in your  .vim/syntax  folder.
" You need this modeline in the file that you want to affect:  vim: ft=ftlist:

if exists('b:current_syntax') | finish |  endif

" Highlight the filename only:
syn match pathish '\(.*\/\|.*\\\)' nextgroup=filename
syn match filename '[-_0-9a-zA-Z]\+' contained
hi def link filename DiffText

let b:current_syntax = "ftlist"

