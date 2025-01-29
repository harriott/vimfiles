
" Language: PEM (Privacy Enhanced Mail)
" Maintainer: Joseph Harriott - http://harriott.github.io
" Last Change: Wed 08 Jan 2025
" for
"  .asc ($DCGRs/dts-asc.ffl) ASCII armor (.pem  in  $vfv/filetype.vim)
"  .crt ($ulLAb/ml-$host/CAC) certificate (.pem  in  /usr/share/vim/vim91/filetype.vim)

" $vfv/syntax/pem.vim
"  also  $vfv/ftplugin/pem.vim

" gray down the blocks
" --------------------
syntax region PEMblock start=/^-----BEGIN / end=/^-----END [ A-Z]\+-----$/
hi def link PEMblock LineNr

let b:current_syntax = "pem"

syntax sync fromstart  " for longer PGP blocks

