
" Language: gems
"  gem list > $ulLA/$host/gems.gems
" Maintainer: Joseph Harriott
" Last Change: Mon 15 Apr 2024
" $vfv/syntax/gems.vim
" Detection: $vfv/filetype.vim

if exists('b:current_syntax') | finish | endif

syn match gems_version '(.*'
hi def link gems_version LineNr

set nospell

let b:current_syntax = "gems"

