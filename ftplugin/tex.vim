" Couple of useful adjustments for working with LaTeX documents.
" Language:	TeX
" Maintainer: Joseph Harriott
" Last Change: Tue 01 Apr 2014
" This file should be in your vimfiles\ftplugin folder.

" Folding
" -------
" For folding handled by $VIMRUNTIME/syntax/tex.vim,
" let g:tex_fold_enabled=1
" needs to be done before opening the buffer, eg in vimrc

setlocal fdc=1 tw=0

" As Vim's LaTeX syntax folding is slow, need a means to turn it off.
" Turn off gVim's default syntax folding:
nnoremap <F7> :set fdm=manual<cr>
inoremap <F7> <Esc>:set fdm=manual<cr>
" and turn it back on:
nnoremap <S-F7> :set fdm=syntax<cr>

" Tabbing
" -------
" (lifted from dokuwiki.vim):
" Set shift width for indent
setlocal shiftwidth=2
" Set the tab key size to two spaces
setlocal softtabstop=2
" Let tab keys always be expanded to spaces
setlocal expandtab

