" vim: se fdl=1:

" Maintainer: Joseph Harriott
" Last Change: Wed 14 Jun 2023
" $vimfiles/filetype.vim  supplemental to  $VIMRUNTIME/filetype.vim  which sets  did_load_filetypes

""> 0 default applications
autocmd BufRead,BufNew,BufNewFile mimeapps.list setlocal ft=dosini

""> 0 GitHub Flavored Markdown
autocmd BufRead,BufNew,BufNewFile *.gfm setlocal ft=gfm

""> 0 nomacs configuration
autocmd BufRead,BufNew,BufNewFile ~/.config/nomacs/Image\ Lounge.conf setlocal ft=dosini

""> 0 special functionality for my .emdr's
" my email draft format, needs to be seen as  filetype text  for  ALE
autocmd! BufRead,BufNewFile *.emdr setfiletype text |
  \ source $vimfiles/ftplugin/emdr.vim | source $vimfiles/syntax/emdr.vim

""> 0 special functionality for my .md's
autocmd! BufRead,BufNewFile *.md source $vimfiles/ftplugin/md.vim

""> 1 other filetypes
" as per  vim_faq
if exists("did_load_filetypes") | finish | endif
augroup filetypedetect
    autocmd! BufRead,BufEnter /var/log/rsnapshot set ft=rsnapshotlog
    autocmd! BufRead,BufNewFile *.gnudiff setfiletype gnudiff  " $vimfiles/ftplugin/gnudiff.vim
    autocmd! BufRead,BufNewFile *.digs setfiletype digs  " $vimfiles/ftplugin/digs.vim
    autocmd! BufRead,BufNewFile *.dirl setfiletype dirl  " $vimfiles/syntax/dirl.vim
    autocmd! BufRead,BufNewFile *.exts setfiletype exts  " $vimfiles/syntax/exts.vim
    autocmd! BufRead,BufNewFile *.fetl setfiletype fetl  " $vimfiles/syntax/fetl.vim
    autocmd! BufRead,BufNewFile *.gems setfiletype gems  " $vimfiles/syntax/gems.vim
    autocmd! BufRead,BufNewFile *.IMclf setfiletype IMclf  " $vimfiles/syntax/IMclf.vim
    autocmd! BufRead,BufNewFile *.jctl setfiletype jctl  " $vimfiles/syntax/jctl.vim
    autocmd! BufRead,BufNewFile *.mail setfiletype mail  " $vimfiles/syntax/mail.vim
    autocmd! BufRead,BufNewFile *.osp setfiletype json  " $vimfiles/syntax/json.vim
    autocmd! BufRead,BufNewFile *.rgtl setfiletype rgtl  " $vimfiles/syntax/rgtl.vim
    autocmd! BufRead,BufNewFile *.sifw setfiletype sifw  " $vimfiles/syntax/sifw.vim
    autocmd! BufRead,BufNewFile *.slJH setfiletype slJH  " $vimfiles/plugin/slJH.vim
    autocmd! BufRead,BufNewFile *.tbmo setfiletype tbmo  " $vimfiles/syntax/tbmo.vim
    autocmd! BufRead,BufNewFile *.toc setfiletype tex  " instead of  $VIMRUNTIME/syntax/cdrtoc.vim
    autocmd! BufRead,BufNewFile *.whatsapp setfiletype whatsapp  " $vimfiles/syntax/whatsapp.vim
    autocmd! BufRead,BufNewFile .spacemacs setfiletype lisp
augroup END  " - overrides  $VIMRUNTIME/filetype.vim

