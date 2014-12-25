#!/bin/bash -eu

# Joseph Harriott. jeu. 25 déc. 2014

# Blue-Dog-Archolite's fix for gx https://github.com/tpope/vim-fugitive/issues/536
# chmod 755 $HOME/.vim/xdg-open-bda.sh
# ln -s $HOME/.vim/xdg-open-bda.sh $HOME/bin/xdg-open-bda
# and that symbolic link is referenced by netrw from my $HOME/.vim/debian.vim

xdg-open "$@" &
