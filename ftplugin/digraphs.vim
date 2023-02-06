
" Language:	digraphs
"  for  $vimfiles/digraphs.txt  created by  $vimfiles/digraphsTidy.pl
" Maintainer: Joseph Harriott
" Last Change: Sat 27 Aug 2022
"
" also  $vimfiles/syntax/digraphs.vim
" You need this modeline in the file that you want to affect:  vim: ft=digraphs:

" folding by header marks
" -----------------------
function! DigF()
  if getline(v:lnum) =~ '^# ' | return ">1" | else | return "=" | endif
endfunction

setlocal fde=DigF() foldcolumn=1 fdm=expr

