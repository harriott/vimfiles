
" supplemental to  $VIMRUNTIME/syntax/dosini.vim

" https://vim.fandom.com/wiki/Dosini_files

syn region dosiniSection start="^\[" end="\(\n\+\[\)\@=" contains=dosiniLabel,dosiniHeader,dosiniComment keepend fold
setlocal foldmethod=syntax

