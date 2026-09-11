
" Language: drcl: Dropbox conflicted list
"  for output of my  dcc0() ($AjB/bashrc-wm)
" Maintainer: Joseph Harriott
" Last Change: lun 03 août 2026
" Detection: $vfv/filetype.vim

" $vfv/syntax/drcl.vim  also  $vfv/ftplugin/dcrl.vim

if exists('b:current_syntax') | finish |  endif

hi def link DrConflictedLeaf DiffText
syn match DrConflictedLeaf '[^/]\+\ze (' " somehow highlights () n Vim

hi def link DrConflictedOrigin LineNr
syn match DrConflictedOrigin '(.*' " only effective in Neovim

let b:current_syntax = "drcl"

