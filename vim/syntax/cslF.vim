
" Vim syntax file

" Language: cslF - for my  clamscan log FOUND file ( $OSAB/Bash/bashrc-generic )
" Maintainer: Joseph Harriott
" Last Change: Thu 04 Aug 2022
" $vfv/syntax/cslF.vim

if exists("b:current_syntax")
  finish
endif

setlocal nowrap

syntax match threat '/\h.\+: \zs.\+'
hi def link threat WarningMsg

let b:current_syntax = "cslF"

