" Vim ftplugin file

" Language:	rsnapshot log
" Maintainer: Joseph Harriott
" Last Change: Sun 21 Nov 2021

" $vimfiles/ftplugin/rsnapshotlog.vim
"  for  /var/log/rsnapshot  (- defined in  $MACHINE/etc/rsnapshot.conf
" you need this modeline in the file that you want to affect:  vim: ft=rsnapshotlog:

" folding by " started"
" ---------------------
function! RsnF()
  if getline(v:lnum) =~ ' started' | return ">1" | else | return "=" | endif
endfunction

setlocal fde=RsnF() foldcolumn=1 fdm=expr

