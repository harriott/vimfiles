" vim: set fdl=2:

" Language: sh
" Maintainer: Joseph Harriott
" Last Change: Tue 07 May 2024
" $vimfiles/vim/ftplugin/sh.vim  - supplementary to  $VIMRUNTIME/ftplugin/sh.vim
"  (and see  $vimfiles/after/syntax/sh.vim)
" ($VIMRUNTIME/filetype.vim  determines whether files are detected as bash or sh)

setlocal expandtab foldcolumn=1 shiftwidth=4 textwidth=0

" my folding tools:
execute 'source 'g:vimfiles.'/ftplugin/HashEqualsFolding.vim'

""> coding help
" bash-language-server  ($vimfiles/nvim/lua/lazy/nvim-lspconfig.lua)

"">> ALE
let b:ale_enabled = 0
let b:ale_linters = ['language_server', 'shellcheck']
"  language_server  (= bash-language-server?) provides completions
"  shellcheck  provides warnings
"   highlighting of symbols overrides search highlighting
" se ofu=ale#completion#OmniFunc  " has no effect
source $vimfiles/vim/ftplugin/ALElocaleader.vim

