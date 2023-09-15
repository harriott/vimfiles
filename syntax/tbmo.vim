
" Language:	TBmo - Thunderbird mail-out - my lists for sending mails to multiple recipients
" Maintainer: Joseph Harriott
" Last Change: Fri 15 Sep 2023

" $vimfiles/syntax/tbmo.vim
" also  $vimfiles/ftplugin/tbmo.vim
" *.tbmo  is detected by  $vimfiles/filetype.vim

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

