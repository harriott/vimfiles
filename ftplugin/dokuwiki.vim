" My adjustments
" Language:	dokuwiki
" Maintainer: Joseph Harriott
" Last Change: Tue 10 Apr 2018
" This file should be in your vimfiles\ftplugin folder,
" and you'll need to (autocmd BufRead,BufNewFile) setlocal ft=dokuwiki.

" If you want to trigger these adjustments from the modeline in a file, it's:
" /* vim: set ft=dokuwiki: */
" You should also have  https://github.com/nblock/vim-dokuwiki/blob/master/syntax/dokuwiki.vim
" installed at  $HOME/vimfiles/syntax/dokuwiki.vim

" While developing this plugin, I used
" :source $HOME/vimfiles/ftplugin/dokuwiki.vim

setlocal tw=0 fdc=1 fde=DWF() fdl=0 fdm=expr

" for the syntax plugin:
let dokuwiki_comment=1 " can't see what this achieves...
let g:dokuwiki_fenced_languages = ['html', 'python', 'sh', 'vim']
" not available in $VIMRUNTIME\syntax: powershell

" abbreviations for code tags
" ---------------------------
iab </ </code>
iab </f </file>
iab <a <code awk>
iab <b <code bash>
iab <d <code dos>
iab <e <code perl>
iab <h <code html>
iab <l <code latex>
iab <p <code powershell>
iab <y <code python>
iab <v <code vim>
iab <f <file>

" boost up a heading:
nnoremap <leader>= I=<Esc>A=<Esc>

" wrap a selection with ''
vnoremap <leader>' c''''<Esc>hP

" Mapping to add wrap indent tags around quotes
" ---------------------------------------------
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

