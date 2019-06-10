vim: ft=ghmarkdown fdl=1 fdm=expr:

    :helptags $HOME\vimfiles

# Arch AUR packaged
calendar-vim

# Arch Community packaged
vim-easymotion

# opts: packadd's
    :packadd colorizer
    :packadd vim-table-mode
    :packadd SimpylFold

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
git clone https://github.com/tpope/vim-markdown.git
git clone https://github.com/vim-scripts/LanguageTool.git
git clone https://github.com/xolox/vim-misc.git

git clone https://github.com/kien/rainbow_parentheses.vim.git
git clone https://github.com/plasticboy/vim-markdown.git
```

## Wed 07 Sep 2016

### Checked
```bash
git clone git://github.com/altercation/vim-colors-solarized.git
git clone git://github.com/tpope/vim-surround.git
```

### Updated
```bash
git clone git://github.com/mattn/calendar-vim
git clone git://github.com/tpope/vim-fugitive.git
git clone git://github.com/tpope/vim-repeat.git
git clone https://github.com/easymotion/vim-easymotion
```

## Thu 15 Sep 2016
```bash
git clone https://github.com/fholgado/minibufexpl.vim.git
```

# vim-plug managed
Vim Git Gutter:
  * last studied, Sun 02 Oct 2016
  * clone for Pathogen's bundle directory: `git clone git://github.com/airblade/vim-gitgutter.git`
  * `Plug 'airblade/vim-gitgutter'`

## the full git clones

```bash
git clone git://github.com/chikamichi/mediawiki.vim.git
git clone git://github.com/godlygeek/tabular.git
git clone git://github.com/mattn/calendar-vim
git clone https://github.com/PProvost/vim-ps1.git
git clone https://github.com/bling/vim-airline
git clone https://github.com/justinmk/vim-sneak.git
git clone https://github.com/vim-scripts/gitignore.vim
git clone https://github.com/xolox/vim-shell.git
```

