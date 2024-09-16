vim: set fdl=4:

    $vimfiles/README.md

## vimfiles
All of my `vim` files (except my `.gvimrc` &amp; `.vimrc` - which vary by machine)

### use cases
- scripting ([going faster](https://harriott.github.io/))
- quick navigation around my vast personal notes, which include web addresses

### exploring
Some of my `vim` configuraton files are long, but they don't appear so to me as I use my own `vim_build` filetype, which folds my headings nicely.

### prerequisites
- `gVim`, of course
- The relevant files of this repository correctly symlinked, as in:
    - [ $MSwin10\mb\symlinks-mostly.ps1 ](https://github.com/harriott/OS-MSWin10/blob/master/mb/symlinks-mostly.ps1)
    - [ $OSAB/bs-symlinks/jo-2-whenWM-0.sh ](https://github.com/harriott/OS-ArchBuilds/blob/master/bs-symlinks/jo-2-whenWM-0.sh)
## snag: CRLF line endings
When I somehow managed, from `PowerShell` to convert hundreds of files in my configuration to CRLF line endings all the Vim variants on my `Arch Linux` machines were broken.

### fix 1: delete my $vimfiles and repopulate from remote repositories
    rm -r $vimfiles
    git clone https://github.com/harriott/vimfiles $vimfiles
    & $vimfiles/vim/packs/get/win64/get.ps1
    & $vimfiles/vim/packs/get/unix/get.sh  # - not ready yet, see  $vimfiles/vim/packs/get/win64/get.ps1  which downloads all the plugins that I use

### fix 2: convert the snagging files to LF
1. list the culprits: `fd -tf -x file | grep CRLF >> grep_CRLF.ufco` (using my [$vimfiles/syntax/ufco.vim](https://github.com/harriott/vimfiles/blob/master/vim/syntax/ufco.vim)) then check the results
2. do the conversions: `while read CRLFfile; do sed -i 's/\r//' $CRLFfile; done <$df/grep_CRLF.ufco`
3. tidy off: `rm grep_CRLF.ufco`


    fd -tf -x file | grep CRLF

In the relevant subfolders of `$vimfiles`, `fd -tf | grep CRLF` 
In the relevant subfolders of `$vimfiles`, `fd -tf -x dos2unix -ic` to list files that would be converted, then repeat that without `-ic` to do the conversions.

