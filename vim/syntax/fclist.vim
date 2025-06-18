
" Language: fclist: output of  fc-list
"  $OSL/nodes/bashrc-console-fm
"  see  $OSAB/QR/QR.md
" Maintainer: Joseph Harriott
" Last Change: Sun 25 May 2025
" Detection: $vfv/filetype.vim

" $vfv/syntax/fclist.vim  also  $vfv/ftplugin/fclist.vim

if exists('b:current_syntax') | finish |  endif

hi def link fclist_leaf DiffText | syn match fclist_leaf '[\\/]\zs[^"./\\]*\(\.\w[-.0-9_a-zA-Z]\+\)\=$'
" - might have an extension
" weird snag if very magic
"  /\v[\/]\zs[^"./\\]*(.\w[-.0-9_a-zA-Z]+)=$
"  - includes some parent directories, eg in  $Cfzd/films.ffl - fixed by removing that 3rd .

let b:current_syntax = "fclist"

