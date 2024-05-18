# vim: se et tw=0 fdl=1:

# Joseph Harriott

# & $vfvp\get-win64\after.ps1
# sourced by  $vfvp\get-win64\clones.ps1

#=> 0 vim-ShowTrailingWhitespace
  $md = "$vfvp/packs-cp/opt/vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim"
  (((gc $md) -join "`n") + "`n") -replace 'call', '" call' | seco -NoNewline $md

# #=> 1 lists
. $vfvp\get-win64\lists.ps1

