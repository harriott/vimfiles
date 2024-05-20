" vim: set fdl=1:

" Language:	Lua
" Maintainer: Joseph Harriott
" Last Change: Sat 11 May 2024
" Syntax highlighting for folding my Lua scripts.

" $vimfiles/vim/after/syntax/lua.vim
"  supplementary to  $VIMRUNTIME/syntax/lua.vim
"  (I set  fdm=expr  in  $vimfiles/vim/ftplugin/lua.vim)

let g:after_syntax_lua = 1

syntax sync fromstart  " for longer build scripts

""> 0 highlight my folds
" overriding  :hi def link luaComment Comment
" eg for  $ulLA/old/mb-AsusW202/jo/awesome/rc.lua

" syntax match foldLua '-- -.*$'
syntax match foldLua '^\s*-- -\+>.*$'

" Unfolded headings:
hi def foldLua term=bold cterm=bold gui=bold guifg=LightGreen
" - not working in WT: $CrPl\encoding\Vim\nvim\lua_syntax_in_NVIM_0_10_0.md

""> 1 ends
let b:current_syntax = "lua"

