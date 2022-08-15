
" Language:	SIF - for output of  $MSWin10\PSProfile.ps1  Function SIFWork
" Maintainer: Joseph Harriott
" Last Change: Thu 11 Aug 2022

" also  $vimfiles/ftplugin/SIF.vim

if exists('b:current_syntax') | finish |  endif

syn match fade ' > .\+'
syn match fade '^:.\+'
syn match fade '^vim.\+'
hi def link fade LineNr

let b:current_syntax = "SIF"

