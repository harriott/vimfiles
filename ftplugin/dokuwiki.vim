" My adjustments
" Language: dokuwiki
" Maintainer: Joseph Harriott
" Last Change: Tue 07 Feb 2023
" $vimfiles/ftplugin/dokuwiki.vim

" Also  vim-dokuwiki:
"  comment out  setlocal foldmethod=syntax
"  detects  *.dw  files
"  manages the syntax

" If you want to trigger these adjustments from the modeline in a file, it's:
"  /* vim: set ft=dokuwiki: */

function! PageTitleToHyperlink()
  let l:pagetitle = getreg('"')
  execute 's#\v(^.*)'.l:pagetitle.'  (http.*)($| )#\1[[\2 |'.l:pagetitle.']]#'
endfunction
vnoremap <buffer><leader>hh y:call PageTitleToHyperlink()<CR>
" (I'm using two h's because  gitgutter.vim  binds some \hx's)

" convert a line to external link
nnoremap <buffer> <leader>h :s/\(.\+\)  \(http.\+\)/[[\2 \|\1]]/<bar>noh<cr>

let b:match_words = '<:>'
" convert <title> <url> to DokuWiki hyperlink
set nospell
setlocal textwidth=0 foldexpr=DWF() fdl=0
setlocal foldmethod=expr
setlocal fdc=2 " slightly better distinction from line numbers
vnoremap <buffer>= <Nop>  " disable filter

""> abbreviations for code tags
iabbrev <buffer> </ </code>
iabbrev <buffer> </f </file>
iabbrev <buffer> <a <code awk>
iabbrev <buffer> <b <code bash>
iabbrev <buffer> <c <code css>
iabbrev <buffer> <d <code dos>
iabbrev <buffer> <j <code javascript>
iabbrev <buffer> <e <code perl>
iabbrev <buffer> <f <file>
iabbrev <buffer> <g <code go>
iabbrev <buffer> <h <code html>
iabbrev <buffer> <k <code haskell>
iabbrev <buffer> <l <code latex>
iabbrev <buffer> <o <code python>
iabbrev <buffer> <p <code powershell>
iabbrev <buffer> <r <code ruby>
iabbrev <buffer> <s <code lisp>
iabbrev <buffer> <u <code lua>
iabbrev <buffer> <v <code vim>
iabbrev <buffer> <x <code xml>
iabbrev <buffer> <y <code yaml>

""> add wrap indent tags around quotes
" For use when Anika Henke's excellent Wrap Plugin is installed in DokuWiki.
" While developing this I used
"   :nmap \i
"     to check what's been mapped, and
"   :unmap <leader>i
"     to clear global mappings.
" Ensure magic is set, and make an atom of one or more occurences of > at start of line,
" replace that with that atom plus opening tag, then add closing tag to end of line:
nnoremap <buffer> <leader><leader>i :s/\m\(^>\+\) /\1 <wrap indent> /<CR><Bar>A </wrap><Esc>
" Notes: the repeat operator . will only repeat the last action here;
"    you can add a count, eg 3\i to work on the next three lines,
"    but only the last closing tag gets pasted, you have to do the other two manually.

""> folding by header marks
" much faster than that proposed in  $vfp/packs-cp/opt/vim-dokuwiki/syntax/dokuwiki.vim
" (based on http://stackoverflow.com/questions/3828606/vim-markdown-folding)
function! DWF()
	let j = len(matchstr(getline(v:lnum), '^=\+'))
	" if there's a heading set an equivalent fold start
	if     j =~ 6 | return ">1"
	elseif j =~ 5 | return ">2"
	elseif j =~ 4 | return ">3"
	elseif j =~ 3 | return ">4"
	elseif j =~ 2 | return ">5"
	endif
	" if there was no heading detected, just use the fold level from the previous line
    return "="
endfunction
" - requires this:  foldmethod=expr foldexpr=DWF()
"   and this helps visually:        foldcolumns=2

" - notes for this (adapted from
"     http://jeromyanglim.blogspot.fr/2011/04/case-study-in-customising-syntax.html)
"     getline => a Vim function that returns the content of a line.
"     v:lnum  => used by expr fold method to indicate a particular line number.
"     '^=\+'  => match from the start of the line (^) any number of contiguous '='s
"     =~      => a logical operator

""> heading manipulation
" boost up a heading:
nnoremap <buffer> <leader>= I=<Esc>A=<Esc>

" create a heading:
nnoremap <buffer> <leader><leader>= I=== <Esc>A ===<Esc>

""> monospacing
" convert monospaced to unformatted
nnoremap <leader><leader>5 ?''<cr>i<cr><esc>:s/''/%% /<cr>:s/''/ %%/<cr>kJ

" wrap the inner word under cursor with ''
nnoremap <buffer> <leader>' viwc''''<Esc>hP

" wrap a selection with ''
vnoremap <buffer> <leader>' c''''<Esc>hP

