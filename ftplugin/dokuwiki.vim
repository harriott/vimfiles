" Folding adjustments
" Language:	dokuwiki
" Maintainer: Joseph Harriott
" Last Change: Sat 22 Feb 2014
" This file should be in your vimfiles\ftplugin folder,
" and you'll need to (autocmd BufRead,BufNewFile) setlocal ft=dokuwiki.

" If you want to trigger these adjustments from the modeline in a file, it's:
" /* vim: set ft=dokuwiki fdm=expr: */
" (My preference would be to set foldmethod in this ftplugin, but doing so
" makes it global, for some reason I've not fathomed.)

setlocal tw=0 fde=DWF() fdl=2 fdc=1

" DokuWiki folding by header marks
" --------------------------------
" (based on http://stackoverflow.com/questions/3828606/vim-markdown-folding)
function! DWF()
	let j = len(matchstr(getline(v:lnum), '^=\+'))
	" if there's a heading set an equivalent fold start
	if     j =~ 6 | return ">1"
	elseif j =~ 5 | return ">2"
	elseif j =~ 4 | return ">3"
	elseif j =~ 3 | return ">4"
	endif
	" if there was no heading detected, just use the fold level from the previous line
    return "=" 
endfunction
" - requires this:  foldmethod=expr foldexpr=DWF()
"   and this helps visually:        foldcolumns=1

" - notes for this (adapted from
"     http://jeromyanglim.blogspot.fr/2011/04/case-study-in-customising-syntax.html)
"     getline => a Vim function that returns the content of a line. 
"     v:lnum  => used by expr fold method to indicate a particular line number.
"     '^=\+'  => match from the start of the line (^) any number of contiguous '='s
"     =~      => a logical operator

