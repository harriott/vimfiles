#!/bin/bash

# Joseph Harriott, Thu 19 Sep 2019
# grab repositories

# find . -type d -name '*.git'

packFolder="ft/opt"
if [ -d $packFolder ]; then cd $packFolder
  # git clone https://github.com/christianrondeau/vim-base64
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="ft/start"
if [ -d $packFolder ]; then cd $packFolder
  # git clone https://github.com/jtratner/vim-flavored-markdown
  git clone https://github.com/PProvost/vim-ps1
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="layout/opt"
if [ -d $packFolder ]; then cd $packFolder
  git clone https://github.com/lilydjwg/colorizer
  git clone https://github.com/junegunn/limelight.vim
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="layout/start"
if [ -d $packFolder ]; then cd $packFolder
  # git clone https://github.com/vim-scripts/gitignore.vim
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

# vim-fontsize
# bufferize.vim
# close-buffers.vim
# incsearch-fuzzy.vim
# incsearch.vim
# vim-visual-star-search
# vim-yankstack
# mru
# open-browser.vim
# vim-buffing-wheel
# vim-open-url
