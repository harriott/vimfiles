#!/bin/bash

# Joseph Harriott, Fri 27 Sep 2019
# grab repositories

# find . -type d -name '*.git' > gits-ArchLinux.txt

gc='git clone'

packFolder="ft/start"
if [ -d $packFolder ]; then cd $packFolder
  # $gc https://github.com/christianrondeau/vim-base64
  # $gc https://github.com/jtratner/vim-flavored-markdown
  # $gc https://github.com/PProvost/vim-ps1
  # $gc https://github.com/vim-scripts/python_match.vim
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="git/start"
if [ -d $packFolder ]; then cd $packFolder
  # $gc https://github.com/tpope/vim-fugitive
  # $gc https://github.com/tpope/vim-rhubarb
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="layout/opt"
if [ -d $packFolder ]; then cd $packFolder
  # $gc https://github.com/lilydjwg/colorizer
  # $gc https://github.com/junegunn/limelight.vim
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="layout/start"
if [ -d $packFolder ]; then cd $packFolder
  # $gc https://github.com/vim-scripts/gitignore.vim
  # $gc https://github.com/drmikehenry/vim-fontsize
  # sudo rm -r vim-better-whitespace
  # $gc https://github.com/ntpeters/vim-better-whitespace
  # $gc https://github.com/inkarkat/vim-ShowTrailingWhitespace
  # $gc https://github.com/svermeulen/vim-colors-tomorrow
  # $gc https://github.com/junegunn/vim-easy-align
  # $gc https://github.com/mhinz/vim-startify
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="other/start"
if [ -d $packFolder ]; then cd $packFolder
  # $gc https://github.com/wellle/targets.vim
  # $gc https://github.com/AndrewRadev/bufferize.vim
  # $gc https://github.com/Asheq/close-buffers.vim
  # $gc https://github.com/haya14busa/incsearch-fuzzy.vim
  # $gc https://github.com/haya14busa/incsearch.vim
  # $gc https://github.com/bronson/vim-visual-star-search
  # $gc https://github.com/maxbrunsfeld/vim-yankstack
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="shell/start"
if [ -d $packFolder ]; then cd $packFolder
  # $gc https://github.com/yegappan/mru
  # $gc https://github.com/tyru/open-browser.vim
  # sudo rm -r vim-buffing-wheel
  # $gc https://github.com/harriott/vim-buffing-wheel
  # $gc https://github.com/dhruvasagar/vim-open-url
  # $gc https://github.com/scrooloose/nerdtree
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

