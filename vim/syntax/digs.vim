
" Language: digs
"  for  $vimfiles/digraphs.digs  created by  $vimfiles/digraphsTidy.pl
" Maintainer: Joseph Harriott
" Last Change: Wed 22 Mar 2023

" $vimfiles/syntax/digs.vim  (also  $vimfiles/ftplugin/digs.vim) configured in  $vimfiles/filetype.vim

if exists('b:current_syntax') | finish | endif

syn match DigChar '`` \S\S'  " dimming out my separator characters and the digraph keystrokes
hi def link DigChar LineNr

set nospell

let b:current_syntax = "digs"

