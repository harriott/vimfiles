
" Language: ffl: found file list
"  $AjB/bashrc-console
"  $MSn\PS\Profile.ps1
" Maintainer: Joseph Harriott
" Last Change: Thu 30 Jan 2025
" Detection: $vfv/filetype.vim

" $vfv/syntax/ffl.vim
"  also  $vfv/ftplugin/ffl.vim

if exists('b:current_syntax') | finish |  endif

syn match ffl_unix_leaf '/\zs[^/]*$' contains=ALL
hi def link ffl_unix_leaf DiffText
syn match ffl_fd_rg '^\(fd\|rg\) .*' contained
hi def link ffl_fd_rg Normal

let b:current_syntax = "ffl"

