
" Vim syntax file

" Language: clones - for my  $misc/GRs/all.clones
" Maintainer: Joseph Harriott
" Last Change: ven 13 sept 2024

" $vimfiles/syntax/clones.vim  configured in  $vfv/filetype.vim

if exists("b:current_syntax")
  finish
endif

setlocal nowrap

syntax match clonesUrl ' http.*'
hi def link clonesUrl LineNr

let b:current_syntax = "clones"

