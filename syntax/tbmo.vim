
" Language: TBmo - Thunderbird mail-out - my lists for sending mails to multiple recipients
" Maintainer: Joseph Harriott
" Last Change: Thu 12 Oct 2023

" $vimfiles/syntax/tbmo.vim
" also  $vimfiles/ftplugin/tbmo.vim
" *.tbmo  is detected by  $vimfiles/filetype.vim

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" email
syntax match email '<.\{-}>'
hi def link email Constant

" groups
syntax match TBgroup '# .\+'
hi def link TBgroup Title

let b:current_syntax = "tbmo"

