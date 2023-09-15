" vim: se fdl=1:

" Language:	markdown
" Maintainer: Joseph Harriott
" Last Change: Sun 30 Jul 2023
" $vimfiles/ftplugin/markdown.vim
"  supplementary to
"   [ $vimfiles/pack/packs-cp/opt/vim-markdown/README.md ]
"   $VIMRUNTIME/ftplugin/markdown.vim (which includes  $vimfiles/ftplugin/html.vim )

" Filetype detection:
"  $vimfiles/filetype.vim
"  $VIMRUNTIME/filetype.vim
"  $vimfiles/pack/packs-cp/opt/vim-markdown/ftdetect/markdown.vim

setlocal expandtab
vnoremap <buffer>= <Nop>  " disable filter

" ALE
let b:ale_enabled = 0 " and toggle it as defined in  $vimfiles/plugin/plugins.vim
let b:ale_linters = ['languagetool']

" demote a selected part
vnoremap <buffer><leader>> :s/^#/##/<CR>
" promote a selected part
vnoremap <buffer><leader>< :s/^#//<CR>

" enbolden the inner word
nnoremap <buffer><localleader>b viwc****<Esc>hP

" folding by header marks
execute 'source 'g:vimfiles.'/ftplugin/HashFolding.vim'

" Vim Markdown
set conceallevel=2

" wrap the inner word under cursor with backticks
nnoremap <buffer><leader>` viwc``<Esc>P

" wrap a selection with backticks
vnoremap <buffer><leader>` c``<Esc>P

