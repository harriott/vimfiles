
" Language:	sifw - for output of  $MSWin10\PSProfile.ps1  Function SIFWork
" Maintainer: Joseph Harriott
" Last Change: Sat 28 Jan 2023

" also  $vimfiles/ftplugin/sifw.vim

if exists('b:current_syntax') | finish |  endif

syn match sifw_pathish '^\(\/.*\|C:\\.*\)' contains=sifw_gdoafwe,sifw_fade  " paths in linux & MSWin
syn match sifw_gdoafwe '\([-._0-9a-zA-Z]\+\ze\/\.gitignore \|[-_0-9a-zA-Zé ]\+\.[0-9a-zA-Z]\+\ze \)' contained
" - matches git directory or any file with extension
hi def link sifw_gdoafwe DiffText

syn match sifw_fade ' > \zs.\+'
syn match sifw_fade '^:.\+'
syn match sifw_fade '^github.*'
syn match sifw_fade '^stackexchange'
syn match sifw_fade '^vim.\+'
hi def link sifw_fade LineNr

let b:current_syntax = "sifw"

