#!/bin/bash

# Joseph Harriott
# grab repositories
# bash clones.sh

gc='git clone'

packFolder="ft/start"
if [ -d $packFolder ]; then cd $packFolder
  # $gc https://github.com/christianrondeau/vim-base64
  # $gc https://github.com/jtratner/vim-flavored-markdown
  # $gc https://github.com/PProvost/vim-ps1
  # $gc https://github.com/vim-pandoc/vim-pandoc-syntax
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
  # $gc https://github.com/junegunn/limelight.vim
  # $gc https://github.com/lilydjwg/colorizer
  # $gc https://github.com/ntpeters/vim-better-whitespace
  # $gc https://github.com/chrisbra/Colorizer
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="layout/start"
if [ -d $packFolder ]; then cd $packFolder
  # $gc https://github.com/challenger-deep-theme/vim challenger-deep
  # $gc https://github.com/chunkhang/vim-mbsync
  # $gc https://github.com/dracula/vim dracula
  # $gc https://github.com/drmikehenry/vim-fontsize
  # $gc https://github.com/inkarkat/vim-ShowTrailingWhitespace
  # $gc https://github.com/svermeulen/vim-colors-tomorrow
  # $gc https://github.com/junegunn/vim-easy-align
  # $gc https://github.com/mhinz/vim-startify
  # $gc https://github.com/vim-scripts/gitignore.vim
  # $gc https://github.com/reedes/vim-colors-pencil
  # $gc https://github.com/sheerun/vim-wombat-scheme
  # $gc https://github.com/nanotech/jellybeans.vim
  # $gc https://github.com/jnurmine/Zenburn
  # sudo rm -r pacmanlog.vim
  # sudo rm -r dracula
  # sudo rm -r challenger-deep
  # sudo rm -r vim-better-whitespace
  # sudo rm -r vim-colors-pencil
  # sudo rm -r vim-toml
  # sudo rm -r Zenburn
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="neovim/opt"
if [ -d $packFolder ]; then cd $packFolder
  # $gc https://github.com/RRethy/vim-hexokinase
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="other/start"
if [ -d $packFolder ]; then cd $packFolder
  # $gc https://github.com/AndrewRadev/bufferize.vim
  # $gc https://github.com/Asheq/close-buffers.vim
  # $gc https://github.com/bronson/vim-visual-star-search
  # $gc https://github.com/haya14busa/incsearch-fuzzy.vim
  # $gc https://github.com/haya14busa/incsearch.vim
  # $gc https://github.com/kana/vim-textobj-entire
  # sudo rm -r vim-textobj-entire
  # $gc https://github.com/maxbrunsfeld/vim-yankstack
  # sudo rm -r vim-yankstack
  # $gc https://github.com/wellle/targets.vim
  # $gc https://github.com/unblevable/quick-scope
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

packFolder="shell/start"
if [ -d $packFolder ]; then cd $packFolder
  # $gc https://github.com/dhruvasagar/vim-open-url
  # $gc https://github.com/harriott/vim-buffing-wheel
  # $gc https://github.com/junegunn/fzf.vim
  # $gc https://github.com/scrooloose/nerdtree
  # $gc https://github.com/srstevenson/vim-picker
  # $gc https://github.com/tyru/open-browser.vim
  # $gc https://github.com/yegappan/mru
  # sudo rm -r vim-buffing-wheel
  cd ../..
else echo -en "\e[1m no $packFolder \e[0m"; echo; fi

find . -type d -name '*.git' > gits-ArchLinux.txt
find . -mindepth 3 -maxdepth 3 -type d > all-ArchLinux.txt
echo -e "Don't forget to \e[1m\e[95m :helptags ALL \e[0m"

