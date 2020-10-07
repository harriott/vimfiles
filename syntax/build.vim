" Vim syntax file
" Language:	build - text files of my system builds, nicely folded up
" Maintainer: Joseph Harriott
" Last Change: Tue 24 Mar 2015
" This file should be in your .vim/syntax folder.
" You need to this modeline in the file that you want to affect:
" vim: ft=build fdm=expr:
" To be used in conjunction with my .vim/ftplugin/build.vim

if exists("b:current_syntax")
  finish
endif

syntax region buildH start=/^#/ end=/$/

hi def link buildH Folded " for an unobtrusive heading

let b:current_syntax = "build"

