" Vim ftplugin file

" Language:	rsnapshot log
" Maintainer: Joseph Harriott
" Last Change: Tue 31 May 2022

" $vimfiles/ftplugin/rsnapshotlog.vim
"  for  /var/log/rsnapshot  (- defined in  $MACHINE/etc/rsnapshot.conf
" you need this modeline in the file that you want to affect:  vim: ft=rsnapshotlog:

" see also  $vimfiles/syntax/rsnapshotlog.vim

" folding by " started"
" ---------------------
function! RsnF()
  if getline(v:lnum) =~ ' started' | return ">1" | else | return "=" | endif
endfunction

setlocal fde=RsnF() foldcolumn=1 fdm=expr nowrap

