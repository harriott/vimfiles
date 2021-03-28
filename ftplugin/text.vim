" Couple of adjustments.
" Language:	text
" Maintainer: Joseph Harriott
" Last Change: Sun 28 Mar 2021
" this file is supplementary to  $VIMRUNTIME/ftplugin/text.vim
"  and should be in your vimfiles\ftplugin folder

setlocal expandtab
" textwidth=0  is defined in  $vimfiles/vimrc_example.vim

" ALE
let b:ale_enabled = 0  " turn off
nnoremap <buffer><F7> :ALEToggleBuffer<cr>

