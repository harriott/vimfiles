vim: set fdl=4:

    $vimfiles/README.md

# vimfiles
All of my `vim` files, except my `.gvimrc` &amp; `.vimrc` - which vary by machine:

- [$ABjo/textEdit/Vim/vimrc](https://github.com/harriott/OS-ArchBuilds/blob/master/jo/textEdit/Vim/vimrc)
- [$machBld/jo/gvimrc](https://github.com/harriott/OS-ArchBuilds/blob/master/mb-sbMb/jo/gvimrc)
- [$MSWin10\mb\_gvimrc](https://github.com/harriott/OS-MSWin10/blob/master/mb/_gvimrc)
- [$MSWin10\mb\_vimrc-AZERTY](https://github.com/harriott/OS-MSWin10/blob/master/mb/_vimrc-AZERTY)

## use cases
- scripting ([going faster](https://harriott.github.io/))
- quick navigation around my vast personal notes, which include web addresses

## exploring
Some of my `vim` configuraton files are long, but they don't appear so to me as I use my own `vim_build` filetype ([$vfv/ftplugin/build.vim](https://github.com/harriott/vimfiles/blob/master/vim/ftplugin/build.vim)), which folds my headings nicely.

## prerequisites
- a `Vim` flavour, of course
- The relevant files of this repository correctly symlinked, as in:
    - [ $MSwin10\mb\symlinks-mostly.ps1 ](https://github.com/harriott/OS-MSWin10/blob/master/mb/symlinks-mostly.ps1)
    - [$MSWin10\mb\neededNodes-2.ps1](https://github.com/harriott/OS-MSWin10/blob/master/mb/neededNodes-2.ps1)

## snag: CRLF line endings on Arch
When I somehow managed, from `PowerShell` to convert hundreds of files in my configuration to CRLF line endings all the Vim variants on my `Arch Linux` machines were broken.

### fix 1: delete my $vimfiles and repopulate from remote repositories
    rm -r $vimfiles
    git clone https://github.com/harriott/vimfiles $vimfiles
    & $vimfiles/vim/packs/get/win64/get.ps1
    & $vimfiles/vim/packs/get/unix/get.sh  # - not ready yet, see  $vimfiles/vim/packs/get/win64/get.ps1  which downloads all the plugins that I use

### fix 2: convert the snagging files to LF
1. prepare: `cd $vimfiles; rm grep_CRLF.ufco`
1. list the culprits: `fd -tf -x file | grep CRLF >> $vimfiles/grep_CRLF.ufco` (using my [$vimfiles/syntax/ufco.vim](https://github.com/harriott/vimfiles/blob/master/vim/syntax/ufco.vim))
1. do the conversions: `while read CRLFfile; do sed -i 's/\r//' ${CRLFfile/:*}; done <grep_CRLF.ufco`
1. tidy off: `rm $vimfiles/grep_CRLF.ufco`

