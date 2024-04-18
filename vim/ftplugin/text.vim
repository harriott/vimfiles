" vim: set fdl=2:

" Language: text
" Maintainer: Joseph Harriott
" Last Change: Tue 09 Aug 2022
" $vimfiles/ftplugin/text.vim  - supplementary to  $VIMRUNTIME/ftplugin/text.vim

iabbrev <buffer> CZ Cafézoïde

setlocal expandtab
" textwidth=0  is defined in  $vimfiles/vimrc_example.vim

setlocal textwidth=0

" ALE
let b:ale_enabled = 0 " and toggle it as defined in  $vimfiles/plugin/plugins.vim
let b:ale_linters = ['cspell', 'languagetool']

