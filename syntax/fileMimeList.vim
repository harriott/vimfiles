
" Vim syntax file

" Language:	file type list, as made by  fmtypes() in my  $Bash/bashrc-console
" Maintainer: Joseph Harriott
" Last Change: Tue 23 May 2023

" $vimfiles/syntax/fileMimeList.vim

if exists('b:current_syntax') | finish |  endif

" Dim out middle zone:
syn match colonSemicolon ': [a-z/]\+; '
hi def link colonSemicolon LineNr

let b:current_syntax = "fileMimeList"

