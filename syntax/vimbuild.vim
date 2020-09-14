"
" Language:	sh
" Maintainer: Joseph Harriott
" Last Change: Mon 14 Sep 2020
" this file should be in your vimfiles\ftplugin folder
" you should at least have this in your modeline: " vim: fdm=expr ft=vim.vimbuild:

syntax match buildY '"">.*$'
syntax match buildN '.\+"">.*$'

hi def buildY term=bold cterm=bold gui=bold guifg=LightGreen
hi def buildN term=bold cterm=bold gui=bold guifg=LightGray
" see  cterm-colors  in  ../keystrokes.md

let b:current_syntax = "vimbuild"

syntax sync fromstart  " for longer build scripts

