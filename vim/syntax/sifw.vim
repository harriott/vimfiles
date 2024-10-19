
" Language: sifw - for output of  $MSWin10\PSProfile.ps1  Function SIFWork,
"  used by
"   $MSWin10\PSProfile.ps1
"   $vfv/syntax/rgo.vim
" Maintainer: Joseph Harriott
" Last Change: ven 04 oct 2024

" also  $vimfiles/ftplugin/sifw.vim

if exists('b:current_syntax') | finish |  endif

syn match sifw_result '^\S.*' contains=sifw_gdoafwe,sifw_fade
" - matches any line that starts non-whitespace
syn match sifw_gdoafwe '\([-._0-9a-zA-Z]\+\ze\/\.gitignore \|[-_0-9a-zA-Zé ]\+\.\a[0-9a-zA-Z]\+\ze \)' contained
" - matches git directory or any file with extension that starts with a letter
hi def link sifw_gdoafwe DiffText

syn match sifw_fade ' > \zs.\+'
syn match sifw_fade '^:.\+'
syn match sifw_fade '^github.*'
syn match sifw_fade '^stackexchange'
syn match sifw_fade '^vim.\+'
hi def link sifw_fade LineNr

let b:current_syntax = "sifw"

