" vim: se fdl=1:

" Language: TextTree
" Maintainer: Joseph Harriott
" Last Change: Mon 30 Mar 2026

" $vfv/syntax/txtree.vim (also  $vfv/ftplugin/txtree.vim)

if exists("b:current_syntax") | finish | endif

syntax match txtree_t_as '\u.*\ze\[\U*\]' " needed to allow  txtree_a_de
  syntax match txtree_authorship '\C\u[a-z ]*\zs.*\ze\[' containedin=txtree_t_as
    hi def link txtree_authorship LineNr
  syntax match txtree_a_de '\C de \u\U*\ze\[' containedin=txtree_t_as
    hi def link txtree_a_de LineNr
  syntax match txtree_t_BOLD '\CBOLD.* ' containedin=txtree_t_as
    syntax match txtree_unranked '\C\[unranked\]'
      hi def link txtree_unranked StatusLine

syntax match txtree_rank '\[.*'
hi def link txtree_rank StatusLine

let b:current_syntax = "txtree"

