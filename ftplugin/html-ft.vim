" vim: se fdl=2:

" Language:	html
" Maintainer: Joseph Harriott
" Last Change: Thu 09 Feb 2023
" $vimfiles/ftplugin/html-ft.vim, supplementary to  $vimfiles/ftplugin/html.vim

EmmetInstall
setlocal foldmethod=indent

""> ALE
let b:ale_fixers = ['prettier']

"">> lint
let b:ale_linters = ['htmlhint']

" For html's detected as liquid:
nnoremap <buffer> <localleader>h :set filetype=html<CR>
" - then just reload the file to return to liquid syntax highlighting

