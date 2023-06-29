
" Vim syntax file

" Language:	slJH
" Maintainer: Joseph Harriott
" Last Change: Tue 17 May 2022

" for my  $DJH/slJH.log

" You need this modeline in the file that you want to affect:  vim: ft=slJH:

if exists('b:current_syntax') | finish |  endif

" Highlight the symlink filename only:
" syn match symfish '\(\.\|\d.\|\h\).* ->'
syn match symfish '[-.0-9_a-zA-Z]\+ >>'
syn match symfile '[-.0-9_a-zA-Z]\+ ' containedin=symfish contained
hi def link symfile DiffText

let b:current_syntax = "slJH"

