" vim: se fdl=1:

" Maintainer: Joseph Harriott
" Last Change: Wed 14 Jun 2023
" $vimfiles/filetype.vim  supplemental to  $VIMRUNTIME/filetype.vim  which sets  did_load_filetypes

""> 0 default applications
au BufRead,BufNew,BufNewFile mimeapps.list setlocal ft=dosini

""> 0 GitHub Flavored Markdown
au BufRead,BufNew,BufNewFile *.gfm setlocal ft=gfm

""> 0 nomacs configuration
au BufRead,BufNew,BufNewFile ~/.config/nomacs/Image\ Lounge.conf setlocal ft=dosini

""> 0 special functionality for my .emdr's
" my email draft format, needs to be seen as  filetype text  for  ALE
au! BufRead,BufNewFile *.emdr setfiletype text |
  \ source $vimfiles/vimfiles/ftplugin/emdr.vim | source $vimfiles/syntax/emdr.vim

""> 0 special functionality for my .md's
au! BufRead,BufNewFile *.md source $vimfiles/vimfiles/ftplugin/md.vim

""> 1 other filetypes
if exists("did_load_filetypes") | finish | endif
aug filetypedetect
    au! BufRead,BufEnter /var/log/rsnapshot set ft=rsnapshotlog
    au! BufRead,BufNewFile *.gnudiff setfiletype gnudiff  " $vimfiles/ftplugin/gnudiff.vim
    au! BufRead,BufNewFile *.digs setfiletype digs  " $vimfiles/ftplugin/digs.vim
    au! BufRead,BufNewFile *.dirl setfiletype dirl  " $vimfiles/syntax/dirl.vim
    au! BufRead,BufNewFile *.exts setfiletype exts  " $vimfiles/syntax/exts.vim
    au! BufRead,BufNewFile *.fetl setfiletype fetl  " $vimfiles/syntax/fetl.vim
    au! BufRead,BufNewFile *.gems setfiletype gems  " $vimfiles/syntax/gems.vim
    au! BufRead,BufNewFile *.IMclf setfiletype IMclf  " $vimfiles/syntax/IMclf.vim
    au! BufRead,BufNewFile *.jctl setfiletype jctl  " $vimfiles/syntax/jctl.vim
    au! BufRead,BufNewFile *.mail setfiletype mail  " $vimfiles/syntax/mail.vim
    au! BufRead,BufNewFile *.osp setfiletype json  " $vimfiles/syntax/json.vim
    au! BufRead,BufNewFile *.rgtl setfiletype rgtl  " $vimfiles/syntax/rgtl.vim
    au! BufRead,BufNewFile *.sifw setfiletype sifw  " $vimfiles/syntax/sifw.vim
    au! BufRead,BufNewFile *.slJH setfiletype slJH  " $vimfiles/plugin/slJH.vim
    au! BufRead,BufNewFile *.tbmo setfiletype tbmo  " $vimfiles/syntax/tbmo.vim
    au! BufRead,BufNewFile *.toc setfiletype tex  " instead of  $VIMRUNTIME/syntax/cdrtoc.vim
    au! BufRead,BufNewFile *.whatsapp setfiletype whatsapp  " $vimfiles/syntax/whatsapp.vim
    au! BufRead,BufNewFile .spacemacs setfiletype lisp
aug END  " - overrides  $VIMRUNTIME/filetype.vim

