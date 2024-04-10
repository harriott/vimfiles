" vim: se fdl=1:

" Maintainer: Joseph Harriott
" Last Change: Sun 07 Apr 2024
" $vimfiles/vim/filetype.vim
"  supplemental to  $VIMRUNTIME/filetype.vim  which sets  did_load_filetypes

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
au! BufRead,BufNewFile *.md source $vimfiles/vim/ftplugin/md.vim

""> 1 other filetypes
if exists("did_load_filetypes") | finish | endif
aug filetypedetect
    au! BufRead,BufEnter /var/log/rsnapshot set ft=rsnapshotlog
    au! BufRead,BufNewFile *.gnudiff setfiletype gnudiff   " $vimfiles/ftplugin/gnudiff.vim
    au! BufRead,BufNewFile *.digs    setfiletype digs      " $vimfiles/vim/ftplugin/digs.vim
    au! BufRead,BufNewFile *.dirl    setfiletype dirl      " $vimfiles/vim/syntax/dirl.vim
    au! BufRead,BufNewFile *.exts    setfiletype exts      " $vimfiles/vim/syntax/exts.vim
    au! BufRead,BufNewFile *.fetl    setfiletype fetl      " $vimfiles/vim/syntax/fetl.vim
    au! BufRead,BufNewFile *.gems    setfiletype gems      " $vimfiles/vim/syntax/gems.vim
    au! BufRead,BufNewFile *.IMfo    setfiletype IMfo      " $vimfiles/vim/ftplugin/IMfo.vim
    au! BufRead,BufNewFile *.jctl    setfiletype jctl      " $vimfiles/vim/syntax/jctl.vim
    au! BufRead,BufNewFile *.mail    setfiletype mail      " $vimfiles/vim/syntax/mail.vim
    au! BufRead,BufNewFile *.osp     setfiletype json      " $vimfiles/vim/syntax/json.vim
    au! BufRead,BufNewFile *.rgtl    setfiletype rgtl      " $vimfiles/vim/syntax/rgtl.vim
    au! BufRead,BufNewFile *.sifw    setfiletype sifw      " $vimfiles/vim/syntax/sifw.vim
    au! BufRead,BufNewFile *.slJH    setfiletype slJH      " $vimfiles/vim/plugin/slJH.vim
    au! BufRead,BufNewFile *.tbmo    setfiletype tbmo      " $vimfiles/vim/syntax/tbmo.vim
    au! BufRead,BufNewFile *.toc     setfiletype tex       " instead of  $VIMRUNTIME/syntax/cdrtoc.vim
    au! BufRead,BufNewFile *.whatsapp setfiletype whatsapp " $vimfiles/vim/syntax/whatsapp.vim
    au! BufRead,BufNewFile .spacemacs setfiletype lisp
aug END  " - overrides  $VIMRUNTIME/filetype.vim

