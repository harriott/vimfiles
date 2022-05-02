
" Language:	Lua
" Maintainer: Joseph Harriott
" Last Change: Wed 27 Apr 2022

" folding
" -------
function! LuaF()
	let j = matchstr(getline(v:lnum), '^-- {{{ ') "defined j, even in no match
	if ! empty(j)
      return ">1"
    else
      return "="
    endif
endfunction

setlocal fde=LuaF() fdc=1 fdm=expr

