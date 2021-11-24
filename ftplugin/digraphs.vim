" Vim ftplugin file

" Language:	digraphs
"  for  $vimfiles/digraphs.txt  created by  $vimfiles/digraphsTidy.pl
" Maintainer: Joseph Harriott
" Last Change: Sat 06 Nov 2021
"
" This file should be in your .vim/ftplugin folder.
" You need this modeline in the file that you want to affect:  vim: ft=digraphs:

" folding by header marks
" -----------------------
function! DigF()
  if getline(v:lnum) =~ '^# ' | return ">1" | else | return "=" | endif
endfunction

setlocal fde=DigF() foldcolumn=1 fdm=expr

