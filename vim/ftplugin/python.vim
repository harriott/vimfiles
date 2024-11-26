"
" Language: Python
" Maintainer: Joseph Harriott
" Last Change: Thu 14 Nov 2024
" $vfv/ftplugin/python.vim
"  supplemental to  $VIMRUNTIME/ftplugin/python.vim

" you might want this modeline:  vim: set cc=80 tw=79:

let b:ale_linters = ['flake8']
nnoremap <leader>u :TagbarToggle<CR>
source $vfv/ftplugin/ALElocaleader.vim

