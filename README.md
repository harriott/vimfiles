# vimfiles
all of my dot vim files (except my .gvimrc &amp; .vimrc - which vary by machine)

# the feel
My gVim installation is setup for coding in Python and Perl, and for quick navigation around my personal notes, as described [here](http://momentary.eu/2013/12/super-charged-it-organisation-with-gvim/).

# prerequisites
gVim, of course, and to point to these files, you'll need something like these:

## $HOME\_vimrc

```vim
source $HOME/vimfiles/vimrc_win32.vim
source $HOME/vimfiles/vimrc.vim

" where I like to keep my backups:
let g:WriteBackup_BackupDir = 'D:\Dropbox\WriteBackup'
```

## $HOME\_gvimrc

```vim
source $HOME/vimfiles/gvimrc.vim

" have my DokuWiki files open ready configured:
autocmd BufRead,BufNewFile D:/Dropbox/Current/IT/pages/* setlocal ft=dokuwiki fdm=expr
```

---
vim: set tw=0 ft=ghmarkdown fdm=expr:
