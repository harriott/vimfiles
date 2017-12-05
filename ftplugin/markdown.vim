" Couple of adjustments.
" Language:	markdown
" Maintainer: Joseph Harriott
" Last Change: Wed 04 Dec 2013
" This file should be in your vimfiles\ftplugin folder.
" You need to this modeline in the file that you want to affect: 
" vim: ft=markdown fdm=expr:

setlocal expandtab tw=0

" Add a useful abbreviation for URL highlighting:
" inoremap <buffer> < <><Esc>i
" Was working, but wasn't as useful as I'd expected.

" Markdown folding by header marks
" --------------------------------------
" (based on http://stackoverflow.com/questions/3828606/vim-markdown-folding)
function! MdF()
	let j = matchstr(getline(v:lnum), '^#\+') "defined j, even in no match
	" if there's a heading set an equivalent fold start
	if empty(j) | return "=" | else | return ">".len(j) | endif
endfunction

set fde=MdF() fdl=0 fdc=1
"
" for Verse
" ---------
" prepend >  & append  :
vnoremap <buffer> <F12> :s#^\v(.+)$#> \1  #g <bar> nohlsearch <CR>
" remove   from the last line of a stanza:
vnoremap <buffer> <S-F12> :s#^\v(.+)  $\n^$#\1\r#g <CR>

