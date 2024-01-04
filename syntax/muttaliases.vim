
" Language: mutt aliases file
" Maintainer: Joseph Harriott
" Last Change: Mon 08 Aug 2022

" also  $vimfiles/ftplugin/muttaliases.vim
"  vim: se ft=muttaliases:
" I prefer this over  se ft=mailaliases.

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

