
" Language: leader
" Maintainer: Joseph Harriott
" Last Change: Fri 15 Oct 2021

if exists('b:current_syntax') | finish |  endif

syn match rgOFN '^[^:]*:'  " dim out the filename
hi def link rgOFN LineNr

syn match leader '<leader>\c' nextgroup=keystrokes
syn match keystrokes '\S\+' contained
hi def link keystrokes StatusLineTerm

let b:current_syntax = "leader"

