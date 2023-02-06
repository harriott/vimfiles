
" Language:	gems
"  gem list > $ulL/Arch/$host/gems.gems
" Maintainer: Joseph Harriott
" Last Change: Mon 06 Feb 2023
" $vimfiles/syntax/gems.vim
" configured in  $vimfiles/filetype.vim  or with  vim: ft=gems:

if exists('b:current_syntax') | finish | endif

syn match gems_version '(.*'
hi def link gems_version LineNr

set nospell

let b:current_syntax = "gems"

