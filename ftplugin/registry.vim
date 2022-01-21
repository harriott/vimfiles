
" Folded Windows registry backups
" Language:	MSWin registry backup file (*.reg)
" Maintainer: Joseph Harriott http://momentary.eu/
" Last Change: Thu 07 Jun 2018
" $vimfiles/ftplugin/registry.vim

" you'll need modeline  vim: set ft=registry:

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

