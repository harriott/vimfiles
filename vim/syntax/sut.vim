
" Language: sut - for  $vimfiles/startuptimes
" Maintainer: Joseph Harriott
" Last Change: Sun 24 May 2026

" $vfv/syntax/sut.vim  (also  $vfv/ftplugin/sut.vim)
"Detection: $vimfiles/filetype.vim

if exists('b:current_syntax') | finish | endif

syn match sut_head '^times in msec$'
hi def sut_head term=bold cterm=bold gui=bold guifg=LightGreen

syn match sut_lead '^\d\d\d.\+[^:]\(: sourcing\|:\)'  " dimming out leading info
hi def link sut_lead LineNr

set nospell

let b:current_syntax = "sut"

