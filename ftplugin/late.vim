
" Language:	tex
" Maintainer: Joseph Harriott
" Last Change: Mon 25 Jan 2021
" This file should be in your vimfiles\ftplugin folder.
" You should at least have this in your modeline: # vim: ft=tex.latex:

" let percent=2

" folding by %%
" -------------
function! LTF()
    let l:percents = matchstr(getline(v:lnum), '^#\+') "defined l:percents, even in no match
	" let l:hashcount = matchstr(getline(v:lnum), '^#\+') "defined l:hashcount, even in no match
	" if there's a valid heading set a fold start
	" if empty(l:hashcount) | return "=" | else | return ">".len(l:hashcount) | endif
	" if empty(l:percents) | return "=" | else | return ">".len(l:percents) | endif
    if len(l:percents) >= 2
      return ">1"
    else
      return "="
    endif
endfunction

setlocal fde=LTF() fdc=1 fdm=expr

