" vim: set fdl=2:

" Language:	emdr - for my draft emails
" Maintainer: Joseph Harriott
" Last Change: Tue 09 Aug 2022
" sourced by  $vimfiles/filetype.vim
" also  $vimfiles/syntax/emailDraft.vim

""> sectioning marks for emails
setlocal expandtab foldcolumn=1 foldexpr=EF() foldmethod=expr shiftwidth=2 spell textwidth=0

" create a heading around text:
nnoremap <buffer> <leader><leader>= I==  <Esc>A  ==<Esc>
" boost up a heading:
nnoremap <buffer> <leader>== I==<Esc>A==<Esc>
" demote a heading:
nnoremap <buffer> <leader>=- 0xx<Esc>$xx<Esc>
" insert a wavy line:
nnoremap <buffer> <leader># 099i~<Esc>

"">> folding by header marks
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

