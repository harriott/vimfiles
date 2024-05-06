
" Language: fugitive
" Maintainer: Joseph Harriott
" Last Change: lun 06 mai 2024
" $vimfiles/vim/ftplugin/fugitive.vim

nnoremap <buffer><leader>gp :Git push<cr>
nnoremap <buffer><leader>gs 4j-<cr>

if !has('nvim')
  " <F1> gets remapped by  vim-fugitive  to  :h fugitive
  " I prefer to keep my  fzf.vim  mapping:
  nnoremap <buffer><f1> :Buffers<CR>
endif

