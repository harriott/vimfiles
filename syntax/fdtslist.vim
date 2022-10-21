
" Vim syntax file

" Language:	file type list
" Maintainer: Joseph Harriott
" Last Change: Mon 26 Sep 2022

" $vimfiles/syntax/fdtslist.vim
"  for
"   dts.*  files  ($Bash/bashrc-console)
"   lwt.*  files  ($MSWin10/PSProfile.ps1)

" also  $vimfiles/ftplugin/fdtslist.vim
" vim: ft=ftlist:

if exists('b:current_syntax') | finish |  endif

syn match pathish '\(\/.*\| C:\\.*\)' contains=gdoafwe  " paths in linux & MSWin
syn match gdoafwe '\([-._0-9a-zA-Z]\+\ze\/\.gitignore$\|[-_0-9a-zA-Zé ]\+\.[a-zA-Z]\+$\)' contained
" - matches git directory or any file with extension
hi def link gdoafwe DiffText

let b:current_syntax = "ftlist"

