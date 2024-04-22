" vim: set fdl=1:

" Language: css
" Maintainer: Joseph Harriott
" Last Change: Mon 22 Apr 2024
" $vimfiles/vim/ftplugin/css.vim, supplementary to  $VIMRUNTIME/ftplugin/css.vim

" ALE
let b:ale_enabled = 0
let b:ale_linters = ['cspell', 'stylelint']
source $vimfiles/vim/ftplugin/ALElocaleader.vim

EmmetInstall

