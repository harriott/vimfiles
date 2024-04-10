#!/bin/bash
# vim: fdl=1 sw=2:

# Joseph Harriott
# grab repositories
# bash $vimfiles/packsGet-ArchLinux/clones.sh

set -e

#=> 1 packs
gcfbn='git clone --filter=blob:none'
gd(){ echo $1; [[ -d $1 ]] || mkdir $1; cd $1; }

#==> cp
echo; cd $vimfiles/vim; gd packs-cp

gd opt; ls

  # $gcfbn https://github.com/dense-analysis/ale
  # $gcfbn https://github.com/jlanzarotta/bufexplorer
  # $gcfbn https://github.com/AndrewRadev/bufferize.vim
  # $gcfbn https://github.com/mattn/calendar-vim
  # $gcfbn https://github.com/Asheq/close-buffers.vim
  # $gcfbn https://github.com/lilydjwg/colorizer
  # $gcfbn https://github.com/smancill/conky-syntax.vim
  # $gcfbn https://github.com/chrisbra/csv.vim
  # $gcfbn https://github.com/ctrlpvim/ctrlp.vim
  # $gcfbn https://github.com/AndrewRadev/dsf.vim
  # $gcfbn https://github.com/lambdalisue/fern.vim
  # $gcfbn https://github.com/lambdalisue/fern-git-status.vim
  # $gcfbn https://github.com/yuki-yano/fern-preview.vim
  # $gcfbn https://github.com/lambdalisue/fern-renderer-nerdfont.vim
  # $gcfbn https://github.com/vim-scripts/gitignore.vim
  # $gcfbn https://github.com/solyarisoftware/Highlight.vim
  # $gcfbn https://github.com/haya14busa/incsearch-fuzzy.vim
  # $gcfbn https://github.com/haya14busa/incsearch.vim
  # $gcfbn https://github.com/junegunn/limelight.vim
  # $gcfbn https://github.com/valloric/listtoggle
  # $gcfbn https://github.com/Valloric/MatchTagAlways
  # $gcfbn https://github.com/chikamichi/mediawiki.vim
  # $gcfbn https://github.com/yegappan/mru
  # $gcfbn https://github.com/scrooloose/nerdcommenter
  # $gcfbn https://github.com/lambdalisue/nerdfont.vim
  # $gcfbn https://github.com/scrooloose/nerdtree
  # $gcfbn https://github.com/Xuyuanp/nerdtree-git-plugin
  # $gcfbn https://github.com/tyru/open-browser.vim
  # $gcfbn https://github.com/axvr/org.vim
  # $gcfbn https://github.com/unblevable/quick-scope
  # $gcfbn https://github.com/tmhedberg/SimpylFold
  # $gcfbn https://github.com/ervandew/supertab
  # $gcfbn https://github.com/vim-syntastic/syntastic
  # $gcfbn https://github.com/godlygeek/tabular
  # $gcfbn https://github.com/harriott/tagbar
  # $gcfbn https://github.com/wellle/targets.vim
  # $gcfbn https://github.com/ron89/thesaurus_query.vim
  # $gcfbn https://github.com/mbbill/undotree
  # $gcfbn https://github.com/vifm/vifm.vim
  # $gcfbn https://github.com/bling/vim-airline
  # $gcfbn https://github.com/vim-airline/vim-airline-themes
  # $gcfbn https://github.com/haya14busa/vim-asterisk
  # $gcfbn https://github.com/christianrondeau/vim-base64
  # $gcfbn https://github.com/Winseven4lyf/vim-bbcode
  # $gcfbn https://github.com/harriott/vim-buffing-wheel
  # $gcfbn https://github.com/qpkorr/vim-bufkill
  # $gcfbn https://github.com/tpope/vim-characterize
  # $gcfbn https://github.com/harriott/vim-clifm
  # $gcfbn https://github.com/altercation/vim-colors-solarized
  # $gcfbn https://github.com/svermeulen/vim-colors-tomorrow
  # $gcfbn https://github.com/ryanoasis/vim-devicons
  # $gcfbn https://github.com/justinmk/vim-dirvish
  # $gcfbn https://github.com/kristijanhusak/vim-dirvish-git
  # $gcfbn https://github.com/harriott/vim-dokuwiki
  # $gcfbn https://github.com/junegunn/vim-easy-align
  # $gcfbn https://github.com/easymotion/vim-easymotion
  # $gcfbn https://github.com/rbong/vim-flog
  # $gcfbn https://github.com/drmikehenry/vim-fontsize
  # $gcfbn https://github.com/tpope/vim-fugitive
  # $gcfbn https://github.com/rhysd/vim-gfm-syntax
  # $gcfbn https://github.com/hjson/vim-hjson
  # $gcfbn https://github.com/RRethy/vim-illuminate
  # $gcfbn https://github.com/inkarkat/vim-ingo-library
  # $gcfbn https://github.com/lfv89/vim-interestingwords
  # $gcfbn https://github.com/Konfekt/vim-langtool
  # $gcfbn https://github.com/dpelle/vim-LanguageTool
  # $gcfbn https://github.com/elbeardmorez/vim-loclist-follow
  # $gcfbn https://github.com/inkarkat/vim-mark
  # $gcfbn https://github.com/andymass/vim-matchup
  # $gcfbn https://github.com/chunkhang/vim-mbsync
  # $gcfbn https://github.com/dhruvasagar/vim-open-url
  # $gcfbn https://github.com/vim-pandoc/vim-pandoc-syntax
  # $gcfbn https://github.com/junegunn/vim-peekaboo
  # $gcfbn https://github.com/PProvost/vim-ps1
  # $gcfbn https://github.com/tpope/vim-repeat
  # $gcfbn https://github.com/tpope/vim-rhubarb
  # $gcfbn https://github.com/inkarkat/vim-ShowTrailingWhitespace
  # $gcfbn https://github.com/mhinz/vim-startify
  # $gcfbn https://github.com/tpope/vim-surround
  # $gcfbn https://github.com/t9md/vim-textmanip
  # $gcfbn https://github.com/bronson/vim-visual-star-search
  # $gcfbn git@github.com:harriott/vim-gfm-syntax.git
  # $gcfbn https://github.com/fatih/vim-go
  # $gcfbn https://github.com/vim-scripts/CSS-one-line--multi-line-folding
  # $gcfbn https://github.com/tpope/vim-liquid
  # $gcfbn https://github.com/arecarn/vim-clean-fold
  # $gcfbn https://github.com/mattn/emmet-vim
  # $gcfbn https://github.com/alvan/vim-closetag
  # $gcfbn https://github.com/AndrewRadev/tagalong.vim
  # $gcfbn https://github.com/ap/vim-css-color
  # $gcfbn https://github.com/prettier/vim-prettier
  # $gcfbn https://github.com/svermeulen/vim-subversive
  # $gcfbn https://github.com/wfxr/minimap.vim
  # $gcfbn https://github.com/junegunn/vader.vim
  # $gcfbn https://github.com/vim-scripts/vis
  # $gcfbn https://github.com/harriott/vim-markdown
  # $gcfbn https://github.com/harriott/vim-tagbar
  # $gcfbn https://github.com/EdenEast/nightfox.nvim

  # $gcfbn https://github.com/vim-scripts/MultipleSearch
  # $gcfbn https://github.com/moll/vim-bbye
  # $gcfbn https://github.com/adelarsq/vim-matchit

  # [[ -d tagbar ]] && sudo rm -r tagbar; $gcfbn https://github.com/preservim/tagbar
  # [[ -d vim-gitgutter ]] && sudo rm -r vim-gitgutter; $gcfbn https://github.com/airblade/vim-gitgutter

#==> nvim
echo; cd $vimfiles/nvim; gd packs-nvim

gd opt; ls

  # $gcfbn https://github.com/nanozuki/tabby.nvim

#==> unix
echo; cd $vimfiles/vim; gd packs-unix

gd opt; ls

  # $gcfbn https://github.com/chrisbra/Colorizer
  # $gcfbn https://github.com/junegunn/fzf.vim
  # $gcfbn https://github.com/nanotech/jellybeans.vim
  # $gcfbn https://github.com/ntpeters/vim-better-whitespace
  # $gcfbn https://github.com/RRethy/vim-hexokinase
  # $gcfbn https://github.com/srstevenson/vim-picker
  # $gcfbn https://github.com/qnighy/vim-ssh-annex
  # $gcfbn https://github.com/sheerun/vim-wombat-scheme
  # $gcfbn https://github.com/powerman/vim-plugin-AnsiEsc

#==> win32
echo; cd $vimfiles/vim; gd packs-win32

gd opt; ls

#=> 2 lists
echo; $cdp
cd $vimfiles/packsGet-ArchLinux; . after.sh

