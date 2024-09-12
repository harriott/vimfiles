"
" Language: Python
" Maintainer: Joseph Harriott
" Last Change: Sat 20 Apr 2024
" $vfv/ftplugin/python.vim

" you might want this modeline:  vim: set cc=80 tw=79:

let b:ale_linters = ['flake8']
nnoremap <leader>u :TagbarToggle<CR>
source $vfv/ftplugin/ALElocaleader.vim

