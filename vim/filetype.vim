
" Maintainer: Joseph Harriott
" Last Change: Fri 11 Apr 2025
" $vfv/filetype.vim
"  supplemental to
"   $VIMRUNTIME/filetype.lua
"   $VIMRUNTIME/filetype.vim  which sets  did_load_filetypes

""> 0 $MSWml/CHh
au BufNew,BufNewFile,BufRead $coreIT/MSWin/ml-*/CHh/* setlocal filetype=ps1

""> 0 /usr/share/applications/mimeinfo.cache
au BufNew,BufNewFile,BufRead /usr/share/applications/mimeinfo.cache setlocal filetype=dosini

""> 0 aesl - Thymio's Aseba code
"  I suppose that sgml filetype might be more appropriate,
"   but I use xml filetype because it has folding
au BufNewFile,BufRead *.aesl setlocal filetype=xml

""> 0 default applications
au BufRead,BufNew,BufNewFile mimeapps.list setlocal ft=dosini

""> 0 Dropbox Paper
au BufRead,BufNew,BufNewFile *.paper setlocal ft=json

""> 0 ft Emacs history
au BufNewFile,BufRead ~/.emacs.d/history setlocal filetype=lisp

""> 0 GitHub Flavored Markdown
au BufRead,BufNew,BufNewFile *.gfm setlocal ft=gfm

""> 0 my Arch Bash history
au BufNewFile,BufRead ~/Arch/bash_history setlocal filetype=sh

""> 0 my CCh backups

""> 0 my tmux.conf backups
au BufNew,BufNewFile,BufRead $culLA/ml-*/tmux/**/*.conf setlocal filetype=tmux

""> 0 nomacs configuration
au BufRead,BufNew,BufNewFile ~/.config/nomacs/Image\ Lounge.conf setlocal ft=dosini

""> 0 nvim lua's
au BufRead,BufNew,BufNewFile */nvim/**/*.lua source $vfv/ftplugin/lua-nvim.vim

""> 0 PKGBUILD
if has('nvim')
  au BufNew,BufNewFile,BufRead PKGBUILD setlocal filetype=PKGBUILD | source /usr/share/vim/vimfiles/syntax/PKGBUILD.vim
endif

""> 0 special functionality for my .emdr's
" my email draft format, needs to be seen as  filetype text  for  ALE
au! BufRead,BufNewFile *.emdr setf text |
  \ source $vfv/ftplugin/emdr.vim | source $vfv/syntax/emdr.vim

""> 0 special functionality for my .md's
au! BufRead,BufNewFile *.md source $vfv/ftplugin/md.vim

""> 0 SRCINFO
if has('nvim')
  au BufNew,BufNewFile,BufRead .SRCINFO setf SRCINFO | source /usr/share/vim/vimfiles/syntax/SRCINFO.vim
endif

""> 0 Thunderbird dosini files
au BufNewFile,BufRead *thunderbird/installs.ini,*thunderbird/profiles.ini,*Thb-dr/compatibility.ini setlocal fdl=1

""> 1 other filetypes
" if exists("did_load_filetypes") | finish | endif  " kills detection in Neovim
aug filetypedetect
  au! BufRead,BufEnter /var/log/rsnapshot set ft=rsnapshotlog
  au! BufRead,BufNewFile *.asc       setf pem       " $vfv/ftplugin/pem.vim
  au! BufRead,BufNewFile *.clones    setf clones    " $vfv/syntax/clones.vim
  au! BufRead,BufNewFile *.cmplt     setf cmplt     " $vfv/syntax/cmplt.vim
  au! BufRead,BufNewFile *.dcc       setf dcc       " $vfv/ftplugin/dcc.vim
  au! BufRead,BufNewFile *.digs      setf digs      " $vfv/ftplugin/digs.vim
  au! BufRead,BufNewFile *.dirl      setf dirl      " $vfv/syntax/dirl.vim
  au! BufRead,BufNewFile *.exts      setf exts      " $vfv/syntax/exts.vim
  au! BufRead,BufNewFile *.fgc       setf fgc       " $vfv/syntax/fgc.vim
  au! BufRead,BufNewFile *.ffl       setf ffl       " $vfv/syntax/ffl.vim
  au! BufRead,BufNewFile *.Fn        setf Fn        " $vfv/syntax/Fn.vim
  au! BufRead,BufNewFile *.gems      setf gems      " $vfv/syntax/gems.vim
  au! BufRead,BufNewFile *.gnudiff   setf gnudiff   " $vfv/syntax/gnudiff.vim
  au! BufRead,BufNewFile *.IMfo      setf IMfo      " $vfv/ftplugin/IMfo.vim
  au! BufRead,BufNewFile *.info      setf info      " $vfv/ftplugin/info.vim
  au! BufRead,BufNewFile *.jctl      setf jctl      " $vfv/syntax/jctl.vim
  au! BufRead,BufNewFile *.leader    setf leader    " $vfv/syntax/leader.vim
  au! BufRead,BufNewFile *.mail      setf mail      " $vfv/syntax/mail.vim
  au! BufRead,BufNewFile *.osp       setf json      " $vfv/after/syntax/json.vim
  au! BufRead,BufNewFile *.rgo       setf rgo       " $vfv/syntax/rgo.vim
  au! BufRead,BufNewFile *.rgov      setf rgov      " $vfv/syntax/rgov.vim
  au! BufRead,BufNewFile *.rgtl      setf rgtl      " $vfv/syntax/rgtl.vim
  au! BufRead,BufNewFile *.sifl      setf sifl      " $vfv/syntax/sifl.vim
  au! BufRead,BufNewFile *.slJH      setf slJH      " $vfv/plugin/slJH.vim
  au! BufRead,BufNewFile *.tbmo      setf tbmo      " $vfv/syntax/tbmo.vim
  au! BufRead,BufNewFile *.toc       setf tex       " instead of  $VIMRUNTIME/syntax/cdrtoc.vim
  au! BufRead,BufNewFile *.tree      setf tree      " $vfv/ftplugin/tree.vim
  au! BufRead,BufNewFile *.ufco      setf ufco      " $vfv/syntax/ufco.vim
  au! BufRead,BufNewFile *.whatsapp  setf whatsapp  " $vfv/syntax/whatsapp.vim
  au! BufRead,BufNewFile .spacemacs  setf lisp
aug END  " - overrides  $VIMRUNTIME/filetype.vim

