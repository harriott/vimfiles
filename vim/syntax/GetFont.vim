
" Vim syntax file

" Language: PowerShell Fonts module  Get-Font  output ($MSn/PS/Profile.ps1)
" Maintainer: Joseph Harriott
" Last Change: mar 04 nov 2025
" $vfv/syntax/GetFont.vim

" you'll need modeline  vim: set ft=NFR:

if exists('b:current_syntax') | finish |  endif

syn match GetFont 'C:\\Windows\\Fonts\\'
hi def link GetFont LineNr

let b:current_syntax = "NFR"

