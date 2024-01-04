
" Language: my rsync log files
" Maintainer: Joseph Harriott
" Last Change: Mon 12 Oct 2020

" for logs from  $onGH/rsync-portabledrives/rsync.sh  (vim: fdm=expr ft=rsynclog:)

setlocal expandtab textwidth=0

" folding by sync number
" ----------------------
function! RsF()
	let j = matchstr(getline(v:lnum), '^Push sync ') "defined j, even in no match
	if empty(j) | return "=" | else | return ">1" | endif
endfunction

setlocal fde=RsF() fdc=1

