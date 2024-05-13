# vim: se et tw=0 fdl=1:

# Joseph Harriott

# $vimfiles\vim\packs\get-win64\after.ps1

#=> 0 vim-ShowTrailingWhitespace
  $md = "$vimfiles/vim/packs/packs-cp/opt/vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim"
  (((gc $md) -join "`n") + "`n") -replace 'call', '" call' | seco -NoNewline $md

# #=> 1 lists
# . $vimfiles\vim\packs\get-win64\lists.ps1

