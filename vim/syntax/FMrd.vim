
" Language: FMrd
"  $onGH/FM-rsync-drives/README.md
"   https://github.com/harriott/FM-rsync-drives/blob/master/README.md
" Maintainer: Joseph Harriott
" Last Change: Sun 25 Oct 2026

" $vfv/syntax/FMrd.vim (also  $vfv/ftplugin/FMrd.vim)

syntax match Diminish '\(^-\|^A\|^v\).*$'
syntax match Fail '^!.*$'
syntax match Push '^Push.*$'

hi def Diminish guifg=DarkGrey
hi def Fail guifg=Red
hi def Push guifg=LightGreen
" see  cterm-colors  in  ../keystrokes.md

let b:current_syntax = "FMrd"

syntax sync fromstart  " for longer build scripts

