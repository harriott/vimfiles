
" Language: wntf - see  $MSn/PS/Profile.ps1
" Maintainer: Joseph Harriott
" Last Change: dim 26 oct 2025
" Detection: $vfv/filetype.vim

" $vfv/syntax/wntf.vim

if exists('b:current_syntax') | finish | endif

setlocal nowrap

syntax match wntf '^.*='

hi def wntf guifg=DarkGrey

let b:current_syntax = "wntf"

