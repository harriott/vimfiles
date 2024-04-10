# vim: set et tw=0:

# Joseph Harriott

# grab repositories

# close vims and in $vimfiles\packsGet-Win10  ./clones.ps1

function dd { if ( test-path $args[0] ) { ri $args[0] -recurse -force } }
# - needs  Vim  not to be running
function ensurePath {
  $packs = $vimfiles+'\'+$args[0]+'\opt'
  if ( ! ( test-path $packs ) ) { ni $packs -type directory }
  "cd $($packs)"; cd $($packs)
  }
function gcfbn { git clone --filter=blob:none $args[0] }

#=> 0 cp
ensurePath vim\packs-cp

  # gcfbn git@github.com:harriott/vim-markdown.git
  # gcfbn https://github.com/AndrewRadev/bufferize.vim
  # gcfbn https://github.com/Asheq/close-buffers.vim
  # gcfbn https://github.com/PProvost/vim-ps1
  # gcfbn https://github.com/bronson/vim-visual-star-search
  # gcfbn https://github.com/camnw/lf-vim
  # gcfbn https://github.com/christianrondeau/vim-base64
  # gcfbn https://github.com/dhruvasagar/vim-open-url
  # gcfbn https://github.com/dpelle/vim-LanguageTool
  # gcfbn https://github.com/drmikehenry/vim-fontsize
  # gcfbn https://github.com/harriott/vim-buffing-wheel
  # gcfbn https://github.com/haya14busa/incsearch-fuzzy.vim
  # gcfbn https://github.com/haya14busa/incsearch.vim
  # gcfbn https://github.com/junegunn/limelight.vim
  # gcfbn https://github.com/junegunn/vim-easy-align
  # gcfbn https://github.com/lervag/vimtex
  # gcfbn https://github.com/lilydjwg/colorizer
  # gcfbn https://github.com/mhinz/vim-startify
  # gcfbn https://github.com/preservim/tagbar
  # gcfbn https://github.com/preservim/vim-markdown
  # gcfbn https://github.com/rhysd/vim-gfm-syntax
  # gcfbn https://github.com/ryanoasis/vim-devicons
  # gcfbn https://github.com/scrooloose/nerdtree
  # gcfbn https://github.com/svermeulen/vim-colors-tomorrow
  # gcfbn https://github.com/tpope/vim-fugitive
  # gcfbn https://github.com/tyru/open-browser.vim
  # gcfbn https://github.com/unblevable/quick-scope
  # gcfbn https://github.com/vim-pandoc/vim-pandoc-syntax
  # gcfbn https://github.com/vim-scripts/gitignore.vim
  # gcfbn https://github.com/wellle/targets.vim
  # gcfbn https://github.com/yegappan/mru
  # gcfbn https://github.com/wellle/context.vim

  # dd dsf.vim; gcfbn https://github.com/AndrewRadev/dsf.vim
  # dd FoldText; gcfbn https://github.com/Konfekt/FoldText
  # dd vim-ShowTrailingWhitespace; gcfbn https://github.com/inkarkat/vim-ShowTrailingWhitespace

#=> 0 unix
ensurePath vim\packs-unix


#=> 0 win32
ensurePath vim\packs-win32

  # gcfbn https://github.com/adelarsq/vim-matchit
  # gcfbn https://github.com/airblade/vim-gitgutter
  # gcfbn https://github.com/altercation/vim-colors-solarized
  # gcfbn https://github.com/bling/vim-airline
  # gcfbn https://github.com/chikamichi/mediawiki.vim
  # gcfbn https://github.com/ctrlpvim/ctrlp.vim
  # gcfbn https://github.com/dense-analysis/ale
  # gcfbn https://github.com/easymotion/vim-easymotion
  # gcfbn https://github.com/ervandew/supertab
  # gcfbn https://github.com/godlygeek/tabular
  # gcfbn https://github.com/jlanzarotta/bufexplorer
  # gcfbn https://github.com/mattn/calendar-vim
  # gcfbn https://github.com/mbbill/undotree
  # gcfbn https://github.com/scrooloose/nerdcommenter
  # gcfbn https://github.com/tmhedberg/SimpylFold
  # gcfbn https://github.com/tpope/vim-repeat
  # gcfbn https://github.com/tpope/vim-rhubarb
  # gcfbn https://github.com/tpope/vim-surround
  # gcfbn https://github.com/vim-airline/vim-airline-themes
  # gcfbn https://github.com/vim-syntastic/syntastic

#=> 2 nvim
ensurePath nvim\packs-nvim

  # gcfbn https://github.com/folke/tokyonight.nvim
  gcfbn https://github.com/nvim-tree/nvim-web-devicons

#=> 3 tidy off
sl $vimfiles\packsGet-Win10
.\after.ps1

