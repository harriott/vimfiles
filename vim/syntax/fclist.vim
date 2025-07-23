
" Language: fclist: output of  fc-list
"  see  $OSAB/QR/QR.md
" Maintainer: Joseph Harriott
" Last Change: Sun 25 May 2025
" Detection: $vfv/filetype.vim

" $vfv/syntax/fclist.vim  also  $vfv/ftplugin/fclist.vim

if exists('b:current_syntax') | finish |  endif

hi def link fclist_dir LineNr
hi def link fclist_style LineNr
syn match fclist_dir '/usr/share/fonts/.\{-}: '
syn match fclist_style ':style=.*'

let b:current_syntax = "fclist"

