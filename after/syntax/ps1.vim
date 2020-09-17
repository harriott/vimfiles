"
" Language:	sh
" Maintainer: Joseph Harriott
" Last Change: Thu 17 Sep 2020
" this file should be in your vimfiles\syntax folder
" you should at least have this in your modeline: " vim: ft=ps1.ps1region:

" syntax match regionstart '#region' " unfortunately overrides the folding...
syntax match regiontitle '--- .*'

hi def regiontitle term=bold cterm=bold gui=bold guifg=LightGreen
" " see  cterm-colors  in  ../keystrokes.md

if !exists('g:ps1_nofold_region')
  " this addition of a matchgroup is neccessary for regiontitle to also work
    syn region ps1Region matchgroup=Identifier start=/#region/ end=/#endregion/ transparent fold keepend extend
endif

