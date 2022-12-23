" vim: se fdl=1:

" Maintainer: Joseph Harriott
" Last Change: Tue 06 Dec 2022
" $vimfiles/filetype.vim

""> 0 GitHub Flavored Markdown
autocmd BufRead,BufNew,BufNewFile *.gfm setlocal ft=markdown.gfm  " or vim: ft=gfm:
autocmd BufRead,BufNew,BufNewFile *.gfme setlocal ft=gfme  " or vim: ft=gfme:

""> 0 special functionality for my .emdr's
" my email draft format, needs to be seen as  filetype text  for  ALE
autocmd! BufRead,BufNewFile *.emdr setfiletype text | source $vimfiles/ftplugin/emdr.vim | source $vimfiles/syntax/emdr.vim

""> 0 special functionality for my .md's
autocmd! BufRead,BufNewFile *.md source $vimfiles/ftplugin/md.vim

""> 1 other filetypes
" supplemental to  $VIMRUNTIME/filetype.vim  which sets  did_load_filetypes
" as per  https://vim-jp.org/vimdoc-en/vim_faq.html
if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    autocmd! BufRead,BufEnter /var/log/rsnapshot set ft=rsnapshotlog
    autocmd! BufRead,BufNewFile *.mail setfiletype mail
    autocmd! BufRead,BufNewFile .spacemacs setfiletype lisp
augroup END  " - overrides  $VIMRUNTIME/filetype.vim

