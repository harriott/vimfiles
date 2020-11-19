" My adjustments
" Language:	dokuwikifoldtest - temporary test of my dokuwiki folding
" Maintainer: Joseph Harriott
" Last Change: Thu 19 Nov 2020

setlocal tw=0 fde=DWFT() fdl=0 fdm=expr
setlocal fdc=2 " slightly better distinction from line numbers

" my folding by header marks
" --------------------------
function! DWFT()
	let j = len(matchstr(getline(v:lnum), '^=\+'))
	" if there's a heading set an equivalent fold start
	if     j =~ 6 | return ">1"
	elseif j =~ 5 | return ">2"
	elseif j =~ 4 | return ">3"
	elseif j =~ 3 | return ">4"
	endif
	" if there was no heading detected, just use the fold level from the previous line
    return "="
endfunction

