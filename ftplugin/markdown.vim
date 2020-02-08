" Couple of adjustments.
" Language:	markdown
" Maintainer: Joseph Harriott
" Last Change: Mon 07 Oct 2019
" This file should be in your vimfiles\ftplugin folder.
" You need to this modeline in the file that you want to affect:
" vim: ft=markdown fdm=expr:

setlocal expandtab tw=0

" ALE
" ---
let b:ale_enabled = 0

" Markdown folding by header marks
" --------------------------------------
" (based on http://stackoverflow.com/questions/3828606/vim-markdown-folding)
function! MdF()
	let j = matchstr(getline(v:lnum), '^#\+') "defined j, even in no match
	" if there's a heading set an equivalent fold start
	if empty(j) | return "=" | else | return ">".len(j) | endif
endfunction

set fde=MdF() fdl=0 fdc=1

" open Pandoc'd pdf
nnoremap <buffer> <S-F11> :call CompiledPDF()<CR>

if has('unix') " should really be asking if Perl is available
  nnoremap <S-F7> :execute "silent !perl $DROPBOX/JH/IT_stack/onGitHub/miscUtils/mysmsMD.pl ".expand('%:p')<CR>
else
  nnoremap <S-F7> :execute "silent !perl D:\Dropbox\JH\IT_stack\onGitHub\miscUtils\mysmsMD.pl ".expand('%:p')<CR>
  " fails - try with fileformat dos
endif

" for Verse
" ---------
" prepend >  & append  :
vnoremap <buffer> <F12> :s#^\v(.+)$#> \1  #g <bar> nohlsearch <CR>
" remove   from the last line of a stanza:
vnoremap <buffer> <S-F12> :s#^\v(.+)  $\n^$#\1\r#g <CR>

