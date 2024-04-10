
" Language: IMfo - see $OSAB/QR.md
" Maintainer: Joseph Harriott
" Last Change: Tue 09 Apr 2024

" $vimfiles/vim/ftplugin/IMfo.vim
"  also  $vimfiles/vim/syntax/IMfo.vim
"  configured in  $vimfiles/vim/filetype.vim

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

setlocal fde=FontTree() fdc=1

