
" Language: ffl: found file list
"  $AjB/bashrc-console
"  $MSn\PS\Profile.ps1
" Maintainer: Joseph Harriott
" Last Change: Wed 29 Jan 2025
" Detection: $vfv/filetype.vim

" also  $vfv/ftplugin/ffl.vim

if exists('b:current_syntax') | finish |  endif

syn match ffl_leaf '[^/]\+$'
hi def link ffl_leaf DiffText

let b:current_syntax = "ffl"

