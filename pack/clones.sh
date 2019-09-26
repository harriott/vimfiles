#!/bin/bash

# Joseph Harriott, Thu 26 Sep 2019
# grab repositories

# find . -type d -name '*.git' > gits-GNULinux.txt

packFolder="ft/start"
if [ -d $packFolder ]; then cd $packFolder
  # git clone https://github.com/christianrondeau/vim-base64
  # git clone https://github.com/jtratner/vim-flavored-markdown
  # git clone https://github.com/PProvost/vim-ps1
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="git/start"
if [ -d $packFolder ]; then cd $packFolder
  # git clone https://github.com/tpope/vim-fugitive
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="layout/opt"
if [ -d $packFolder ]; then cd $packFolder
  # git clone https://github.com/lilydjwg/colorizer
  # git clone https://github.com/junegunn/limelight.vim
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="layout/start"
if [ -d $packFolder ]; then cd $packFolder
  # git clone https://github.com/vim-scripts/gitignore.vim
  # git clone https://github.com/drmikehenry/vim-fontsize
  # git clone https://github.com/ntpeters/vim-better-whitespace
  git clone https://github.com/svermeulen/vim-colors-tomorrow
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="other/start"
if [ -d $packFolder ]; then cd $packFolder
  # git clone https://github.com/AndrewRadev/bufferize.vim
  # git clone https://github.com/Asheq/close-buffers.vim
  # git clone https://github.com/haya14busa/incsearch-fuzzy.vim
  # git clone https://github.com/haya14busa/incsearch.vim
  # git clone https://github.com/bronson/vim-visual-star-search
  # git clone https://github.com/maxbrunsfeld/vim-yankstack
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="shell/start"
if [ -d $packFolder ]; then cd $packFolder
  # git clone https://github.com/yegappan/mru
  # git clone https://github.com/tyru/open-browser.vim
  # sudo rm -r vim-buffing-wheel
  # git clone https://github.com/harriott/vim-buffing-wheel
  # git clone https://github.com/dhruvasagar/vim-open-url
  # git clone https://github.com/scrooloose/nerdtree
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

