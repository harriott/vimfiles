" vim: set fdl=2:

" Language: sut - for  $vimfiles/startuptimes
"  (only possible collision is subtool file for  Clip Studio Paint)
" Maintainer: Joseph Harriott
" Last Change: Sun 24 May 2026
" $vfv/ftplugin/sut.vim (also  $vfv/syntax/sut.vim)
"  *.sut  is detected by  $vfv/filetype.vim

" folding by 'times in msec'
" --------------------------
function! StartuptimesF()
  if getline(v:lnum) =~ '^times in msec$' | return ">1" | else | return "=" | endif
endfunction

setlocal fde=StartuptimesF() fdm=expr foldcolumn=1 nowrap textwidth=0

