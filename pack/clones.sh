#!/bin/bash

# Joseph Harriott, Thu 19 Sep 2019
# grab repositories

packFolder="ft/opt"
if [ -d $packFolder ]; then cd $packFolder
  # git clone https://github.com/christianrondeau/vim-base64
  cd ../..
else echo "no $packFolder"; fi

packFolder="ft/start"
if [ -d $packFolder ]; then cd $packFolder
  git clone https://github.com/jtratner/vim-flavored-markdown
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="layout/start"
if [ -d $packFolder ]; then cd $packFolder
  git clone https://github.com/vim-scripts/gitignore.vim
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

# vim-flavored-markdown
# vim-ps1
# vim-ingo-library
# vim-ShowTrailingWhitespace
# colorizer
# limelight.vim
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
