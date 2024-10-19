
" Language: clones - for my  $misc/GRs/all.clones
" Maintainer: Joseph Harriott
" Last Change: Sat 19 Oct 2024
" Detection: $vfv/filetype.vim

" $vimfiles/syntax/clones.vim

if exists("b:current_syntax")
  finish
endif

setlocal nowrap

syntax match clonesUrl ' http.*'
hi def link clonesUrl LineNr

let b:current_syntax = "clones"

