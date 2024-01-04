
" Vim syntax file

" Language: leader
"  for  $vimfiles/grabbed/leaderUses.txt  created by  $vimfiles/grabbed/grabMaps.sh
" Maintainer: Joseph Harriott
" Last Change: Fri 15 Oct 2021

" This file should be in your .vim/syntax folder.
" You need this modeline in the file that you want to affect:  vim: ft=leader:

if exists('b:current_syntax') | finish |  endif

syn match leader '<leader>\c' nextgroup=keystrokes
syn match keystrokes '\S\+' contained
hi def link keystrokes StatusLineTerm

let b:current_syntax = "leader"

