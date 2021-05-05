#!/bin/bash
# vim: sw=2:

# Joseph Harriott
# grab repositories
# bash clones.sh

cdp="cd $HOME/.vim/pack"

#=> 1 packs
gc='git clone'
gd(){ echo $1; [[ -d $1 ]] || mkdir $1; cd $1; }

#==> cp
echo; $cdp; gd packs-cp

gd opt; ls

  # $gc https://github.com/AndrewRadev/bufferize.vim
  # $gc https://github.com/Winseven4lyf/vim-bbcode
  # $gc https://github.com/mattn/calendar-vim
  # $gc https://github.com/Asheq/close-buffers.vim
  # $gc https://github.com/lilydjwg/colorizer
  # $gc https://github.com/vim-scripts/gitignore.vim
  # $gc https://github.com/haya14busa/incsearch-fuzzy.vim
  # $gc https://github.com/haya14busa/incsearch.vim
  # $gc https://github.com/junegunn/limelight.vim
  # $gc https://github.com/chikamichi/mediawiki.vim
  # $gc https://github.com/yegappan/mru
  # $gc https://github.com/scrooloose/nerdtree
  # $gc https://github.com/tyru/open-browser.vim
  # $gc https://github.com/vim-scripts/python_match.vim
  # $gc https://github.com/unblevable/quick-scope
  # $gc https://github.com/tmhedberg/SimpylFold
  # $gc https://github.com/wellle/targets.vim
  # $gc https://github.com/mbbill/undotree
  # $gc https://github.com/christianrondeau/vim-base64
  # $gc https://github.com/harriott/vim-buffing-wheel
  # $gc https://github.com/altercation/vim-colors-solarized
  # $gc https://github.com/svermeulen/vim-colors-tomorrow
  # $gc https://github.com/junegunn/vim-easy-align
  # $gc https://github.com/drmikehenry/vim-fontsize
  # $gc https://github.com/tpope/vim-fugitive
  # $gc https://github.com/rhysd/vim-gfm-syntax
  # $gc https://github.com/hjson/vim-hjson
  $gc https://github.com/smancill/conky-syntax.vim
  # $gc https://github.com/Konfekt/vim-langtool
  # $gc https://github.com/dpelle/vim-LanguageTool
  # $gc https://github.com/chunkhang/vim-mbsync
  # $gc https://github.com/dhruvasagar/vim-open-url
  # $gc https://github.com/vim-pandoc/vim-pandoc-syntax
  # $gc https://github.com/PProvost/vim-ps1
  # $gc https://github.com/inkarkat/vim-ShowTrailingWhitespace
    # sudo sed -i 's/^c/" c/' vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim
  # $gc https://github.com/mhinz/vim-startify
  # $gc https://github.com/bronson/vim-visual-star-search

#==> unix
echo; $cdp; gd packs-unix

gd opt; ls

  # $gc https://github.com/chrisbra/Colorizer
  # $gc https://github.com/junegunn/fzf.vim
  # $gc https://github.com/nanotech/jellybeans.vim
  # $gc https://github.com/ntpeters/vim-better-whitespace
  # $gc https://github.com/RRethy/vim-hexokinase; cd vim-hexokinase; make hexokinase; cd ..
  # $gc https://github.com/srstevenson/vim-picker
  # $gc https://github.com/sheerun/vim-wombat-scheme

#==> win32
echo; $cdp; gd packs-win32

gd opt; ls

  # $gc https://github.com/dense-analysis/ale
  # $gc https://github.com/jlanzarotta/bufexplorer
  # $gc https://github.com/ctrlpvim/ctrlp.vim
  # $gc https://github.com/scrooloose/nerdcommenter
  # $gc https://github.com/ervandew/supertab
  # $gc https://github.com/vim-syntastic/syntastic
  # $gc https://github.com/godlygeek/tabular
  # $gc https://github.com/bling/vim-airline
  # $gc https://github.com/vim-airline/vim-airline-themes
  # $gc https://github.com/easymotion/vim-easymotion
  # $gc https://github.com/airblade/vim-gitgutter
  # $gc https://github.com/adelarsq/vim-matchit
  # $gc https://github.com/tpope/vim-repeat
  # $gc https://github.com/tpope/vim-rhubarb
  # $gc https://github.com/tpope/vim-surround

#=> 2 lists
echo; $cdp
. ArchLinux/lists.sh

