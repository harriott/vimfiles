
" Language: gpgk - GnuPG & pacman keys - $OSAB/QR/QR.md
" cd $culLA; fd -tf -e gpgk
" Maintainer: Joseph Harriott
" Last Change: Sat 20 Jun 2026
" Detection: $vfv/filetype.vim

" $vfv/syntax/gpgk.vim

if exists('b:current_syntax') | finish |  endif

hi def link pmk_bg LineNr
hi def link pmk_uid Normal
syn match pmk_bg '.*'
syn match pmk_uid '^uid.*'

let b:current_syntax = "gpgk"

