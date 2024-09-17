
" Vim syntax file

" Language: build - text files of my system builds, nicely folded up
" Maintainer: Joseph Harriott
" Last Change: Thu 08 Sep 2022

" $vfv/syntax/build.vim  &  $vfv/ftplugin/build.vim
" vim: ft=build:

if exists("b:current_syntax") | finish | endif

syntax region buildH start=/^#/ end=/$/
hi def link buildH Folded  " for an unobtrusive heading

let b:current_syntax = "build"

