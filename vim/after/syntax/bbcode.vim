
" Language:	bbcode
" Maintainer: Joseph Harriott
" Last Change: jeu 16 mai 2024
" $vimfiles/after/syntax/bbcode.vim
"  syntax highlighting for folding (see  $vimfiles/ftplugin/bbcode.vim)
"  supplementary to  $vfvp/packs-cp/opt/vim-bbcode/syntax/bbcode.vim

syntax region buildH start=/^#/ end=/$/
hi def link buildH Folded  " for an unobtrusive heading

