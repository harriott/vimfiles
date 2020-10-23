
" Language:	my rsync log files
" Maintainer: Joseph Harriott
" Last Change: Mon 12 Oct 2020

syntax match Diminish '\(^-\|^A\|^v\).*$'
syntax match Fail '^!.*$'
syntax match Push '^Push.*$'

hi def Diminish guifg=DarkGrey
hi def Fail guifg=Red
hi def Push guifg=LightGreen
" see  cterm-colors  in  ../keystrokes.md

let b:current_syntax = "rsynclog"

syntax sync fromstart  " for longer build scripts

