" My adjustments
" Language:	dokuwiki
" Maintainer: Joseph Harriott
" Last Change: Sun 28 Mar 2021
" This file should be in your vimfiles\ftplugin folder,
" and you might want to (autocmd BufRead,BufNewFile) setlocal ft=dokuwiki.

" If you want to trigger these adjustments from the modeline in a file, it's:
"  /* vim: set ft=dokuwiki: */
" You should also have  https://github.com/nblock/vim-dokuwiki/blob/master/syntax/dokuwiki.vim
"  installed at  $HOME/vimfiles/syntax/dokuwiki.vim
"  with this line commented out:  setlocal foldmethod=syntax

" While developing this plugin, I used
" :source $HOME/vimfiles/ftplugin/dokuwiki.vim

setlocal tw=0 fde=DWF() fdl=0 fdm=expr
setlocal fdc=2 " slightly better distinction from line numbers

""> abbreviations for code tags
iab </ </code>
iab </f </file>
iab <a <code awk>
iab <b <code bash>
iab <d <code dos>
iab <j <code javascript>
iab <e <code perl>
iab <f <file>
iab <h <code html>
iab <l <code latex>
iab <p <code powershell>
iab <o <code python>
iab <v <code vim>
iab <y <code yaml>

""> add wrap indent tags around quotes
" For use when Anika Henke's excellent Wrap Plugin is installed in DokuWiki.
" While developing this I used
"   :nmap \i
"     to check what's been mapped, and
"   :unmap <leader>i
"     to clear global mappings.
" Ensure magic is set, and make an atom of one or more occurences of > at start of line,
" replace that with that atom plus opening tag, then add closing tag to end of line:
nnoremap <buffer> <leader>i :s/\m\(^>\+\) /\1 <wrap indent> /<CR><Bar>A </wrap><Esc>
" Notes: the repeat operator . will only repeat the last action here;
"    you can add a count, eg 3\i to work on the next three lines,
"    but only the last closing tag gets pasted, you have to do the other two manually.

""> DokuWiki folding by header marks
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
"   and this helps visually:        foldcolumns=2

" - notes for this (adapted from
"     http://jeromyanglim.blogspot.fr/2011/04/case-study-in-customising-syntax.html)
"     getline => a Vim function that returns the content of a line.
"     v:lnum  => used by expr fold method to indicate a particular line number.
"     '^=\+'  => match from the start of the line (^) any number of contiguous '='s
"     =~      => a logical operator

""> for the syntax plugin
let dokuwiki_comment=1 " can't see what this achieves...
let g:dokuwiki_fenced_languages = ['html', 'python', 'sh', 'vim']
" not available in $VIMRUNTIME\syntax: powershell

""> headings
" boost up a heading:
nnoremap <buffer> <leader>= I=<Esc>A=<Esc>

" create a heading:
nnoremap <buffer> <leader><leader>= I=== <Esc>A ===<Esc>

" having just selected a web-page heading, format it into a DokuWiki hyperlink
function! PageTitleToHyperlink()
  let l:pagetitle = getreg('"')
  execute 's#\v(^.*)'.l:pagetitle.'  (http.*)($| )#\1[[\2 |'.l:pagetitle.']]#'
endfunction
vnoremap <buffer><leader>hh y:call PageTitleToHyperlink()<CR>
" (I'm using two h's because  gitgutter.vim  binds some \hx's)

""> monospace
" wrap the inner word under cursor with ''
nnoremap <buffer> <leader>' viwc''''<Esc>hP

" wrap a selection with ''
vnoremap <buffer> <leader>' c''''<Esc>hP

