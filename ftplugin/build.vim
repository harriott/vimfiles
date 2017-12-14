" Couple of adjustments.
" Language:	build - text files of my system builds, nicely folded up
" Maintainer: Joseph Harriott
" Last Change: Tue 24 Mar 2015
" This file should be in your .vim/ftplugin folder.
" You need to this modeline in the file that you want to affect: 
" vim: ft=build fdm=expr:
" To be used in conjunction with .vim/syntax/build.vim

setlocal expandtab tw=0

" folding by header marks
" -----------------------
" copied from my ftplugin/markdown.vim
function! BdF()
	let j = matchstr(getline(v:lnum), '^#\+') "defined j, even in no match
	" if there's a heading set an equivalent fold start
	if empty(j) | return "=" | else | return ">".len(j) | endif
endfunction

set fde=BdF() fdc=1
