
" Maintainer: Joseph Harriott
" Last Change: Tue 02 Aug 2022
" supplemental to  $VIMRUNTIME/filetype.vim  which sets  did_load_filetypes
" as per  https://vim-jp.org/vimdoc-en/vim_faq.html

if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    autocmd! BufRead,BufNewFile *.cfm setfiletype clifm
    " - overrides  $VIMRUNTIME/filetype.vim  & activates  $vimfiles/syntax/clifm.vim
augroup END

