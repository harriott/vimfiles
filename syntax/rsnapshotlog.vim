" Vim syntax file

" Language:	rsnapshot log
" Maintainer: Joseph Harriott
" Last Change: Sun 30 Jan 2022

" $vimfiles/syntax/rsnapshotlog.vim
"  for  /var/log/rsnapshot  (- defined in  $MACHINE/etc/rsnapshot.conf
" you need this modeline in the file that you want to affect:  vim: ft=rsnapshotlog:

if exists("b:current_syntax")
  finish
endif

syntax match rsnFold /^\[.* started$/
hi def link rsnFold Folded  " for an unobtrusive heading

syn match excluded ' --delete-excluded ' nextgroup=directories
syn match directories '\S\+' contained
hi def link directories DiffText  " highlighting source directories

syn match completed 'completed successfully'
hi def link completed buildY  " success

let b:current_syntax = "rsnapshotlog"

