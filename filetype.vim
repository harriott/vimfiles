
" as per vim_faq.txt
" Maintainer: Joseph Harriott
" Last Change: Wed 09 Feb 2022
" supplemental to  $VIMRUNTIME/filetype.vim  which sets  did_load_filetypes

if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    autocmd! BufRead,BufNewFile *.md setfiletype markdown.md
    " - overrides  $VIMRUNTIME/filetype.vim  & activates  $vimfiles/ftplugin/md.vim
augroup END

