# vim: se et tw=0 fdl=1:

# Joseph Harriott

# & $vfv/packs\get-win64\after.ps1
# sourced by  $vfv/packs\get-win64\clones.ps1

#=> 0 vim-ShowTrailingWhitespace
  $md = "$vfv/packs/packs-cp/opt/vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim"
  (((gc $md) -join "`n") + "`n") -replace 'call', '" call' | seco -NoNewline $md

# #=> 1 lists
. $vfv/packs\get-win64\lists.ps1

