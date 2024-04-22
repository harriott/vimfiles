" vim: set fdl=2:

" Language: text
" Maintainer: Joseph Harriott
" Last Change: Sun 21 Apr 2024
" $vimfiles/vim/ftplugin/text.vim  - supplementary to  $VIMRUNTIME/ftplugin/text.vim

setlocal expandtab
" textwidth=0  is defined in  $vimfiles/vimrc_example.vim

setlocal textwidth=0

" ALE
let b:ale_enabled = 0
let b:ale_linters = ['languagetool', 'proselint']
source $vimfiles/vim/ftplugin/ALElocaleader.vim

