#!/bin/bash

# Joseph Harriott, Thu 26 Sep 2019
# grab repositories

# find . -type d -name '*.git' > gits-GNULinux.txt

alias gicl='git clone'
packFolder="ft/start"
if [ -d $packFolder ]; then cd $packFolder
  # gicl https://github.com/christianrondeau/vim-base64
  # gicl https://github.com/jtratner/vim-flavored-markdown
  # gicl https://github.com/PProvost/vim-ps1
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="git/start"
if [ -d $packFolder ]; then cd $packFolder
  # gicl https://github.com/tpope/vim-fugitive
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="layout/opt"
if [ -d $packFolder ]; then cd $packFolder
  # gicl https://github.com/lilydjwg/colorizer
  # gicl https://github.com/junegunn/limelight.vim
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="layout/start"
if [ -d $packFolder ]; then cd $packFolder
  # gicl https://github.com/vim-scripts/gitignore.vim
  # gicl https://github.com/drmikehenry/vim-fontsize
  # gicl https://github.com/ntpeters/vim-better-whitespace
  gicl https://github.com/svermeulen/vim-colors-tomorrow
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="other/start"
if [ -d $packFolder ]; then cd $packFolder
  # gicl https://github.com/AndrewRadev/bufferize.vim
  # gicl https://github.com/Asheq/close-buffers.vim
  # gicl https://github.com/haya14busa/incsearch-fuzzy.vim
  # gicl https://github.com/haya14busa/incsearch.vim
  # gicl https://github.com/bronson/vim-visual-star-search
  # gicl https://github.com/maxbrunsfeld/vim-yankstack
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="shell/start"
if [ -d $packFolder ]; then cd $packFolder
  # gicl https://github.com/yegappan/mru
  # gicl https://github.com/tyru/open-browser.vim
  # sudo rm -r vim-buffing-wheel
  # gicl https://github.com/harriott/vim-buffing-wheel
  # gicl https://github.com/dhruvasagar/vim-open-url
  # gicl https://github.com/scrooloose/nerdtree
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

