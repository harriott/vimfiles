
" Vim syntax file

" Language:	Get-NetFirewallRule
" Maintainer: Joseph Harriott
" Last Change: Mon 17 Jan 2022
" $vimfiles/syntax/NFR.vim

" you'll need modeline  vim: set ft=NFR:

if exists('b:current_syntax') | finish |  endif

syn match DisplayName '^DisplayName           : ' nextgroup=DN
syn match DN '.\+' contained
hi def link DN DiffText

let b:current_syntax = "NFR"

