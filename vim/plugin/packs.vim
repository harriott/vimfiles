
" https://harriott.githubio/ - Wed 29 May 2024

" $vfv/plugin/packs.vim
"  symlinked in
"   $MSn/set/3.ps1
"   $OSAB/nodes-set/jo-1-encoding.sh
"  annoyingly, sourced before  $vfv/plugin/plugin.vim

" $ ls $vimfiles -r vim/packs*/opt

if exists('g:block_plugin_packs')
  echo 'blocked  $vfv/plugin/packs.vim'
  finish
endif
let g:packs = 1

if $myDrA
  source $vfv/plugin/packsAll.vim
  if ! exists('g:WSL') | source $vfv/plugin/packsFull.vim | endif
  if ! has('nvim')
    source $vfv/plugin/packsVimAll.vim
    if ! exists('g:WSL') | source $vfv/plugin/packsVimFull.vim | endif
  endif
endif

