
" as per vim_faq.txt
" Maintainer: Joseph Harriott
" Last Change: Fri 21 Aug 2020

if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    " autocmd! BufRead,BufNewFile *.gfm setfiletype markdown.gfm
    autocmd! BufRead,BufNewFile *.md setfiletype markdown.md
    " - overrides $VIMRUNTIME/filetype.vim & activates my md ftplugin
augroup END
