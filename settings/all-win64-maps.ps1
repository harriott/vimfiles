
# Joseph Harriott - https://harriott.github.io/ - lun 31 mars 2025

# & $vfs/all-win64-maps.ps1  # grab all mappings

$ml = "$vfs/all-win64-maps.rgov"  # $vfv/syntax/rgov.vim
'' > $ml
'generated by  $vfs/all-win64-maps.ps1' >> $ml
'' >> $ml
foreach($vfl in $vimfiles, $lazy){
  "rg'ing for maps in  $vfl"
  "maps in  $vfl" >> $ml
  '' >> $ml
  rg --field-match-separator=' ⋮' -tlua -tvim --no-ignore -w 'imap|inoremap|keymap|map |nmap|noremap|nnoremap|omap|onoremap|vmap|vnoremap|xmap|xnoremap' $vfl >> $ml
  '' >> $ml
  }
((gc $ml) -join "`n") + "`n" | seco -NoNewline $ml  # CRLF -> LF

