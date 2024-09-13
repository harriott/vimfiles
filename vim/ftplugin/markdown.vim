" vim: se fdl=1:

" Language: markdown
" Maintainer: Joseph Harriott
" Last Change: dim 12 mai 2024
" $vfv/ftplugin/markdown.vim
"  supplementary to
"   $vfvp/packs-cp/opt/vim-markdown/README.md
"   $VIMRUNTIME/ftplugin/markdown.vim (which includes  $vfv/ftplugin/html.vim )

" Filetype detection:
"  $vfv/filetype.vim
"  $VIMRUNTIME/filetype.vim
"  $vfvp/packs-cp/opt/vim-markdown/ftdetect/markdown.vim

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

