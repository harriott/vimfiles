
" Vim syntax file

" Language: slJH  " symlinks in JH, which could bother Dropbox
" Maintainer: Joseph Harriott
" Last Change: Wed 03 Jan 2024

" $vimfiles/syntax/slJH.vim (& $vimfiles/ftplugin/slJH.vim)
" see  $misc/linux/symlinks_log.sh

if exists('b:current_syntax') | finish |  endif

" Highlight the symlink filename only:
syn match symfish '[-.0-9_a-zA-Z]\+ >>'
syn match symfile '[-.0-9_a-zA-Z]\+ ' containedin=symfish contained
hi def link symfile DiffText

let b:current_syntax = "slJH"

