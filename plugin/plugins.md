vim: ft=ghmarkdown fdl=1 fdm=expr:

    :helptags $HOME\vimfiles

# Arch AUR packaged
calendar-vim

# Arch Community packaged
vim-airline
vim-airline-themes
vim-easymotion
vim-fugitive
vim-gitgutter
vim-nerdcommenter
vim-supertab
vim-syntastic

# opts: packadd's
    :packadd colorizer
    :packadd limelight.vim | Limelight
    :packadd SimpylFold
    :packadd vim-base64
    :packadd vim-gitgutter
    :packadd vim-table-mode

# Pathogen managed plugins
Move away from this to native plugin management & git submodules!

## post-installation housework

```bash
find -name .git
find -name .git -exec rm -rf {} \;
```


```PowerShell
ls -force -r .git
ls -force -r .git | ri -force -recurse
```


```vim
:Helptags
```

## cloned into bundle

```bash
git clone https://github.com/drmikehenry/vim-fontsize.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/hdima/python-syntax.git
git clone https://github.com/jtratner/vim-flavored-markdown.git
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/thinca/vim-visualstar.git
git clone https://github.com/vim-scripts/LanguageTool.git
git clone https://github.com/xolox/vim-misc.git

git clone https://github.com/kien/rainbow_parentheses.vim.git
git clone https://github.com/plasticboy/vim-markdown.git
```

## Wed 07 Sep 2016

### Checked
```bash
git clone git://github.com/tpope/vim-surround.git
```

### Updated
```bash
git clone git://github.com/tpope/vim-repeat.git
```

## Thu 15 Sep 2016
```bash
git clone https://github.com/fholgado/minibufexpl.vim.git
```

