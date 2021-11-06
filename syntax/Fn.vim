
" Vim syntax file

" Language:	Fn
"  for  $vimfiles/grabbed/FnUses.txt  created by  $vimfiles/grabbed/grabMaps.sh
" Maintainer: Joseph Harriott
" Last Change: Thu 04 Nov 2021

" This file should be in your  .vim/syntax  folder.
" You need this modeline in the file that you want to affect:  vim: ft=Fn:

if exists('b:current_syntax') | finish |  endif

syn match Fnxx '<\(F\|S-F\)\d\+>'
hi def link Fnxx StatusLineTerm

let b:current_syntax = "Fn"

