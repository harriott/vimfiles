
" Language:	jctl: output of journalctl
" Maintainer: Joseph Harriott
" Last Change: Sat 04 Feb 2023

" $vimfiles/syntax/jctl.vim
"  see  $Bash/bash_profile
"  configured in  $vimfiles/filetype.vim  or with  vim: ft=jctl:

if exists('b:current_syntax') | finish |  endif

" match time and host
syn match jctl_th '^\h\h\h \d\d \d\d:\d\d:\d\d \S*\ze '
hi def link jctl_th DiffText

let b:current_syntax = "jctl"

