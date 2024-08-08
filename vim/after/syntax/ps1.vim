" vim: fdl=1:

" Language:	sh
" Maintainer: Joseph Harriott
" Last Change: jeu 16 mai 2024
" $vimfiles/after/syntax/ps1.vim, supplementary to  $vfv/packs/packs-cp/opt/vim-ps1/syntax/ps1.vim

source $vimfiles/vim/after/syntax/HashEqualsFolding.vim

""> PP's regions
" syntax match regionstart '#region' " unfortunately overrides the folding...
syntax match regiontitle '--- .*'
hi def regiontitle term=bold cterm=bold gui=bold guifg=LightGreen
" " see  cterm-colors  in  ../keystrokes.md

if !exists('g:ps1_nofold_region')
  " this addition of a matchgroup is neccessary for regiontitle to also work
    syn region ps1Region matchgroup=Identifier start=/#region/ end=/#endregion/ transparent fold keepend extend
endif

