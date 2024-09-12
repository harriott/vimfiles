
" Language: Fn  - see  $vimfiles/settings/all-unix.sh
" Maintainer: Joseph Harriott
" Last Change: Mon 15 Apr 2024
" $vfv/syntax/Fn.vim  configured in  $vfv/filetype.vim

if exists('b:current_syntax') | finish |  endif

syn match rgOFN '^[^:]*:'  " dim out the filename
hi def link rgOFN LineNr

syn match Fnxx '\c<\(f\|s-f\)\d\+>'
hi def link Fnxx StatusLineTerm

let b:current_syntax = "Fn"

