
" Language:	bbcode
" Maintainer: Joseph Harriott
" Last Change: Mon 12 Dec 2022
" $vimfiles/after/syntax/bbcode.vim
"  syntax highlighting for folding (see  $vimfiles/ftplugin/bbcode.vim)
"  supplementary to  $vfp/packs-cp/opt/vim-bbcode/syntax/bbcode.vim

syntax region buildH start=/^#/ end=/$/
hi def link buildH Folded  " for an unobtrusive heading

