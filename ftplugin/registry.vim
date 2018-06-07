" Folded Windows registry backups
" Language:	MSWin registry backup file
" Maintainer: Joseph Harriott http://momentary.eu/
" Last Change: Thu 07 Jun 2018
" This file should be in your vimfiles\ftplugin folder!

setlocal tw=0 fdc=1 fde=WRF() fdl=0 fdm=expr nowrap

" registry folding by key names
" -----------------------------
function! WRF()
	let j = getline(v:lnum)
	if empty(matchstr(j, '^[HKEY_'))
		return "="
	else
		return ">1"
	endif
endfunction

