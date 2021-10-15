
" Vim syntax file

" Language:	leader
"  for  $vimfiles/grabbed/leaderUses.txt  created by  $vimfiles/grabbed/grabMaps.sh
" Maintainer: Joseph Harriott
" Last Change: Fri 15 Oct 2021

" This file should be in your .vim/syntax folder.
" You need to this modeline in the file that you want to affect:  vim: ft=leader:

if exists('b:current_syntax') | finish |  endif

" syn keyword leader leader nextgroup=gt
" syn keyword leader <leader> nextgroup=keystrokes
" syntax iskeyword @,>
" syn keyword gt > contained nextgroup=keystrokes
syn match leader '<leader>\c' nextgroup=keystrokes
syn match keystrokes '\S\+' contained
" hi def link gt DiffAdd
" hi def link keystrokes DiffAdd
hi def link keystrokes StatusLineTerm

let b:current_syntax = "leader"

