
" Language:	gitconfig
" Maintainer: Joseph Harriott
" Last Change: Wed 20 Oct 2021
" This file should be in your .vim/ftplugin folder.

" :%s/origin/gh/g
"
" Convert remote url fur SSH access:
nnoremap <leader>u :s#https://github.com/#git@github.com:#g <CR>

