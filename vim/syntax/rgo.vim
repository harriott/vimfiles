
" Language: rgo - rgw ... > results.rgo
" Maintainer: Joseph Harriott
" Last Change: Sun 25 May 2025
" Detection: $vfv/filetype.vim

" $vfv/syntax/rgo.vim  also  $vfv/ftplugin/rgo.vim

if exists('b:current_syntax') | finish | endif

" results.rgo  can have quite varied filepaths
"  consider these commands run from  $onGH:
"     $ rg tricky       > test.rgo  gets  misc/tricky/...
"     $ rg tricky $onGH > test.rgo  gets  /mnt/SDU3D1TB/Dropbox/...
"   PS> rg tricky       > test.rgo  gets  misc\tricky\...
"   PS> rg tricky $onGH > test.rgo  gets  D:\Dropbox\...
" so I don't bother trying to highlight them
" (and the quoted text, of course, could be anything)
" it'd be nice to highlight the filename.ext, but it's too fiddly

" (I also have  rgw  in  $MSn/PS/Profile.ps1)

syn match rgo_quoted ':::.*' contains=ALL
hi def link rgo_quoted LineNr

syn match rgo_fms ':::' contained
hi def link rgo_fms CursorLineNr

let b:current_syntax = "rgo"

