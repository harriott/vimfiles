
" Language: wntf - for output from my  fonts  function
" Maintainer: Joseph Harriott
" Last Change: jeu. 07 mars 2024
" see  $MSWin10\PSProfile.ps1 (https://github.com/harriott/OS-MSWin10/blob/master/PSProfile.ps1)

" $vimfiles/syntax/wntf.vim

if exists('b:current_syntax') | finish | endif

syntax match wntf '^.*='

hi def wntf guifg=DarkGrey

let b:current_syntax = "wntf"

