
" Vim syntax file

" Language: cpanList
"  for lists created by  $onGH\misc\PerlTools\ExtUtilsInstalled.ps1
" Maintainer: Joseph Harriott
" Last Change: Sat 29 Jan 2022

if exists('b:current_syntax') | finish | endif

syn match ofs '   ' nextgroup=module
syn match module '\S\+' contained
hi def link module DiffText

let b:current_syntax = "cpanList"

