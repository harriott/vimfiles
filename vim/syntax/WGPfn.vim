
" Language: WGPfn - $MSn/PS/Profile.ps1
" Maintainer: Joseph Harriott
" Last Change: mer 05 nov 2025
" $vfv/syntax/WGPfn.vim
" Detection: $vfv/filetype.vim

if exists("b:current_syntax") | finish | endif

setlocal nowrap

" highlight the  WinGet\Packages generic name
syntax match WGPgn '^.*\\\zs.\+\ze_M'
" syntax match WGPgn '^[^.]*.\zs\a\+'
hi def link WGPgn ErrorMsg

let b:current_syntax = "WGPfn"

