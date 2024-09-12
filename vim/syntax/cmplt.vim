
" Language: cmplt ($OSAB/QR.md)
" Maintainer: Joseph Harriott
" Last Change: Fri 10 May 2024
" $vfv/syntax/cmplt.vim   configured in  $vfv/filetype.vim

if exists('b:current_syntax') | finish | endif

syn match cmplt '\v(complete |-a |-c |-F |-j |-o |bashdefault |default |nospace |-P |-S |-u )'  " dim out the command grammar
hi def link cmplt LineNr

let b:current_syntax = "cmplt"

