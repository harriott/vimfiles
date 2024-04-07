
" Language: mru - syntax for the MRU buffer
" Maintainer: Joseph Harriott
" Last Change: Sun 21 Jan 2024
" see  $vfp/packs-cp/opt/mru/plugin/mru.vim

" $vimfiles/syntax/mru.vim

if exists('b:current_syntax') | finish |  endif

syn match MRU_Cz 'Cafezoide'
hi def link MRU_Cz DiffDelete

syn match MRU_DW 'DokuWiki'
hi def link MRU_DW DiffChange

syn match MRU_onGH 'onGitHub'
hi def link MRU_onGH DiffText

syn match MRU_TN 'TextNotes'
hi def link MRU_TN DiffAdd

