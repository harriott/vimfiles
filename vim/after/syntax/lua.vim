
" Language:	Lua
" Maintainer: Joseph Harriott
" Last Change: Wed 10 Apr 2024
" Syntax highlighting for folding my Lua scripts.

" $vimfiles/vim/after/syntax/lua.vim
"  supplementary to  $VIMRUNTIME/syntax/lua.vim
"  (I set  fdm=expr  in  $vimfiles/vim/ftplugin/lua.vim)

syntax sync fromstart  " for longer build scripts

" syntax match foldLua '-- -.*$'
syntax match foldLua '^\s*-- -\+>.*$'

hi def foldLua term=bold cterm=bold gui=bold guifg=LightGreen
" see  cterm-colors  in  $vimfiles/QR.md


let b:current_syntax = "lua"

