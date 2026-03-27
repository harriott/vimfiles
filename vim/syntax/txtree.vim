" vim: se fdl=1:

" Language: TextTree
" Maintainer: Joseph Harriott
" Last Change: Fri 27 Mar 2026

" $vfv/syntax/txtree.vim
"  also  $vfv/ftplugin/txtree.vim

if exists("b:current_syntax") | finish | endif

syntax match txtree_authorship '\C\u[a-z ]*\zs[^\[]*'
hi def link txtree_authorship LineNr

syntax match txtree_rank '\[.*'
hi def link txtree_rank StatusLine

let b:current_syntax = "txtree"

