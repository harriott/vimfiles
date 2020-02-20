
" Language:	gitconfig
" Maintainer: Joseph Harriott
" Last Change: Tue 18 Feb 2020
" This file should be in your .vim/ftplugin folder.

" :%s/origin/gh/g
"
" Convert remote url fur SSH access:
nnoremap <F7> :s#https://github.com/#git@github.com:#g <CR>
