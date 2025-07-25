#!/bin/bash
# vim set sw=2:

# Joseph Harriott - https://harriott.github.io/ - Fri 13 Jun 2025

# bash $vimfiles/settings-maps-all/unix.sh

ml="$vimfiles/settings-maps-all/unix.rgov"  # $vfv/syntax/rgov.vim
echo > $ml
echo 'generated by  $vfs/all-maps-unix.sh' >> $ml
echo >> $ml
echo '/\c<\(f\|s-f\)\d\+> " function keys' >> $ml
echo >> $ml
for vfl in $vimfiles $lazy; do
  echo "rg'ing for maps in  $vfl"
  echo "maps in  $vfl" >> $ml
  echo >> $ml
  rg --field-match-separator=' ⋮' -tlua -tvim --no-ignore -w 'imap|inoremap|keymap|map |nmap|noremap|nnoremap|omap|onoremap|vmap|vnoremap|xmap|xnoremap' $vfl >> $ml
  echo >> $ml
done
