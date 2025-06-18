
" Language: wntf - for output from my  fonts  function
" Maintainer: Joseph Harriott
" Last Change: jeu. 07 mars 2024
" see  $MSn/PS/Profile.ps1

" $vfv/syntax/wntf.vim

if exists('b:current_syntax') | finish | endif

syntax match wntf '^.*='

hi def wntf guifg=DarkGrey

let b:current_syntax = "wntf"

