" vim: se fdl=1:

" Maintainer: Joseph Harriott
" Last Change: Sun 14 Apr 2024
" $vimfiles/vim/filetype.vim
"  supplemental to  $VIMRUNTIME/filetype.vim  which sets  did_load_filetypes

""> 0 aesl - Thymio's Aseba code
"  I suppose that sgml filetype might be more appropriate,
"   but I use xml filetype because it has folding
au BufNewFile,BufRead *.aesl setlocal filetype=xml

""> 0 default applications
au BufRead,BufNew,BufNewFile mimeapps.list setlocal ft=dosini

""> 0 ft Emacs history
au BufNewFile,BufRead ~/.emacs.d/history setlocal filetype=lisp

""> 0 GitHub Flavored Markdown
au BufRead,BufNew,BufNewFile *.gfm setlocal ft=gfm

""> 0 muttrc
au BufNewFile,BufRead muttrc-* setlocal filetype=neomuttrc
" overcomes $VIMRUNTIME/filetype.vim
"  required for  muttrc-gmx (see $DJH/technos/IT1/cross-platform/Vim/muttrc-123)

""> 0 nomacs configuration
au BufRead,BufNew,BufNewFile ~/.config/nomacs/Image\ Lounge.conf setlocal ft=dosini

""> 0 special functionality for my .emdr's
" my email draft format, needs to be seen as  filetype text  for  ALE
au! BufRead,BufNewFile *.emdr setf text |
  \ source $vimfiles/vim/ftplugin/emdr.vim | source $vimfiles/vim/syntax/emdr.vim

""> 0 special functionality for my .md's
au! BufRead,BufNewFile *.md source $vimfiles/vim/ftplugin/md.vim

""> 1 other filetypes
" if exists("did_load_filetypes") | finish | endif  " kills detection in Neovim
aug filetypedetect
    au! BufRead,BufEnter /var/log/rsnapshot set ft=rsnapshotlog
    au! BufRead,BufNewFile *.gnudiff setf gnudiff   " $vimfiles/ftplugin/gnudiff.vim
    au! BufRead,BufNewFile *.digs    setf digs      " $vimfiles/vim/ftplugin/digs.vim
    au! BufRead,BufNewFile *.dirl    setf dirl      " $vimfiles/vim/syntax/dirl.vim
    au! BufRead,BufNewFile *.exts    setf exts      " $vimfiles/vim/syntax/exts.vim
    au! BufRead,BufNewFile *.fetl    setf fetl      " $vimfiles/vim/syntax/fetl.vim
    au! BufRead,BufNewFile *.Fn      setf Fn        " $vimfiles/vim/syntax/Fn.vim
    au! BufRead,BufNewFile *.gems    setf gems      " $vimfiles/vim/syntax/gems.vim
    au! BufRead,BufNewFile *.IMfo    setf IMfo      " $vimfiles/vim/ftplugin/IMfo.vim
    au! BufRead,BufNewFile *.jctl    setf jctl      " $vimfiles/vim/syntax/jctl.vim
    au! BufRead,BufNewFile *.leader  setf leader    " $vimfiles/vim/syntax/leader.vim
    au! BufRead,BufNewFile *.mail    setf mail      " $vimfiles/vim/syntax/mail.vim
    au! BufRead,BufNewFile *.osp     setf json      " $vimfiles/vim/syntax/json.vim
    au! BufRead,BufNewFile *.rgo     setf rgo       " $vimfiles/vim/syntax/rgo.vim
    au! BufRead,BufNewFile *.rgtl    setf rgtl      " $vimfiles/vim/syntax/rgtl.vim
    au! BufRead,BufNewFile *.sifw    setf sifw      " $vimfiles/vim/syntax/sifw.vim
    au! BufRead,BufNewFile *.slJH    setf slJH      " $vimfiles/vim/plugin/slJH.vim
    au! BufRead,BufNewFile *.tbmo    setf tbmo      " $vimfiles/vim/syntax/tbmo.vim
    au! BufRead,BufNewFile *.toc     setf tex       " instead of  $VIMRUNTIME/syntax/cdrtoc.vim
    au! BufRead,BufNewFile *.whatsapp setf whatsapp " $vimfiles/vim/syntax/whatsapp.vim
    au! BufRead,BufNewFile .spacemacs setf lisp
aug END  " - overrides  $VIMRUNTIME/filetype.vim

