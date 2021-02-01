
" Language: TeX
" Maintainer: Joseph Harriott
" Last Change: Mon 01 Feb 2021
" Syntax highlighting for folding LaTeX

" this file should be in your  after/vimfiles/syntax  folder

" turn off syntax folding on Comments
syn clear texComment
syn match texComment "%.*$" contains=@texCommentGroup  " no need to redefine for  dtx's

