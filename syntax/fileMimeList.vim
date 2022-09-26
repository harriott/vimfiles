
" Vim syntax file

" Language:	file type list
" Maintainer: Joseph Harriott
" Last Change: Mon 19 Sep 2022

" $vimfiles/syntax/fileMimeList.vim

if exists('b:current_syntax') | finish |  endif

" Dim out middle zone:
syn match colonSemicolon ': [a-z/]\+; '
hi def link colonSemicolon LineNr

let b:current_syntax = "fileMimeList"

