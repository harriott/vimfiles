"
" Language:	sh
" Maintainer: Joseph Harriott
" Last Change: Tue 21 Apr 2020
" This file should be in your vimfiles\ftplugin folder.
" You need to specify ft=sh in a modeline in the file that you want to affect.

if exists("b:current_syntax")
  finish
endif

runtime! syntax/sh.vim

syntax region buildH start=/^ *#=\+/ end=/$/

" hi def link buildH term=bold cterm=bold gui=bold guifg=LightGreen
" hi def link buildH Identifier
" hi buildH Identifier
hi def buildH term=bold cterm=bold gui=bold guifg=Orange

let b:current_syntax = "shbuild"

