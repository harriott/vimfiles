" Couple of useful adjustments for working with LaTeX documents.
" Language:	TeX
" Maintainer: Joseph Harriott
" Last Change: Tue 05 Dec 2017
" This file should be in your vimfiles\ftplugin folder.

" Folding
" -------
" For folding handled by $VIMRUNTIME/syntax/tex.vim,
" let g:tex_fold_enabled=1
" needs to be done before opening the buffer, eg in vimrc

setlocal fdc=1 fdl=1 tw=0

" As Vim's LaTeX syntax folding is slow, need a means to turn it off.
" Turn off gVim's default syntax folding:
nnoremap <buffer> <F7> :setlocal fdm=manual<cr>
inoremap <buffer> <F7> <Esc>:setlocal fdm=manual<cr>
" and turn it back on:
nnoremap <buffer> <S-F7> :setlocal fdm=syntax<cr>

" Tabbing
" -------
" (lifted from syntax\dokuwiki.vim):
" Set shift width for indent
setlocal shiftwidth=2
" Set the tab key size to two spaces
setlocal softtabstop=2
" Let tab keys always be expanded to spaces
setlocal expandtab

" for Verse
" ---------
" append  \\:
vnoremap <buffer> <F12> :s#^\v(.+)$#\1 \\\\#g <bar> nohlsearch <CR>
" remove  \\ from the last line of a stanza:
vnoremap <buffer> <S-F12> :s#^\v(.+) \\\\$\n^$#\1\r#g <CR>

