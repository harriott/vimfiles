" vim: se fdl=1:

" Language: tree - output from (unix) tree, nicely folded up
" Maintainer: Joseph Harriott
" Last Change: Fri 07 Mar 2025

" $vfv/syntax/tree.vim
"  also  $vfv/ftplugin/tree.vim

if exists("b:current_syntax") | finish | endif

syntax match unix_tree ':'
hi def link unix_tree Constant

let b:current_syntax = "ufco"

