" vim: fdl=1:

" Language: Python
" Maintainer: Joseph Harriott
" Last Change: Tue 06 Oct 2026
" $vfv/ftplugin/python.vim
"  supplemental to  $VIMRUNTIME/ftplugin/python.vim

" you might want this modeline:  vim: tw=79:

nnoremap <buffer><leader>u :TagbarToggle<CR>
setlocal cc=80

""> ALE
" flake8 reports lines > 79 chars as Error
if !has('nvim')
  let b:ale_linters = ['flake8']
  source $vfv/ftplugin/ALElocaleader.vim
endif  " pyright & Ruff suffice in Neovim

