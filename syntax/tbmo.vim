
" Language:	mutt aliases file
" Maintainer: Joseph Harriott
" Last Change: Fri 09 Jun 2023

"  vim: se ft=tbmo:

" $vimfiles/syntax/tbmo.vim  configured in  $vimfiles/filetype.vim

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Comments
syntax match commentText '# .\+'
hi def link commentText Comment

" email groups
syntax match email '<.\{-}>'
hi def link email Constant

let b:current_syntax = "tbmo"

