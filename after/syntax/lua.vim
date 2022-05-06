
" Language:	Lua
" Maintainer: Joseph Harriott
" Last Change: Fri 06 May 2022
" Syntax highlighting for folding my Lua scripts.
" supplementary to  $VIMRUNTIME/syntax/lua.vim
" (I set  fdm=expr  in  $vimfiles/ftplugin/lua.vim)

syntax sync fromstart  " for longer build scripts

syntax match foldLua '^-- -.*$'

hi def foldLua term=bold cterm=bold gui=bold guifg=LightGreen
" see  cterm-colors  in  $vimfiles/QR.md


let b:current_syntax = "lua"

