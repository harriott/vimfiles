
" Language: rplp - $culLA/repo_package_lists/readme.md
" Maintainer: Joseph Harriott
" Last Change: Tue 08 Jul 2025
" Detection: $vfv/filetype.vim

" $vfv/syntax/rplp.vim
" also  $vfv/ftplugin/rplp.vim

if exists('b:current_syntax') | finish |  endif

hi def link rplp_package DiffText
syn match rplp_package '^.*\/\zs.*\ze \d.*'

let b:current_syntax = "rplp"

