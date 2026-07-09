" vim: fdl=1:

" Language: mru - syntax for the MRU buffer
" Maintainer: Joseph Harriott
" Last Change: Tue 23 Jun 2026
" see  $vfp/packs-cp/opt/mru/plugin/mru.vim

" $vfv/syntax/mru.vim

if exists('b:current_syntax') | finish |  endif

""> $Cfzd
syn match MRU_Cz 'work-Cz'
hi def link MRU_Cz DiffDelete

""> $culLA/build, $DWp
syn match MRU_dusty 'dusty'
hi def link MRU_dusty Directory

""> $DWp
" syn match MRU_DW 'DokuWiki/pages/\zs[a-z]\+'
" hi def link MRU_DW DiffChange

syn match MRU_DW_public 'DokuWiki/pages/\zspublic'
hi def link MRU_DW_public Folded

syn match MRU_DW_private 'DokuWiki/pages/\zsprivate'
hi def link MRU_DW_private CursorLineNr

""> $onGH
syn match MRU_onGH 'onGitHub'
hi def link MRU_onGH DiffText

""> $TeNo
syn match MRU_TN 'TextNotes'
hi def link MRU_TN DiffAdd

