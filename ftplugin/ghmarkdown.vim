" Couple of adjustments.
" Language:	ghmarkdown (= GitHub Flavored Markdown)
" Maintainer: Joseph Harriott
" Last Change: Mon 27 Oct 2014
" This file should be in your vimfiles\ftplugin folder.
" You need to this modeline in the file that you want to affect:
" vim: ft=ghmarkdown fdm=expr:

setlocal tw=0

" Markdown folding by header marks
" --------------------------------------
" just copying my markdown.vim:
function! MdF()
	let j = matchstr(getline(v:lnum), '^#\+') "defined j, even in no match
	" if there's a heading set an equivalent fold start
	if empty(j) | return "=" | else | return ">".len(j) | endif
endfunction

set fde=MdF() fdl=0 fdc=1
