
" Vim syntax file

" Language:	file type list
" Maintainer: Joseph Harriott
" Last Change: Mon 08 Aug 2022

"  for
"   dts.*  files  made by  $ fx <fileExtension>  - see  $Bash/bashrc-console
"   lwt.*  files  made by  PS> lwt-*  - see  $MSWin10/PSProfile.ps1

" also  $vimfiles/ftplugin/ftlist.vim
" vim: ft=ftlist:

if exists('b:current_syntax') | finish |  endif

" Highlight the filename only:
syn match pathish '\(.*\/\|.*\\\)' nextgroup=filename
syn match filename '[ -_0-9a-zA-Z]\+' contained
hi def link filename DiffText

let b:current_syntax = "ftlist"

