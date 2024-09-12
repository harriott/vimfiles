" vim: se fdl=2:

" Language: html
" Maintainer: Joseph Harriott
" Last Change: Mon 22 Apr 2024
" $vfv/ftplugin/html-ft.vim, sourced by  $vfv/ftplugin/html.vim

" For html's detected as  liquid:
nnoremap <buffer> <localleader>h :set filetype=html<CR>
" - then just reload the file to return to  liquid  syntax highlighting

if !has('nvim')
  EmmetInstall

  " ALE
  let b:ale_linters = ['cspell', 'htmlhint',]
  source $vfv/ftplugin/ALElocaleader.vim
endif

setlocal foldmethod=indent

