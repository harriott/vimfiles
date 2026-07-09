
" Language: ssh_pub_list ($OSAB/bs-5-when_myDrA/ssh-1-files.sh)
" Maintainer: Joseph Harriott
" Last Change: d8d
" Detection: $vfv/filetype.vim

" $vfv/syntax/ssh_pub_list.vim

if exists('b:current_syntax') | finish | endif

syn match ssh_pub_list_file '^[^\.]\+\.pub'
hi def link ssh_pub_list_file ErrorMsg

syn match ssh_pub_list_key ' [^ ]\+ [^ ]\+ '
hi def link ssh_pub_list_key LineNr

let b:current_syntax = "ssh_pub_list"

