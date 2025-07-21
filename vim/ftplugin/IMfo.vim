
" Language: IMfo - see $OSAB/QR/QR.md
" Maintainer: Joseph Harriott
" Last Change: Tue 08 Jul 2025
" Detection: $vfv/filetype.vim

" $vfv/ftplugin/IMfo.vim
"  also  $vfv/syntax/IMfo.vim

set fdm=expr

" folding
" -------
function! FontTree()
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

setlocal fde=FontTree() fdc=1 fdl=1

