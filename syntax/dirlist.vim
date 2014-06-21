" Vim compact directory listing syntax file - for files created by accompanying program DirLVF.py
" Language: dirlist
" Maintainer: Joseph Harriott http://momentary.eu/
" Last Change: Mon 17 Mar 2014
" This file should be in your vimfiles\syntax folder!

" initial checks. See `:help 44.12` (http://vimdoc.sourceforge.net/htmldoc/usr_44.html#44.12)
if exists("b:current_syntax")
 finish
endif

if version < 600
 syntax clear
elseif exists("b:current_syntax")
 finish
endif

" Directory pattern
syn match dirlistdirectory /^\..*/

""" Highlighting
hi link dirlistdirectory Title

"set name
let b:current_syntax = "dirlist"
