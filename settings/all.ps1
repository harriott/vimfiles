
# Joseph Harriott - https://harriott.github.io/ - Sun 26 Feb 2023

# -----------------
# grab key-bindings
# -----------------
# run this from  $vimfiles/grab/

$grbbd = "$vimfiles/grabbed"

'grab uses of <leader>'
$of = "$grbbd/leaderUses-win32.txt"
$of
'vim: ft=leader:' > $of
'' >> $of
pt '<leader>' .. >> $of

