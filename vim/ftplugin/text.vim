" vim: set fdl=2:

" Language: text
" Maintainer: Joseph Harriott
" Last Change: Sun 21 Apr 2024
" $vfv/ftplugin/text.vim  - supplementary to  $VIMRUNTIME/ftplugin/text.vim

" also  $vfv/syntax/text.vim

setlocal expandtab
" textwidth=0  is defined in  $vfvrc_example.vim

setlocal textwidth=0

" ALE
let b:ale_enabled = 0
let b:ale_linters = ['languagetool', 'proselint']
source $vfv/ftplugin/ALElocaleader.vim

