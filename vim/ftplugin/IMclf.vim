
" Language: IMclf ($OSAB/QR.md)
" Maintainer: Joseph Harriott
" Last Change: mer 03 avr 2024

" $vimfiles/ftplugin/IMclf.vim
"  also  $vimfiles/syntax/IMclf.vim
"  configured in  $vimfiles/filetype.vim

set fdm=expr

" folding
" -------
function! IMclf()
	let j = matchstr(getline(v:lnum), '^Path: ') "defined j, even in no match
	let k = matchstr(getline(v:lnum), '^  Font: ') "defined k, even in no match
	if ! empty(j)
      return ">1"
    elsei ! empty(k)
      return ">2"
    el
      return "="
    endif
endfunction

setlocal fde=IMclf() fdc=1

