
" Vim syntax file

" Language:	fetl: file extension time list
" Maintainer: Joseph Harriott
" Last Change: Sat 04 Feb 2023

" $vimfiles/syntax/fetl.vim
"  for
"   dts.*  files  ($Bash/bashrc-console)
"   lwt.*  files  ($MSWin10/PSProfile.ps1)
" configured in  $vimfiles/filetype.vim  or with  vim: ft=fetl:

" also  $vimfiles/ftplugin/fetl.vim

if exists('b:current_syntax') | finish |  endif

syn match fetl_pathish '\(\/.*\| C:\\.*\)' contains=fetl_gdoafwe  " paths in linux & MSWin
syn match fetl_gdoafwe '\([-._0-9a-zA-Z]\+\ze\(\/\|\\\)\.git.*$\|[-_0-9a-zA-Zé ]\+\.[a-zA-Z]\+$\)' contained
" - matches git directory or any file with extension
hi def link fetl_gdoafwe DiffText

let b:current_syntax = "fetl"

