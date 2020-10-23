
" Language:	my RoboCopy log files
" Maintainer: Joseph Harriott
" Last Change: Sun 18 Oct 2020

syntax match Folder '^# .*$'
syntax match Muted '\(^v\|^\s\).*$'

hi def Folder guifg=LightGreen
hi def Muted guifg=DarkGrey
" see  cterm-colors  in  ../keystrokes.md

let b:current_syntax = "RClog"

syntax sync fromstart  " for longer build scripts

