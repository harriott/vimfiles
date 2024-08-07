# vim: se et tw=0 fdl=1:

# Joseph Harriott

# & $vfpa\get-win64\after.ps1
# sourced by  $vfpa\get-win64\clones.ps1

#=> 0 vim-ShowTrailingWhitespace
  $md = "$vfpa/packs-cp/opt/vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim"
  (((gc $md) -join "`n") + "`n") -replace 'call', '" call' | seco -NoNewline $md

# #=> 1 lists
. $vfpa\get-win64\lists.ps1

