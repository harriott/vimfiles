
" Language:	RClog - my RoboCopy log files
" Maintainer: Joseph Harriott
" Last Change: Sun 18 Oct 2020

syntax match RClogFolder '^# .*$'
syntax match RClogMuted '\(^v\|^\s\).*$'

hi def RClogFolder guifg=LightGreen
hi def RClogMuted guifg=DarkGrey
" see  cterm-colors  in  ../keystrokes.md

let b:current_syntax = "RClog"

syntax sync fromstart  " for longer build scripts

