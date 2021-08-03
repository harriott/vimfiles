# vim: set et tw=0:
# #region & #endregion create folding blocks if Peter Provost's vim-ps1 is installed

# Joseph Harriott

# grab repositories

function ensurePath {
  $packs = 'packs-'+$args[0]+'\opt'
  if ( ! ( test-path $packs ) ) { New-Item -name $packs -type directory }
  "cd $($packs)"; cd $($packs)
  }
Function gicl { git clone $args[0] }
Function rirf { ri -recurse -force $args[0] }

function pack {cd "$Env:UserProfile\vimfiles\pack"}

#region --- cp
ensurePath cp

  # gicl https://github.com/AndrewRadev/bufferize.vim
  # gicl https://github.com/Asheq/close-buffers.vim
  # gicl https://github.com/bronson/vim-visual-star-search
  # gicl https://github.com/christianrondeau/vim-base64
  # gicl https://github.com/dhruvasagar/vim-open-url
  # gicl https://github.com/dpelle/vim-LanguageTool
  # gicl https://github.com/drmikehenry/vim-fontsize
  # gicl https://github.com/harriott/vim-buffing-wheel
  # gicl https://github.com/haya14busa/incsearch-fuzzy.vim
  # gicl https://github.com/haya14busa/incsearch.vim
  # gicl https://github.com/inkarkat/vim-ShowTrailingWhitespace
    # $file = 'vim-ShowTrailingWhitespace\ftplugin\markdown_ShowTrailingWhitespace.vim'
    # (Get-Content $file) -replace '^c', '" c' | Set-Content $file
  # gicl https://github.com/junegunn/vim-easy-align
  # gicl https://github.com/junegunn/limelight.vim
  # gicl https://github.com/lilydjwg/colorizer
  # gicl https://github.com/mhinz/vim-startify
  # gicl https://github.com/PProvost/vim-ps1
  # gicl https://github.com/rhysd/vim-gfm-syntax
  # gicl https://github.com/scrooloose/nerdtree
  # gicl https://github.com/svermeulen/vim-colors-tomorrow
  # gicl https://github.com/tpope/vim-fugitive
  # gicl https://github.com/tyru/open-browser.vim
  # gicl https://github.com/unblevable/quick-scope
  # gicl https://github.com/vim-pandoc/vim-pandoc-syntax
  # gicl https://github.com/vim-scripts/gitignore.vim
  # gicl https://github.com/wellle/targets.vim
  # gicl https://github.com/yegappan/mru

pack
#endregion

#region --- unix
ensurePath unix


pack
#endregion

#region --- win32
ensurePath win32

  # gicl https://github.com/adelarsq/vim-matchit
  # gicl https://github.com/airblade/vim-gitgutter
  # gicl https://github.com/altercation/vim-colors-solarized
  # gicl https://github.com/bling/vim-airline
  # gicl https://github.com/chikamichi/mediawiki.vim
  # gicl https://github.com/ctrlpvim/ctrlp.vim
  # gicl https://github.com/dense-analysis/ale
  # gicl https://github.com/easymotion/vim-easymotion
  # gicl https://github.com/ervandew/supertab
  # gicl https://github.com/godlygeek/tabular
  # gicl https://github.com/jlanzarotta/bufexplorer
  # gicl https://github.com/mattn/calendar-vim
  # gicl https://github.com/mbbill/undotree
  # gicl https://github.com/scrooloose/nerdcommenter
  # gicl https://github.com/tmhedberg/SimpylFold
  # gicl https://github.com/tpope/vim-repeat
  # gicl https://github.com/tpope/vim-rhubarb
  # gicl https://github.com/tpope/vim-surround
  # gicl https://github.com/vim-airline/vim-airline-themes
  # gicl https://github.com/vim-syntastic/syntastic

pack
#endregion

cd Win10
PowerShell .\lists.ps1
cd $PSScriptRoot

