
" Language: ffl: found file list
"  $AjB/bashrc-console
"  $MSn/PS/Profile.ps1
"  $OSL/nodes/bashrc-console-fm
" Maintainer: Joseph Harriott
" Last Change: lun 31 mars 2025
" Detection: $vfv/filetype.vim

" $vfv/syntax/ffl.vim  also  $vfv/ftplugin/ffl.vim

if exists('b:current_syntax') | finish |  endif

hi def link ffl_leaf DiffText | syn match ffl_leaf '[\\/]\zs[^"./\\]*\(\.\w[-.0-9_a-zA-Z]\+\)\=$'
" - might have an extension
" weird snag if very magic
"  /\v[\/]\zs[^"./\\]*(.\w[-.0-9_a-zA-Z]+)=$
"  - includes some parent directories, eg in  $Cfzd/films.ffl - fixed by removing that 3rd .

let b:current_syntax = "ffl"

