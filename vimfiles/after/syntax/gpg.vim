" vim: fdl=1:

" Language:	gpg  extended for my  $ABjo/gpg-agent.conf
" Maintainer: Joseph Harriott
" Last Change: Sun 16 Apr 2023
" $vimfiles/after/syntax/gpg.vim, supplementary to  $VIMRUNTIME/syntax/gpg.vim

" syn keyword gpgCommand allow-preset-passphrase
syn keyword gpgCommand contained skipwhite allow-preset-passphrase
syn keyword gpgCommand contained skipwhite nextgroup=gpgArg default-cache-ttl max-cache-ttl pinentry-program
