" Vim ftplugin file

" Language: rsnapshot log
" Maintainer: Joseph Harriott
" Last Change: mar 07 juil 2026

" $vfv/ftplugin/rsnapshotlog.vim
"  for  /var/log/rsnapshot  (- defined in  $ABnm/etc/rsnapshot.conf)

" see also  $vfv/syntax/rsnapshotlog.vim

" folding by " started"
" ---------------------
function! RsnF()
  if getline(v:lnum) =~ ' started' | return ">1" | else | return "=" | endif
endfunction

setlocal fde=RsnF() foldcolumn=1 fdm=expr nowrap

