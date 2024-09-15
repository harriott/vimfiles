# vim: set et tw=0:

# Joseph Harriott

# grab repositories

# close vims for  & $vfvp\get/win64\clones.ps1

read-host '- you''ve closed instances of vim? '

function dd { if ( test-path $args[0] ) { ri $args[0] -recurse -force } }
# - delete directory - needs  Vim  not to be running

# #=> 0 fzf
# "cd $vfv/plugin"
# cd $vfv/plugin

# git clone https://github.com/junegunn/fzf
# cd fzf; git checkout 24ff66d  # last working for shell access

#=> 0 packs
function ensurePath {
  $packs = $vimfiles+'\vim\packs\packs-'+$args[0]+'\opt'
  if ( ! ( test-path $packs ) ) { ni $packs -type directory }
  "cd $($packs)"; cd $($packs)
  }
function gcl { git clone --depth 1 $args[0] }
# function gcl { git clone --filter=blob:none $args[0] }

#==> 0 cp
ensurePath cp

  # dd FoldText; gcl https://github.com/Konfekt/FoldText
  # dd ale; gcl https://github.com/dense-analysis/ale
  # dd dsf.vim; gcl https://github.com/AndrewRadev/dsf.vim
  # dd vim-ShowTrailingWhitespace; gcl https://github.com/inkarkat/vim-ShowTrailingWhitespace
  # dd vim-css-color; gcl https://github.com/ap/vim-css-color
  # dd vimtex; gcl https://github.com/lervag/vimtex
  # gcl https://github.com/AndrewRadev/bufferize.vim
  # gcl https://github.com/Asheq/close-buffers.vim
  # gcl https://github.com/BourgeoisBear/clrzr
  # gcl https://github.com/PProvost/vim-ps1
  # gcl https://github.com/bronson/vim-visual-star-search
  # gcl https://github.com/camnw/lf-vim
  # gcl https://github.com/chrisbra/unicode.vim
  # gcl https://github.com/christianrondeau/vim-base64
  # gcl https://github.com/dhruvasagar/vim-open-url
  # gcl https://github.com/dpelle/vim-LanguageTool
  # gcl https://github.com/drmikehenry/vim-fontsize
  # gcl https://github.com/harriott/vim-buffing-wheel
  # gcl https://github.com/haya14busa/incsearch-fuzzy.vim
  # gcl https://github.com/haya14busa/incsearch.vim
  # gcl https://github.com/junegunn/limelight.vim
  # gcl https://github.com/junegunn/vim-easy-align
  # gcl https://github.com/lilydjwg/colorizer
  # gcl https://github.com/mhinz/vim-startify
  # gcl https://github.com/preservim/tagbar
  # gcl https://github.com/preservim/vim-markdown
  # gcl https://github.com/rhysd/vim-gfm-syntax
  # gcl https://github.com/ryanoasis/vim-devicons
  # gcl https://github.com/scrooloose/nerdtree
  # gcl https://github.com/svermeulen/vim-colors-tomorrow
  # gcl https://github.com/tpope/vim-fugitive
  # gcl https://github.com/tyru/open-browser.vim
  # gcl https://github.com/unblevable/quick-scope
  # gcl https://github.com/vim-pandoc/vim-pandoc-syntax
  # gcl https://github.com/vim-scripts/gitignore.vim
  # gcl https://github.com/wellle/context.vim
  # gcl https://github.com/wellle/targets.vim
  # gcl https://github.com/yegappan/mru
  # gcl https://github.com/ajmwagar/vim-deus
  # gcl https://github.com/doums/darcula
  # gcl https://github.com/dracula/vim dracula
  # gcl https://github.com/romainl/Apprentice
  # gcl https://github.com/NLKNguyen/papercolor-theme

#==> 0 unix
ensurePath unix


#==> 0 win64
ensurePath win64

  # gcl https://github.com/airblade/vim-gitgutter
  # gcl https://github.com/altercation/vim-colors-solarized
  # gcl https://github.com/bling/vim-airline
  # gcl https://github.com/chikamichi/mediawiki.vim
  # gcl https://github.com/ctrlpvim/ctrlp.vim
  # gcl https://github.com/easymotion/vim-easymotion
  # gcl https://github.com/ervandew/supertab
  # gcl https://github.com/godlygeek/tabular
  # gcl https://github.com/jlanzarotta/bufexplorer
  # gcl https://github.com/mattn/calendar-vim
  # gcl https://github.com/mbbill/undotree
  # gcl https://github.com/scrooloose/nerdcommenter
  # gcl https://github.com/tmhedberg/SimpylFold
  # gcl https://github.com/tpope/vim-repeat
  # gcl https://github.com/tpope/vim-rhubarb
  # gcl https://github.com/tpope/vim-surround
  # gcl https://github.com/vim-airline/vim-airline-themes
  # gcl https://github.com/vim-syntastic/syntastic
  # gcl https://github.com/itchyny/lightline.vim

#=> 3 tidy off
. $vfvp\get-win64\after.ps1

