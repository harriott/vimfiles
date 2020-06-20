" Couple of adjustments.
" Language:	markdown
" Maintainer: Joseph Harriott
" Last Change: Mon 07 Oct 2019
" This file should be in your vimfiles\ftplugin folder.
" You need to this modeline in the file that you want to affect:
" vim: ft=markdown fdm=expr:

setlocal expandtab tw=0

" ALE
let b:ale_enabled = 0

" demote a heading
vnoremap <buffer><leader>> :s/^#/##/<CR>
" promote a heading
vnoremap <buffer><leader>< :s/^#//<CR>

" Convert mysms screen scrape to markdown:
"  (I'm using <leader> here to avoid accidentally running this)
if has('unix') " should really be asking if Perl is available
  nnoremap <buffer><leader><F7> :execute "silent !perl $ITstack/onGitHub/misc/tools/mysmsMD.pl ".expand('%:p')<CR>
else
  nnoremap <buffer><leader><F7> :execute "silent !perl $ITstack\onGitHub\miscUtils\mysmsMD.pl ".expand('%:p')<CR>
  " fails - try with fileformat dos
endif

" open Pandoc'd pdf
nnoremap <buffer> <F12> :call CompiledPDF()<CR>

" wrap the inner word under cursor with backticks
nnoremap <buffer> <leader>` viwc``<Esc>P

" Markdown folding by header marks
" --------------------------------------
" (based on http://stackoverflow.com/questions/3828606/vim-markdown-folding)
function! MdF()
	let l:hashcount = matchstr(getline(v:lnum), '^#\+') "defined l:hashcount, even in no match
	" if there's a heading set an equivalent fold start
	if empty(l:hashcount) | return "=" | else | return ">".len(l:hashcount) | endif
endfunction

set fde=MdF() fdl=0 fdc=1

" for Verse
" ---------
" prepend >  & append  :
vnoremap <buffer> <leader>v1 :s#^\v(.+)$#> \1  #g <bar> nohlsearch <CR>
" remove   from the last line of a stanza:
vnoremap <buffer> <leader>v2 :s#^\v(.+)  $\n^$#\1\r#g <CR>

