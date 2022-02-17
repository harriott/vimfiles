" Language:	email
" Maintainer: Joseph Harriott
" Last Change: Mon 01 Mar 2021

" $vimfiles/ftplugin/email.vim
" The intention here is to have a simple means for writing headings in emails,
" and with the bonus of highlighting hyperlinks.

" If you want to trigger these adjustments from the modeline in a file, it's:
" vim: set ft=email:
" preferable to also have my  $vimfiles/syntax/email.vim  then can see  $vimfiles/ftplugin/email.txt

setlocal et tw=0 foldcolumn=1 fde=EF() fdm=expr shiftwidth=2 spell

" create a heading around text:
nnoremap <buffer> <leader><leader>= I==  <Esc>A  ==<Esc>
" boost up a heading:
nnoremap <buffer> <leader>== I==<Esc>A==<Esc>
" demote a heading:
nnoremap <buffer> <leader>=- 0xx<Esc>$xx<Esc>
" insert a wavy line:
nnoremap <buffer> <leader># 099i~<Esc>

" folding by header marks
" -----------------------
" see dokuwiki.vim for explanation
function! EF()
	let j = len(matchstr(getline(v:lnum), '^=\+'))
	" if there's a heading set an equivalent fold start
	if     j =~ 6 | return ">1"
	elseif j =~ 4 | return ">2"
	elseif j =~ 2 | return ">3"
	endif
	" if there was no heading detected, just use the fold level from the previous line
    return "="
endfunction
" - requires this:  foldmethod=expr foldexpr=EF()
"   and this helps visually:        foldcolumns=1

" turn on ALE
let b:ale_enabled = 1

