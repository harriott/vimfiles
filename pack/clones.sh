#!/bin/bash

# Joseph Harriott, Thu 19 Sep 2019
# grab repositories

packFolder="ft/opt"
if [ -d packFolder ]; then; cd packFolder
  git clone https://github.com/christianrondeau/vim-base64
  cd ../..
else; echo "Sorry, $packFolder ain't there..."; fi

# gitignore.vim
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
