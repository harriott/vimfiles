
" $vfv/after/syntax/bbcode.vim

" tweaks to  $VIMRUNTIME/syntax/dosini.vim

" based off  https://vim.fandom.com/wiki/Dosini_files
" might need to re-open the buffer (<f5>) to get folding working

syn region dosiniSection start="^\[" end="\(\n\+\[\)\@=" contains=dosiniLabel,dosiniValue,dosiniNumber,dosiniHeader,dosiniComment keepend fold
setlocal foldmethod=syntax

