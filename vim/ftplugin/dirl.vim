
" Language: dirl - for output of  $onGH/FM-DirLVF/DirLVF.py
" Maintainer: Joseph Harriott - http://harriott.github.io
" Last Change: Sun 05 Feb 2023

" $vimfiles/ftplugin/dirl.vim
"  also  $vimfiles/syntax/dirl.vim
" Detection: $vimfiles/filetype.vim

setlocal tw=0 fdc=1 fde=DirlFold() fdl=1 fdm=expr

" dirl folding by header marks
" ----------------------------
function! DirlFold()
	let t = getline(1)
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

