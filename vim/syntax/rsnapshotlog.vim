" Vim syntax file

" Language: rsnapshot log
" Maintainer: Joseph Harriott
" Last Change: Tue 31 May 2022

" also  $vimfiles/ftplugin/rsnapshotlog.vim
" for  /var/log/rsnapshot  (- defined in  $machBld/etc/rsnapshot.conf)

" see also  $vimfiles/ftplugin/rsnapshotlog.vim

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

