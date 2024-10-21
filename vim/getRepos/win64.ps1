# vim: set fdl=1 et tw=0:

# & $vfv/getRepos/win64/get.ps1

# Joseph Harriott, Sat 19 Oct 2024

#=> 1 clones 0 update  all.clones

#=> 1 clones 1 remove

#=> 1 clones 2 get
$clones = gc $vfv/getRepos/all.clones
foreach ($clone in $clones) {
  $rrp = $clone -replace ' .*', ''  # repository relative path
  if ( ! ( test-path "$vfv/$rrp" ) ) {
    "$vfv/$rrp not there so"
    $url = $clone -replace '.* ', ''  # repository url
    $gcc = "git clone --depth 1 $url $vfv\$rrp"
    "  $gcc"
    iex $gcc
  }
} # fd -td <part_of_path>

#=> 1 clones 3 msmtp-scripts-vim

#=> 2 updates 0 warn
read-host 'Going to update repositories - you''ve closed instances of vim? '

#=> 2 updates 1 packs
cd $vfvp
rm --recurse $vfvp/packs-cp/opt/msmtp-scripts-vim
. $misc/GRs/update-depth1.ps1
# mv repositories $vfvp/ -force

#=> 2 updates 2 plugins
cd $vfv/plugin; . $misc/GRs/update-depth1.ps1

#=> 2 updates 3 my forks
''
start https://github.com/harriott/vim-gfm-syntax
start https://github.com/harriott/vim-markdown
start https://github.com/harriott/vim-tagbar
echo 'Now check the forks!' # incase they've fallen behind their upstreams
''

#=> 3 tweak vim-ShowTrailingWhitespace
$md = "$vfvp/packs-cp/opt/vim-ShowTrailingWhitespace/ftplugin/markdown_ShowTrailingWhitespace.vim"
(((gc $md) -join "`n") + "`n") -replace 'call', '" call' | seco -NoNewline $md

#=> 4 helptags
Write-Host " try to " -nonewline
  Write-Host ":helptags ALL" -foregroundcolor red -backgroundcolor yellow -nonewline

