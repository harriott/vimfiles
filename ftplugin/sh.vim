"
" Language:	sh
" Maintainer: Joseph Harriott
" Last Change: Tue 22 Feb 2022
" $vimfiles/ftplugin/sh.vim  - supplementary to  $VIMRUNTIME/ftplugin/sh.vim
"  (and see  $vimfiles/after/syntax/sh.vim)
" ($VIMRUNTIME/filetype.vim  determines whether files are detected as bash or sh)

let b:ale_linters = ['shellcheck']
setlocal expandtab fdc=1 shiftwidth=4 textwidth=0

" my folding tools:
execute 'source 'g:vimfiles.'/ftplugin/HashEqualsFolding.vim'

