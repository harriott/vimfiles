# vim: set fdl=0 et tw=0:

# . $vfv/getRepos/win64.ps1

# Joseph Harriott, Sat 19 Oct 2024

$cf = "$vfv/getRepos/packs.clones"

#=> 0 $vfvp clones optionally update  packs.clones
sl $vfvp; . $misc/GRs/getClonesList.ps1 $cf; sl $vfv

# #=> 1 clones remove
# # see  $vfv/getRepos/unix.sh

#=> 2 $vfvp clones get
$clones = gc $cf
foreach ($clone in $clones) {
  $rrp = $clone -replace ' .*', ''  # repository relative path
  if ( ! ( test-path "$vfvp/$rrp" ) ) {
    "$vfvp/$rrp not there so"
    $url = $clone -replace '.* ', ''  # repository url
    $gcc = "git clone --depth 1 $url $vfvp/$rrp"
    "  $gcc"
    iex $gcc
  }
}

# #=> 3 updates 0 warn
# read-host 'Going to update repositories - you''ve closed instances of vim? '

# #=> 3 updates 1 packs
# sl $vfvp
# $msv = "$vfvp/packs-cp-full/opt/msmtp-scripts-vim"
# rm -recurse $msv  # temporarily, because it's got no .git
# . $misc/GRs/update-depth1.ps1
# robocopy /mir $cGRs/d-unix/d-linux/r-marlam-msmtp/scripts/vim/ $msv
# sl $vfv

# #=> 3 updates 2 plugins
# $rd = "$vfv/plugin"; sl $rd; . $misc/GRs/update-depth1.ps1; sl $vfv

# #=> 3 updates 3 my forks
# ''
# $clones = gc $cf
# foreach ($clone in $clones) {
#   if ( $clone -match 'harriott' ) {
#     $url = $clone -replace '.* ', ''  # repository url
#     start $url
#   }
# }
# echo '- now check the forks!' # incase they've fallen behind their upstreams
# ''

# #=> 4 fix vim-ShowTrailingWhitespace
# $md = "$vfvp/packs-cp-full/opt/vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim"
# (((gc $md) -join "`n") + "`n") -replace 'call', '" call' | seco -NoNewline $md

#=> 5 helptags
Write-Host " try to " -nonewline
  Write-Host ":helptags ALL" -foregroundcolor red -backgroundcolor yellow -nonewline

