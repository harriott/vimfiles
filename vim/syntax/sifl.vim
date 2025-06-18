
" Language: sifl - for string in files functions in  $MSn/PS/Profile.ps1
" Maintainer: Joseph Harriott
" Last Change: lun 26 mai 2025
" Detection: $vfv/filetype.vim

" $vfv/syntax/sifl.vim  also  $vfv/ftplugin/sifl.vim

if exists('b:current_syntax') | finish |  endif

syn match sifw_result '^\S.*' contains=sifw_gdoafwe,sifw_fade
" - matches any line that starts non-whitespace
syn match sifw_gdoafwe '\([-._0-9a-zA-Z]\+\ze\/\.gitignore \|[-_0-9a-zA-Zé ]\+\.\a[0-9a-zA-Z]\+\ze \)' contained
" - matches git directory or any file with extension that starts with a letter
hi def link sifw_gdoafwe DiffText

syn match sifw_fade ' > \zs.\+' " useful for  rgw  in  $MSn/PS/Profile.ps1
syn match sifw_fade '^:.\+'
syn match sifw_fade '^github.*'
syn match sifw_fade '^stackexchange'
syn match sifw_fade '^vim.\+'
hi def link sifw_fade LineNr

let b:current_syntax = "sifl"

