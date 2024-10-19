
" Language: digs
"  for  $vimfiles/digraphs.digs  created by  $vimfiles/digraphsTidy.pl
" Maintainer: Joseph Harriott
" Last Change: Wed 22 Mar 2023

" $vimfiles/ftplugin/digs.vim  (&  $vimfiles/syntax/digs.vim)
"Detection: $vimfiles/filetype.vim

" folding by header marks
" -----------------------
function! DigF()
  if getline(v:lnum) =~ '^# ' | return ">1" | else | return "=" | endif
endfunction

setlocal fde=DigF() foldcolumn=1 fdm=expr

