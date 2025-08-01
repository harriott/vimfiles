
" Language: gpgk - pacman keys - $OSAB/QR/QR.md
" Maintainer: Joseph Harriott
" Last Change: Wed 23 Jul 2025
" Detection: $vfv/filetype.vim

" $vfv/syntax/gpgk.vim

if exists('b:current_syntax') | finish |  endif

hi def link pmk_bg LineNr
hi def link pmk_uid Normal
syn match pmk_bg '.*'
syn match pmk_uid '^uid.*'

let b:current_syntax = "gpgk"

