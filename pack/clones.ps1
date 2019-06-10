# vim: set et tw=0:

# Joseph Harriott http://momentary.eu/
# grab or tidy repositories

# use PowerShell function packs to list folders two down

Function gicl { git clone $args[0] }
Function rirf { ri -recurse -force $args[0] }
Function tryPath {
  $goodPath = ""
  if ( $(Try { Test-Path $args[0] } Catch { $false }) )
    # { $script:goodPath = "yes"; $goodPath }
    { "cd $($args[0])"; cd $($args[0]); $script:goodPath = "yes" }
  else { "Sorry, $($args[0]) ain't there..." }
  }

tryPath ingo\start
if ( $goodPath ){

  cd ..\.. }

tryPath layout\opt
if ( $goodPath ){

  # gicl https://github.com/dhruvasagar/vim-table-mode
  # gicl https://github.com/lilydjwg/colorizer
  # gicl https://github.com/tmhedberg/SimpylFold

  cd ..\.. }

tryPath layout\start
if ( $goodPath ){

  cd ..\.. }

tryPath other\start
if ( $goodPath ){

  # gicl https://github.com/AndrewRadev/bufferize.vim
  # gicl https://github.com/Asheq/close-buffers.vim
  # gicl https://github.com/inkarkat/vim-ingo-library
  # gicl https://github.com/inkarkat/vim-ShowTrailingWhitespace

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

