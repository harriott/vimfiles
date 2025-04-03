
" Language: rgov
"  for output of
"   $vfs/all-unix-maps.ps1
"   $vfs/all-win64-maps.ps1
" Maintainer: Joseph Harriott
" Last Change: dim 30 mars 2025
" $vfv/syntax/rgov.vim  also  $vfv/ftplugin/rgov.vim
" Detection: $vfv/filetype.vim

if exists('b:current_syntax') | finish | endif

" filepath
hi def link rgovfp LineNr
syn match rgovfp '^.\{-}\ze ⋮' contains=rgovfn
" - matches up to rg separator
  hi def link rgovfn DiffText
  syn match rgovfn '[-_0-9a-zA-Zé ]\+\(\.\a[0-9a-zA-Z]\+\)\=\ze ⋮' contained
  " - matches many types of file names

" matched line
hi def link rgovml StatusLine
syn match rgovml ' ⋮.\+$' contains=rgovf,rgovl,rgovm,rgovmv,rgovp
" - matches from rg separator
  hi def link rgovf WarningMsg | syn match rgovf '\c<\(f\|s-f\)\d\+>'
  hi def link rgovl MoreMsg | syn match rgovl '<leader>' contained
  hi def link rgovm Folded
  syn match rgovm '\<map ' contained
  " - map word is also frequent in other contexts
  hi def link rgovmv MoreMsg
  syn match rgovmv '\v<(imap|inoremap|keymap|nmap|noremap|nnoremap|omap|onoremap|vmap|vnoremap|xmap|xnoremap)>' contained
  " - map variants
  hi def link rgovp Normal | syn match rgovp '\c<plug>' contained

let b:current_syntax = "rgov"

