[//]: # ( vim: set tw=0 fdm=expr fdl=4: )

## vimfiles
All of my vim files (except my .gvimrc &amp; .vimrc - which vary by machine)

### use cases
My gVim installation is setup for scripting, and for quick navigation around my personal notes.

### exploring
Some of my configuraton files are long, but not for me, as I use my own `vim_build` sub-filetype, which folds by my headings nicely.

### prerequisites
`gVim`, of course, and to point to these files, you'll need something like these:

#### MSWin
In your `%UserProfile%`:

- `vimfiles` folder is where you'd clone this repository
- `_vimrc` should at least `source $HOME/vimfiles/MyWin32_vimrc.vim`
- `_gvimrc` should at least `source $HOME/vimfiles/gvimrc.vim`

