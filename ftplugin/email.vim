" Language:	email
" Maintainer: Joseph Harriott
" Last Change: Thu 09 Apr 2020

" The intention here is to have a simple means for writing headings in emails,
" and with the bonus of highlighting hyperlinks.

" This file should be in your vimfiles\ftplugin folder,
" and you'll need to (autocmd BufRead,BufNewFile) setlocal ft=email.

" If you want to trigger these adjustments from the modeline in a file, it's:
" vim: set ft=email:
" Preferable to also have my  ../syntax/email.vim

setlocal tw=0 fdc=1 fde=EF() fdl=0 fdm=expr

" create a heading around text:
nnoremap <leader><leader>= I== <Esc>A ==<Esc>
" boost up a heading:
nnoremap <leader>== I==<Esc>A==<Esc>
" demote a heading:
nnoremap <leader>=- 0xx<Esc>$xx<Esc>

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

