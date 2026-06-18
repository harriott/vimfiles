
" Language: gems - see  $OSAB/QR/encoding.md
"  gem list > $culLA/$host/gems.gems
" Maintainer: Joseph Harriott
" Last Change: Thu 04 Jun 2026
" $vfv/syntax/gems.vim
" Detection: $vfv/filetype.vim

if exists('b:current_syntax') | finish | endif

syn match gems_version '(.*'
hi def link gems_version LineNr

set nospell

let b:current_syntax = "gems"

