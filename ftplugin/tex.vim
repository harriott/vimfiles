" Couple of useful adjustments for working with LaTeX documents.
" Language:	TeX
" Maintainer: Joseph Harriott
" Last Change: Mon 07 Oct 2019
" This file should be in your vimfiles\ftplugin folder.

" convert from markdown hyperlink references

" open compiled pdf:
nnoremap <buffer> <F12> :call CompiledPDF()<CR>

" Folding
" -------
" For folding handled by $VIMRUNTIME/syntax/tex.vim,
" let g:tex_fold_enabled=1
" needs to be done before opening the buffer, eg in vimrc

setlocal fdc=1 fdl=1 tw=0

" toggle it on and off for the buffer
nnoremap <silent><buffer> <F7> :call LaTeXsyntaxFolding()<cr>
inoremap <silent><buffer> <F7> <Esc>:call LaTeXsyntaxFolding()<cr>
vnoremap <silent><buffer> <F7> <Esc>:call LaTeXsyntaxFolding()<cr>
let b:LaTeXsyntaxFolding = 1
function! LaTeXsyntaxFolding()
  if b:LaTeXsyntaxFolding
    setlocal fdm=manual
    let b:LaTeXsyntaxFolding = 0
    echo 'fdm=manual'
  else
    setlocal fdm=syntax
    let b:LaTeXsyntaxFolding = 1
    echo 'fdm=syntax'
  endif
endfunction

" Tabbing
" -------
" (lifted from syntax\dokuwiki.vim):
" Set shift width for indent
setlocal shiftwidth=2
" Set the tab key size to two spaces
setlocal softtabstop=2
" Let tab keys always be expanded to spaces
setlocal expandtab

" \textbf{<selection>}
vnoremap <leader>b c\textbf{}<Esc>P

" for Verse
" ---------
" append  \\:
vnoremap <buffer> <leader>v1 :s#^\v(.+)$#\1 \\\\#g <bar> nohlsearch <CR>
" remove  \\ from the last line of a stanza:
vnoremap <buffer> <leader>v2 :s#^\v(.+) \\\\$\n^$#\1\r#g <CR>

