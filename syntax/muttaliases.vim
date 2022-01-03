" Language:	mutt aliases file
" Maintainer: Joseph Harriott
" Last Change: Sun 12 Apr 2020

" This file should be in your vimfiles\syntax folder,
"  set filetype=muttaliases

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Comments
syntax match commentText '# .\+'
hi def link commentText Comment

" the alias lines
syntax match aliascommand '^alias' nextgroup=Alias skipwhite
hi def link aliascommand Statement
syntax match Alias '.\{-}\(\ <\)\@=' contained
hi def link Alias PreProc

let b:current_syntax = "muttaliases"

