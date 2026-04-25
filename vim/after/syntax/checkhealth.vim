
" Language:	bbcode
" Maintainer: Joseph Harriott
" Last Change: Fri 24 Apr 2026
" $vfv/after/syntax/checkhealth.vim
"  syntax highlighting for  checkhealth vim.lsp
"  supplementary to  $VIMRUNTIME/syntax/checkhealth.vim
"   (which sources  $VIMRUNTIME/syntax/help.vim)

" LSP with Active Clients:
syntax match cheLSPwAC '^- \zs[-_A-Za-z]\+\ze (id: '
hi def link cheLSPwAC Folded

syntax match cheAbl '^  - Attached buffers: .*' contains=cheAbid
syntax match cheAbid '\d\+' contained
hi def link cheAbid Question

