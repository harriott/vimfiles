" vim: se fdl=2:

" Language: html
" Maintainer: Joseph Harriott
" Last Change: Fri 28 Apr 2023
" $vimfiles/ftplugin/html-ft.vim, sourced by  $vimfiles/ftplugin/html.vim

EmmetInstall
setlocal foldmethod=indent

" For html's detected as  liquid:
nnoremap <buffer> <localleader>h :set filetype=html<CR>
" - then just reload the file to return to  liquid  syntax highlighting

""> ALE
let b:ale_fixers = ['prettier']

"">> lint
let b:ale_linters = ['htmlhint']

