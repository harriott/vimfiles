
" Language: gcfl  .git/config  file list
" Maintainer: Joseph Harriott
" Last Change: Thu 24 Sep 2026
" Detection: $vfv/filetype.vim

" $vfv/syntax/gcfl.vim  also  $vfv/ftplugin/gcfl.vim

if exists('b:current_syntax') | finish |  endif

hi def link gcfl_dir DiffText
syn match gcfl_dir '[^/]\+\ze\/\.git'

let b:current_syntax = "gcfl"

