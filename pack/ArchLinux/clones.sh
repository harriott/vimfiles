#!/bin/bash
# vim: sw=2:

# Joseph Harriott
# grab repositories
# bash $vfp/ArchLinux/clones.sh

set -e

cdp="cd $HOME/.vim/pack"

#=> 1 packs
gc='git clone'
gd(){ echo $1; [[ -d $1 ]] || mkdir $1; cd $1; }

#==> cp
echo; $cdp; gd packs-cp

gd opt; ls

  # $gc https://github.com/dense-analysis/ale
  # $gc https://github.com/jlanzarotta/bufexplorer
  # $gc https://github.com/AndrewRadev/bufferize.vim
  # $gc https://github.com/mattn/calendar-vim
  # $gc https://github.com/Asheq/close-buffers.vim
  # $gc https://github.com/lilydjwg/colorizer
  # $gc https://github.com/smancill/conky-syntax.vim
  # $gc https://github.com/chrisbra/csv.vim
  # $gc https://github.com/ctrlpvim/ctrlp.vim
  # $gc https://github.com/AndrewRadev/dsf.vim
  # $gc https://github.com/lambdalisue/fern.vim
  # $gc https://github.com/lambdalisue/fern-git-status.vim
  # $gc https://github.com/yuki-yano/fern-preview.vim
  # $gc https://github.com/lambdalisue/fern-renderer-nerdfont.vim
  # $gc https://github.com/vim-scripts/gitignore.vim
  # $gc https://github.com/solyarisoftware/Highlight.vim
  # $gc https://github.com/haya14busa/incsearch-fuzzy.vim
  # $gc https://github.com/haya14busa/incsearch.vim
  # $gc https://github.com/junegunn/limelight.vim
  # $gc https://github.com/valloric/listtoggle
  # $gc https://github.com/Valloric/MatchTagAlways
  # $gc https://github.com/chikamichi/mediawiki.vim
  # $gc https://github.com/yegappan/mru
  # $gc https://github.com/scrooloose/nerdcommenter
  # $gc https://github.com/lambdalisue/nerdfont.vim
  # $gc https://github.com/scrooloose/nerdtree
  # $gc https://github.com/Xuyuanp/nerdtree-git-plugin
  # $gc https://github.com/tyru/open-browser.vim
  # $gc https://github.com/axvr/org.vim
  # $gc https://github.com/unblevable/quick-scope
  # $gc https://github.com/tmhedberg/SimpylFold
  # $gc https://github.com/ervandew/supertab
  # $gc https://github.com/vim-syntastic/syntastic
  # $gc https://github.com/godlygeek/tabular
  # [[ -d tagbar ]] && sudo rm -r tagbar; $gc https://github.com/preservim/tagbar
  # $gc https://github.com/harriott/tagbar
  # $gc https://github.com/wellle/targets.vim
  # $gc https://github.com/ron89/thesaurus_query.vim
  # $gc https://github.com/mbbill/undotree
  # $gc https://github.com/vifm/vifm.vim
  # $gc https://github.com/bling/vim-airline
  # $gc https://github.com/vim-airline/vim-airline-themes
  # $gc https://github.com/haya14busa/vim-asterisk
  # $gc https://github.com/christianrondeau/vim-base64
  # $gc https://github.com/Winseven4lyf/vim-bbcode
  # $gc https://github.com/harriott/vim-buffing-wheel
  # $gc https://github.com/qpkorr/vim-bufkill
  # $gc https://github.com/tpope/vim-characterize
  # $gc https://github.com/harriott/vim-clifm
  # $gc https://github.com/altercation/vim-colors-solarized
  # $gc https://github.com/svermeulen/vim-colors-tomorrow
  # $gc https://github.com/ryanoasis/vim-devicons
  # $gc https://github.com/justinmk/vim-dirvish
  # $gc https://github.com/kristijanhusak/vim-dirvish-git
  # $gc https://github.com/nblock/vim-dokuwiki
  # $gc https://github.com/junegunn/vim-easy-align
  # $gc https://github.com/easymotion/vim-easymotion
  # $gc https://github.com/rbong/vim-flog
  # $gc https://github.com/drmikehenry/vim-fontsize
  # $gc https://github.com/tpope/vim-fugitive
  # $gc https://github.com/rhysd/vim-gfm-syntax
  # [[ -d vim-gitgutter ]] && sudo rm -r vim-gitgutter; $gc https://github.com/airblade/vim-gitgutter
  # $gc https://github.com/hjson/vim-hjson
  # $gc https://github.com/RRethy/vim-illuminate
  # $gc https://github.com/inkarkat/vim-ingo-library
  # $gc https://github.com/lfv89/vim-interestingwords
  # $gc https://github.com/Konfekt/vim-langtool
  # $gc https://github.com/dpelle/vim-LanguageTool
  # $gc https://github.com/elbeardmorez/vim-loclist-follow
  # $gc https://github.com/inkarkat/vim-mark
  # $gc https://github.com/andymass/vim-matchup
  # $gc https://github.com/chunkhang/vim-mbsync
  # $gc https://github.com/dhruvasagar/vim-open-url
  # $gc https://github.com/vim-pandoc/vim-pandoc-syntax
  # $gc https://github.com/junegunn/vim-peekaboo
  # $gc https://github.com/PProvost/vim-ps1
  # $gc https://github.com/tpope/vim-repeat
  # $gc https://github.com/tpope/vim-rhubarb
  # $gc https://github.com/inkarkat/vim-ShowTrailingWhitespace
  # $gc https://github.com/mhinz/vim-startify
  # $gc https://github.com/tpope/vim-surround
  # $gc https://github.com/t9md/vim-textmanip
  # $gc https://github.com/bronson/vim-visual-star-search
  # $gc git@github.com:harriott/vim-gfm-syntax.git
  # $gc https://github.com/fatih/vim-go
  # $gc https://github.com/vim-scripts/CSS-one-line--multi-line-folding
  # $gc https://github.com/tpope/vim-liquid
  # $gc https://github.com/arecarn/vim-clean-fold
  # $gc https://github.com/mattn/emmet-vim
  # $gc https://github.com/alvan/vim-closetag
  # $gc https://github.com/AndrewRadev/tagalong.vim
  # $gc https://github.com/ap/vim-css-color
  # $gc https://github.com/prettier/vim-prettier
  # $gc https://github.com/svermeulen/vim-subversive
  # $gc https://github.com/wfxr/minimap.vim
  # $gc https://github.com/junegunn/vader.vim
  # $gc https://github.com/vim-scripts/vis

  # $gc https://github.com/vim-scripts/MultipleSearch
  # $gc https://github.com/moll/vim-bbye
  # $gc https://github.com/adelarsq/vim-matchit

#==> unix
echo; $cdp; gd packs-unix

gd opt; ls

  # $gc https://github.com/chrisbra/Colorizer
  # $gc https://github.com/junegunn/fzf.vim
  # $gc https://github.com/nanotech/jellybeans.vim
  # $gc https://github.com/ntpeters/vim-better-whitespace
  # $gc https://github.com/RRethy/vim-hexokinase
  # $gc https://github.com/srstevenson/vim-picker
  # $gc https://github.com/qnighy/vim-ssh-annex
  # $gc https://github.com/sheerun/vim-wombat-scheme
  # $gc https://github.com/powerman/vim-plugin-AnsiEsc

#==> win32
echo; $cdp; gd packs-win32

gd opt; ls

#=> 2 lists
echo; $cdp
cd ArchLinux; . after.sh

