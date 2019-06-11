# vim: set et tw=0:

# Joseph Harriott http://momentary.eu/
# grab or tidy repositories

# use PowerShell function packs to list folders two down

Function gicl { git clone $args[0] }
Function rirf { ri -recurse -force $args[0] }
Function tryPath {
  $script:goodPath = ""
  if ( $(Try { Test-Path $args[0] } Catch { $false }) )
    { "cd $($args[0])"; cd $($args[0]); $script:goodPath = "yes" }
  else { "Sorry, $($args[0]) ain't there..." }
  }

tryPath ingo\start
if ( $goodPath ){

  cd ..\.. }

tryPath ft\opt
if ( $goodPath ){

  # gicl https://github.com/christianrondeau/vim-base64

  cd ..\.. }

tryPath ft\start
if ( $goodPath ){

  # gicl https://github.com/chikamichi/mediawiki.vim
  # gicl https://github.com/ervandew/supertab
  gicl https://github.com/PProvost/vim-ps1
  # gicl https://github.com/scrooloose/nerdcommenter
  # gicl https://github.com/vim-syntastic/syntastic

  cd ..\.. }

tryPath git\opt
if ( $goodPath ){

  # gicl https://github.com/airblade/vim-gitgutter

  cd ..\.. }

tryPath git\start
if ( $goodPath ){

  # gicl https://github.com/mbbill/undotree

  cd ..\.. }

tryPath layout\opt
if ( $goodPath ){

  # gicl https://github.com/dhruvasagar/vim-table-mode
  # gicl https://github.com/lilydjwg/colorizer
  # gicl https://github.com/tmhedberg/SimpylFold
  # gicl https://github.com/junegunn/limelight.vim

  cd ..\.. }

tryPath layout\start
if ( $goodPath ){

  # gicl https://github.com/bling/vim-airline
  # gicl https://github.com/godlygeek/tabular
  # gicl https://github.com/mattn/calendar-vim
  # gicl https://github.com/morhetz/gruvbox
  # gicl https://github.com/vim-airline/vim-airline-themes
  # gicl https://github.com/vim-scripts/gitignore.vim
  # gicl https://github.com/drmikehenry/vim-fontsize

  cd ..\.. }

tryPath other\opt
if ( $goodPath ){

  # gicl https://github.com/dpelle/vim-LanguageTool

  cd ..\.. }

tryPath other\start
if ( $goodPath ){

  # gicl https://github.com/AndrewRadev/bufferize.vim
  # gicl https://github.com/Asheq/close-buffers.vim
  # gicl https://github.com/inkarkat/vim-ingo-library
  # gicl https://github.com/inkarkat/vim-ShowTrailingWhitespace
  # gicl https://github.com/maxbrunsfeld/vim-yankstack

  cd ..\.. }

tryPath shell\start
if ( $goodPath ){

  # rirf bufexplorer
  # gicl https://github.com/jlanzarotta/bufexplorer
  # rirf bufexplorer\.git

  # rirf ctrlp.vim
  # gicl https://github.com/ctrlpvim/ctrlp.vim
  # rirf ctrlp.vim\.git

  # rirf mru
  # gicl https://github.com/yegappan/mru
  # rirf mru\.git

  # rirf nerdtree
  # gicl https://github.com/scrooloose/nerdtree
  # rirf nerdtree\.git

  # rirf open-browser.vim
  # gicl https://github.com/tyru/open-browser.vim
  # rirf open-browser.vim\.git

  # gicl https://github.com/harriott/vim-buffing-wheel
  # mine

  # rirf vim-open-url
  # gicl https://github.com/dhruvasagar/vim-open-url
  # rirf vim-open-url\.git

  cd ..\.. }

