
" Language: fgc: found Git config - $AjB/bashrc-console
" Maintainer: Joseph Harriott
" Last Change: Wed 29 Jan 2025
" Detection: $vfv/filetype.vim
" also  $vfv/ftplugin/fgc.vim

if exists('b:current_syntax') | finish |  endif

syn match fgc_pathish '\([-+.:0-9]\+ \zs.*\| D:\\.*\)' contains=ALL  " paths in linux & MSWin
syn match fgc_gd '[-._0-9a-zA-Z]\+\ze\(\/\|\\\)\.git.*$' contained
hi def link fgc_gd DiffText

let b:current_syntax = "fgc"

