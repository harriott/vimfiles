" vim: set fdl=2:

" Language:	text
" Maintainer: Joseph Harriott
" Last Change: Tue 22 Feb 2022
" $vimfiles/ftplugin/text.vim  - supplementary to  $VIMRUNTIME/ftplugin/text.vim

setlocal expandtab
" textwidth=0  is defined in  $vimfiles/vimrc_example.vim

" ALE
let b:ale_enabled = 0  " turn off
let b:ale_linters = ['languagetool']

""> sectioning marks for emails
setlocal expandtab foldcolumn=1 foldexpr=EF() foldmethod=expr shiftwidth=2 spell

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

