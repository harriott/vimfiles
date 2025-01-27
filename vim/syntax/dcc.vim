
" Language: dcc: Dropbox conflicted copies ($Drpbx\conflicted)
" Maintainer: Joseph Harriott
" Last Change: lun 27 janv 2025

" $vfv/syntax/dcc.vim
"  detection: $vfv/filetype.vim
" also  $vfv/ftplugin/dcc.vim

if exists('b:current_syntax') | finish |  endif

syn match dccf '[^\\]\+\ze (Copie'
hi def link dccf DiffText

let b:current_syntax = "dcc"

