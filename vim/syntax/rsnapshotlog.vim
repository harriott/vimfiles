" Vim syntax file

" Language: rsnapshot log
" Maintainer: Joseph Harriott
" Last Change: mar 07 juil 2026

" $vfv/ftplugin/rsnapshotlog.vim
"  for  /var/log/rsnapshot  (- defined in  $ABnm/etc/rsnapshot.conf)

" see also  $vfv/ftplugin/rsnapshotlog.vim

if exists("b:current_syntax")
  finish
endif

syntax match compSucc 'completed successfully'
hi def compSucc term=bold cterm=bold gui=bold guifg=LightGreen
" see  cterm-colors  in  $vimfiles/QR.md

syntax match rsnFold /^\[.* started$/
hi def link rsnFold Folded  " for an unobtrusive heading

syn match excluded ' --delete-excluded ' nextgroup=directories
syn match directories '\S\+' contained
hi def link directories DiffText  " highlighting source directories

let b:current_syntax = "rsnapshotlog"

