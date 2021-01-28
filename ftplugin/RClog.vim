
" Language:	my RoboCopy log files
" Maintainer: Joseph Harriott
" Last Change: Sat 17 Oct 2020

" You need to add this modeline in the file that you want to affect:
"  vim: ft=RClog:

" folding by folder name
" ----------------------
function! RCF()
	let j = matchstr(getline(v:lnum), '^# ') "defined j, even in no match
	if empty(j) | return "=" | else | return ">1" | endif
endfunction

setlocal fde=RCF() fdc=1 fdm=expr nowrap tw=0
