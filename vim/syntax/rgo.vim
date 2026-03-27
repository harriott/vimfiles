
" Language: rgo ($AjB/bashrc-console; $MSn/PS/Profile.ps1, which also has  rgw)
" Maintainer: Joseph Harriott
" Last Change: Tue 17 Feb 2026
" Detection: $vfv/filetype.vim

" $vfv/syntax/rgo.vim  also  $vfv/ftplugin/rgo.vim

if exists('b:current_syntax') | finish | endif

" Rationale:
"  rg  output can have quite varied filepaths
"   consider these commands run from  $onGH:
"      $ rg tricky       > test.rgo  gets  misc/tricky/...
"      $ rg tricky $onGH > test.rgo  gets  /mnt/SDU3D1TB/Dropbox/...
"    PS> rg tricky       > test.rgo  gets  misc\tricky\...
"    PS> rg tricky $onGH > test.rgo  gets  D:\Dropbox\...
"  so I don't bother trying to highlight them
"  (and the quoted text, of course, could be anything)
"  it'd be nice to highlight the filename.ext, but it's too fiddly

syn match rgo_quoted ':::.*' contains=ALL
hi def link rgo_quoted LineNr

syn match rgo_fms ':::' contained
hi def link rgo_fms CursorLineNr

let b:current_syntax = "rgo"

