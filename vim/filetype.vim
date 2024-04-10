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
au! BufRead,BufNewFile *.emdr setf text |
  \ source $vimfiles/vim/ftplugin/emdr.vim | source $vimfiles/vim/syntax/emdr.vim

""> 0 special functionality for my .md's
au! BufRead,BufNewFile *.md source $vimfiles/vim/ftplugin/md.vim

""> 1 other filetypes
if exists("did_load_filetypes") | finish | endif
aug filetypedetect
    au! BufRead,BufEnter /var/log/rsnapshot set ft=rsnapshotlog
        \m au! BufRead,BufNewFile *.gnudiff setf gnudiff   " $vimfiles/ftplugin/gnudiff.vim
        \m au! BufRead,BufNewFile *.digs    setf digs      " $vimfiles/vim/ftplugin/digs.vim
        \m au! BufRead,BufNewFile *.dirl    setf dirl      " $vimfiles/vim/syntax/dirl.vim
        \m au! BufRead,BufNewFile *.exts    setf exts      " $vimfiles/vim/syntax/exts.vim
        \m au! BufRead,BufNewFile *.fetl    setf fetl      " $vimfiles/vim/syntax/fetl.vim
        \m au! BufRead,BufNewFile *.gems    setf gems      " $vimfiles/vim/syntax/gems.vim
        \m au! BufRead,BufNewFile *.IMfo    setf IMfo      " $vimfiles/vim/ftplugin/IMfo.vim
        \m au! BufRead,BufNewFile *.jctl    setf jctl      " $vimfiles/vim/syntax/jctl.vim
        \m au! BufRead,BufNewFile *.mail    setf mail      " $vimfiles/vim/syntax/mail.vim
        \m au! BufRead,BufNewFile *.osp     setf json      " $vimfiles/vim/syntax/json.vim
        \m au! BufRead,BufNewFile *.rgtl    setf rgtl      " $vimfiles/vim/syntax/rgtl.vim
        \m au! BufRead,BufNewFile *.sifw    setf sifw      " $vimfiles/vim/syntax/sifw.vim
        \m au! BufRead,BufNewFile *.slJH    setf slJH      " $vimfiles/vim/plugin/slJH.vim
        \m au! BufRead,BufNewFile *.tbmo    setf tbmo      " $vimfiles/vim/syntax/tbmo.vim
        \m au! BufRead,BufNewFile *.toc     setf tex       " instead of  $VIMRUNTIME/syntax/cdrtoc.vim
        \m au! BufRead,BufNewFile *.whatsapp setf whatsapp " $vimfiles/vim/syntax/whatsapp.vim
        \m au! BufRead,BufNewFile .spacemacs setf lisp
aug END  " - overrides  $VIMRUNTIME/filetype.vim

