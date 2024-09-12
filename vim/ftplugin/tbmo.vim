" vim: se fdl=1:

" Language: TBmo - Thunderbird mail-out - my lists for sending mails to multiple recipients
" Maintainer: Joseph Harriott
" Last Change: Thu 12 Oct 2023

" $vimfiles/ftplugin/tbmo.vim
" also  $vimfiles/syntax/tbmo.vim
" *.tbmo  is detected by  $vimfiles/filetype.vim

" nf7 - pull n lines into a comma-separated list
nnoremap <buffer><f7> :s/\n/, / <bar> nohlsearch <CR>
" <s-f7> - split a comma-separated list into separate lines
nnoremap <buffer><s-f7> :s/, /\r/g <bar> nohlsearch <CR>

""> folding by Markdown style header marks
source $vfv/ftplugin/HashFolding.vim
setlocal foldcolumn=1
setlocal textwidth=0

