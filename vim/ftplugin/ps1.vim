" vim: fdl=1:

" Modeline stuff for working with PowerShell scripts.
" Language: PowerShell
" Maintainer: Joseph Harriott
" Last Change: lun 08 avr 2024

" $vimfiles/vim/ftplugin/ps1.vim

setlocal expandtab foldcolumn=1 shiftwidth=2 textwidth=0

nnoremap <buffer><leader>o :ContextToggleWindow<CR>

""> folding
" my preferred folding
source $vimfiles/vim/ftplugin/HashEqualsFolding.vim

