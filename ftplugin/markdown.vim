" vim: se fdl=1:

" Language:	markdown
" Maintainer: Joseph Harriott
" Last Change: Thu 04 Nov 2021
" $vimfiles/ftplugin/markdown.vim, supplementary to  $VIMRUNTIME/ftplugin/markdown.vim
" $VIMRUNTIME/filetype.vim  determines which files are automatically detected as markdown

" setlocal expandtab textwidth=0

" ALE
let b:ale_enabled = 0 " and toggle it as defined in $vimfiles/plugin/plugins.vim

" demote a selected part
vnoremap <buffer><leader>> :s/^#/##/<CR>
" promote a selected part
vnoremap <buffer><leader>< :s/^#//<CR>

" wrap the inner word under cursor with backticks
nnoremap <buffer> <leader>` viwc``<Esc>P

" wrap a selection with backticks
vnoremap <leader>` c``<Esc>P

""> folding by header marks
execute 'source 'g:vimfiles.'/ftplugin/HashFolding.vim'
setlocal fillchars=fold:\  " cleaner folds
setlocal foldcolumn=2 " slightly better distinction from line numbers

""> Syntax highlighting
" Get highlighting working for  # low-carb  in  Regimes.md
let g:markdown_minlines = 40  " see $VIMRUNTIME/syntax/markdown.vim

