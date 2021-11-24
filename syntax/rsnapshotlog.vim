" Vim syntax file

" Language:	rsnapshot log
" Maintainer: Joseph Harriott
" Last Change: Sun 21 Nov 2021

" $vimfiles/syntax/rsnapshotlog.vim
"  for  /var/log/rsnapshot  (- defined in  $MACHINE/etc/rsnapshot.conf
" you need this modeline in the file that you want to affect:  vim: ft=rsnapshotlog:

if exists("b:current_syntax")
  finish
endif

syntax match rsnFold /^\[.* started$/

hi def link rsnFold Folded " for an unobtrusive heading

let b:current_syntax = "rsnapshotlog"

