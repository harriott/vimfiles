" Folded directory listing - for files created by accompanying program DirLVF.py
" Language:	MSWin directory paths, and file lists
" Maintainer: Joseph Harriott http://momentary.eu/
" Last Change: Sat 01 Nov 2014
" This file should be in your vimfiles\ftplugin folder!

setlocal tw=0 fdc=1 fde=DLF() fdl=1 fdm=expr

" dirlist folding by header marks
" --------------------------------
function! DLF()
	let t = getline(3)
	let j = getline(v:lnum)
	if empty(matchstr(j, '^\.'))
		return "="
	else
        if empty(matchstr(t, '/'))
	    	let k =	substitute(j, "\\", "", "g")
        else
	    	let k =	substitute(j, "/", "", "g")
        endif
		let l = len(j) - len(k) +1
		return ">".l
	endif
endfunction

