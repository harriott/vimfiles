
" Vim syntax file

" Language: file type list, as made by  fmtypes() ($OSL/nodes/bashrc-console-fm)
" Maintainer: Joseph Harriott
" Last Change: Mon 04 May 2026

" $vfv/syntax/fileMimeList.vim

if exists('b:current_syntax') | finish |  endif

" Dim out middle zone:
syn match colonSemicolon ': [a-z/]\+; '
hi def link colonSemicolon LineNr

let b:current_syntax = "fileMimeList"

