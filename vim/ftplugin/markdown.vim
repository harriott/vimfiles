" vim: se fdl=1:

" Language: markdown
" Maintainer: Joseph Harriott
" Last Change: Tue 29 Apr 2025
" $vfv/ftplugin/markdown.vim
"  supplementary to
"   $vfvp/packs-cp-full/opt/vim-markdown/README.md
"   $VIMRUNTIME/ftplugin/markdown.vim (which includes  $vfv/ftplugin/html.vim )

" Filetype detection:
"  $vfv/filetype.vim
"  $VIMRUNTIME/filetype.vim
"  $vfvp/packs-cp/opt/vim-markdown/ftdetect/markdown.vim

" see also
"  $vfv/ftplugin/md.vim
"  $vfn/lua/lazy/markdown-preview.lua

setlocal expandtab

" disable filter
vnoremap <buffer>= <Nop>

" ALE
let b:ale_enabled = 0
let b:ale_linters = ['languagetool']
source $vfv/ftplugin/ALElocaleader.vim

" demote a selected part
vnoremap <buffer><leader>> :s/^#/##/<CR>
" promote a selected part
vnoremap <buffer><leader>< :s/^#//<CR>

" enbolden the inner word
nnoremap <buffer><localleader>b viwc****<Esc>hP

" folding by header marks
source $vfv/ftplugin/HashFolding.vim

" outline.nvim
noremap <buffer><leader>o :Outline<CR>
" $vfn/lua/lazy/outline_nvim.lua

" Vim Markdown
setlocal conceallevel=2

" wrap the inner word under cursor with backticks
nnoremap <buffer><leader>` viwc``<Esc>P

" wrap a selection with backticks
if v:lang =~ 'fr'
  vnoremap <buffer><leader>è c``<Esc>P
else
  vnoremap <buffer><leader>` c``<Esc>P
endif

