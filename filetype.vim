" vim: se fdl=1:

" Maintainer: Joseph Harriott
" Last Change: Tue 07 Feb 2023
" $vimfiles/filetype.vim

""> 0 GitHub Flavored Markdown
autocmd BufRead,BufNew,BufNewFile *.gfm setlocal ft=gfm

""> 0 special functionality for my .emdr's
" my email draft format, needs to be seen as  filetype text  for  ALE
autocmd! BufRead,BufNewFile *.emdr setfiletype text |
  \ source $vimfiles/ftplugin/emdr.vim | source $vimfiles/syntax/emdr.vim

""> 0 special functionality for my .md's
autocmd! BufRead,BufNewFile *.md set synmaxcol=0 | source $vimfiles/ftplugin/md.vim
"
" ensure syntax throughout
autocmd! BufEnter *Dropbox/JH/core/IT_stack/unix_like-Android/phones.md syntax sync fromstart
autocmd! BufEnter *misc/*/QR.md syntax sync fromstart

""> 1 other filetypes
" supplemental to  $VIMRUNTIME/filetype.vim  which sets  did_load_filetypes
" as per  https://vim-jp.org/vimdoc-en/vim_faq.html
if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    autocmd! BufRead,BufEnter /var/log/rsnapshot set ft=rsnapshotlog
    autocmd! BufRead,BufNewFile *.digs setfiletype digs  " $vimfiles/ftplugin/digs.vim
    autocmd! BufRead,BufNewFile *.dirl setfiletype dirl  " $vimfiles/syntax/dirl.vim
    autocmd! BufRead,BufNewFile *.exts setfiletype exts  " $vimfiles/syntax/exts.vim
    autocmd! BufRead,BufNewFile *.fetl setfiletype fetl  " $vimfiles/syntax/fetl.vim
    autocmd! BufRead,BufNewFile *.gems setfiletype gems  " $vimfiles/syntax/gems.vim
    autocmd! BufRead,BufNewFile *.jctl setfiletype jctl  " $vimfiles/syntax/jctl.vim
    autocmd! BufRead,BufNewFile *.mail setfiletype mail  " $vimfiles/syntax/mail.vim
    autocmd! BufRead,BufNewFile *.osp setfiletype json  " $vimfiles/syntax/json.vim
    autocmd! BufRead,BufNewFile *.sifw setfiletype sifw  " $vimfiles/syntax/sifw.vim
    autocmd! BufRead,BufNewFile .spacemacs setfiletype lisp
augroup END  " - overrides  $VIMRUNTIME/filetype.vim

