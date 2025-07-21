
" Language: Get-NetFirewallRule
" Maintainer: Joseph Harriott
" Last Change: Mon 17 Jan 2022
" $vfv/ftplugin/NFR.vim

" you'll need modeline  vim: set ft=NFR:

setlocal tw=0 fdc=1 fde=NFR() fdl=0 fdm=expr nowrap

function! NFR()
	let j = getline(v:lnum)
	if empty(matchstr(j, '^Name'))
		return "="
	else
		return ">1"
	endif
endfunction

