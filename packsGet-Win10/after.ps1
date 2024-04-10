# vim: se et tw=0 fdl=1:

# Joseph Harriott

# $vfp\Win10\after.ps1

#=> 0 vim-ShowTrailingWhitespace
  $md = '../vim/packs-cp/opt/vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim'
  (((gc $md) -join "`n") + "`n") -replace 'call', '" call' | seco -NoNewline $md

#=> 1 lists
.\lists.ps1

