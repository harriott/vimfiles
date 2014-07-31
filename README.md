## vimfiles
all of my dot vim files (except my .gvimrc &amp; .vimrc - which vary by machine)

## the feel
My gVim installation is setup for coding in Python and Perl, and for quick navigation around my personal notes, as described [here](http://momentary.eu/2013/12/super-charged-it-organisation-with-gvim/).

## prerequisites
gVim, of course, and to point to these files, you'll need something like these:

### $HOME\_vimrc
Should at least point to the `vimrc`, like this:

```vim
source $HOME/vimfiles/vimrc.vim
```

You can [checkout mine](http://it.momentary.eu/lib/exe/fetch.php?media=cross_platform:vimrc_win32.vim).

### $HOME\_gvimrc

```vim
source $HOME/vimfiles/gvimrc.vim

" have my DokuWiki files open ready configured:
autocmd BufRead,BufNewFile D:/Dropbox/Current/IT/pages/* setlocal ft=dokuwiki fdm=expr
```

---
vim: set tw=0 ft=ghmarkdown fdm=expr:
