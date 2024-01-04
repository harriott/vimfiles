
" Language: convert -list font
" Maintainer: Joseph Harriott
" Last Change: Wed 08 Dec 2021

" f=$CrPl/IMclf-sbMb.txt; echo "vim: ft=IMclf fdm=expr:" > $f; convert -list font >> $f

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

