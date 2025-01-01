" vim: set fdl=2:

" sourced by  $vfv/filetype.vim
" Language: emdr - for my draft emails ($vimfiles/sample.emdr)
" Maintainer: Joseph Harriott
" Last Change: Fri 30 Sep 2022
" also  $vfv/syntax/emdr.vim

" For lists:
if v:lang =~ 'fr'
  " AZERTY
  iabbrev <buffer> =< ⇒
else
  iabbrev <buffer> => ⇒
endif
"  s/^- /⇒ 

""> sectioning marks for emails
setlocal expandtab foldcolumn=1 foldexpr=EF() foldmethod=expr shiftwidth=2 spell textwidth=0

" create a heading around text:
nnoremap <buffer> <leader><leader>= I━━  <Esc>A  ━━<Esc>
nnoremap <buffer> <localleader>= I━━  <Esc>A  ━━<Esc>
" boost up a heading:
nnoremap <buffer> <leader>== I━━<Esc>A━━<Esc>
" demote a heading:
nnoremap <buffer> <leader>=- 0xx<Esc>$xx<Esc>
" insert a wavy line:
nnoremap <buffer> <leader># 099i~<Esc>

"">> folding by header marks
function! EF()
	let j = strchars(matchstr(getline(v:lnum), '^━\+'))
	" if there's a heading set an equivalent fold start
	if     j =~ 6 | return ">1"
	elseif j =~ 4 | return ">2"
	elseif j =~ 2 | return ">3"
	endif
	" if there was no heading detected, just use the fold level from the previous line
    return "="
endfunction

