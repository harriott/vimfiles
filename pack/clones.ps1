# vim: set et tw=0:

# Joseph Harriott http://momentary.eu/ - Thu 26 Sep 2019
# grab repositories

# use my PowerShell function packs to list folders two down

# gci -r -force .git |?{$_.PSIsContainer} | select -ExpandProperty fullname > gits-MSW10.txt

Function gicl { git clone $args[0] }
Function rirf { ri -recurse -force $args[0] }
Function tryPath {
  $script:goodPath = ""
  if ( $(Try { Test-Path $args[0] } Catch { $false }) )
    { "cd $($args[0])"; cd $($args[0]); $script:goodPath = "yes" }
  else { "Sorry, $($args[0]) ain't there..." }
  }

tryPath ft\opt
if ( $goodPath ){

  # gicl https://github.com/vim-syntastic/syntastic
  # gicl https://github.com/dense-analysis/ale

  cd ..\.. }

tryPath ft\start
if ( $goodPath ){

  # gicl https://github.com/chikamichi/mediawiki.vim
  # gicl https://github.com/christianrondeau/vim-base64
  # gicl https://github.com/ervandew/supertab
  # gicl https://github.com/PProvost/vim-ps1
  # gicl https://github.com/scrooloose/nerdcommenter
  # gicl https://github.com/jtratner/vim-flavored-markdown

  cd ..\.. }

tryPath git\opt
if ( $goodPath ){

  # gicl https://github.com/airblade/vim-gitgutter
  # rirf vim-rhubarb
  # gicl https://github.com/tpope/vim-rhubarb

  cd ..\.. }

tryPath git\start
if ( $goodPath ){

  # gicl https://github.com/mbbill/undotree
  # gicl https://github.com/tpope/vim-fugitive

  cd ..\.. }

tryPath layout\opt
if ( $goodPath ){

  # gicl https://github.com/godlygeek/tabular
  # gicl https://github.com/dhruvasagar/vim-table-mode
  # gicl https://github.com/lilydjwg/colorizer
  # gicl https://github.com/tmhedberg/SimpylFold
  # gicl https://github.com/junegunn/limelight.vim

  cd ..\.. }

tryPath layout\start
if ( $goodPath ){

  # gicl https://github.com/junegunn/vim-easy-align
  # gicl https://github.com/bling/vim-airline
  # gicl https://github.com/drmikehenry/vim-fontsize
  # gicl https://github.com/mattn/calendar-vim
  # gicl https://github.com/morhetz/gruvbox
  # rirf vim-better-whitespace
  # gicl https://github.com/ntpeters/vim-better-whitespace
  # gicl https://github.com/inkarkat/vim-ShowTrailingWhitespace
  # gicl https://github.com/vim-airline/vim-airline-themes
  # gicl https://github.com/vim-scripts/gitignore.vim
  # gicl https://github.com/mhinz/vim-startify

  # gicl https://github.com/arcticicestudio/nord-vim
  rirf nord-vim

  # gicl https://github.com/mhinz/vim-janah
  # rirf vim-janah

  # rirf vim-colors-solarized
  # gicl https://github.com/altercation/vim-colors-solarized

  cd ..\.. }

tryPath other\opt
if ( $goodPath ){

  # rirf vim-LanguageTool

  # gicl https://github.com/tpope/vim-surround

  cd ..\.. }

tryPath other\start
if ( $goodPath ){

  # gicl https://github.com/chrisbra/Recover.vim
  # gicl https://github.com/AndrewRadev/bufferize.vim
  # gicl https://github.com/Asheq/close-buffers.vim
  # gicl https://github.com/easymotion/vim-easymotion
  # gicl https://github.com/tpope/vim-repeat
  # gicl https://github.com/bronson/vim-visual-star-search
  # gicl https://github.com/svermeulen/vim-cutlass
  # gicl https://github.com/wellle/targets.vim
  # gicl https://github.com/adelarsq/vim-matchit

  # rirf vim-LanguageTool
  # gicl https://github.com/dpelle/vim-LanguageTool

  cd ..\.. }

tryPath shell\start
if ( $goodPath ){

  # rirf bufexplorer
  # gicl https://github.com/jlanzarotta/bufexplorer

  # rirf ctrlp.vim
  # gicl https://github.com/ctrlpvim/ctrlp.vim

  # rirf mru
  # gicl https://github.com/yegappan/mru

  # rirf nerdtree
  # gicl https://github.com/scrooloose/nerdtree

  # rirf open-browser.vim
  # gicl https://github.com/tyru/open-browser.vim

  # gicl https://github.com/harriott/vim-buffing-wheel
  # mine

  # gicl https://github.com/dhruvasagar/vim-open-url

  cd ..\.. }

gci */*/* | where { $_.PSIsContainer } | select -ExpandProperty FullName > all-MSW10.txt

