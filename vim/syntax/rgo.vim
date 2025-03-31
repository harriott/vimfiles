
" Language: rgo - for general  ripgrep  output
" Maintainer: Joseph Harriott
" Last Change: Mon 15 Apr 2024
" $vfv/syntax/rgo.vim
" Detection: $vfv/filetype.vim

if exists('b:current_syntax') | finish | endif

" syn match rgOFN '^\(C:\|..\)[^:]*:'  " dim out the filename
" hi def link rgOFN LineNr

" syn match rgofpc '^.\+' contains=rgofn  " ripgrep output file path & :
" syn match rgofnc '^\v(D:|)\zs[-/.\\_0-9a-zA-Z]+:'
" syn match rgofnc '^\v(D:|)\zs[-/.\\_0-9a-zA-Z]+:' contains=rgofnl
" syn match rgofnc '^\v(D:|)[-/.\\_0-9a-zA-Z]+:' contains=rgofnl
" syn match rgofnc '^\(D:\)\@<=[-/.\\_0-9a-zA-Z]+:' contains=rgofnl
" - matches up to rg's colon
" syn match rgofnl '\v(D:|).{-}\zs[-_0-9a-zA-Zé ]\+\(\.\a[0-9a-zA-Z]\+\)\=\ze:' contained
syn match wrgofn 'D:\\[-\_0-9a-zA-Zé ]\{-}\zs[-_0-9a-zA-Zé ]\+\(\.\a[0-9a-zA-Z]\+\)\=\ze:' contained
syn match urgofn '^.*[-/_0-9a-zA-Zé ]\{-}\zs[-_0-9a-zA-Zé ]\+\(\.\a[0-9a-zA-Z]\+\)\=\ze:' contained
" syn match rgofnl 'lua' contained
" syn match rgofnl 'lua' containedin=rgofnc contained
" - matches git directory or any file with extension that starts with a letter
hi def link rgofnl DiffText

syn match rgsc ':'  " dimming out punctuation
hi def link rgsc LineNr

let b:current_syntax = "rgo"

