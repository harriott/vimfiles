" vim: set fdl=1:

" Language:	Lua
" Maintainer: Joseph Harriott
" Last Change: Sat 11 May 2024
" Syntax highlighting for folding my Lua scripts.

" $vimfiles/vim/after/syntax/lua.vim
"  supplementary to  $VIMRUNTIME/syntax/lua.vim
"  (I set  fdm=expr  in  $vimfiles/vim/ftplugin/lua.vim)

syntax sync fromstart  " for longer build scripts

""> 0 highlight my folds
" eg for  $ulLA/old/mb-AsusW202/jo/awesome/rc.lua

" syntax match foldLua '-- -.*$'
syntax match foldLua '^\s*-- -\+>.*$'

hi def foldLua term=bold cterm=bold gui=bold guifg=CursorLineNr
" see  cterm-colors  in  $vimfiles/QR.md

""> 1 ends
let b:current_syntax = "lua"

