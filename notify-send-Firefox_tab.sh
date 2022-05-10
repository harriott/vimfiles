#!/bin/bash -eu

# Joseph Harriott - Tue 10 May 2022
# for notifying opening of a Firefox tab in  awesome wm

# chmod 755 $vimfiles/notify-send-Firefox_tab.sh
# symlinked in my  $ARCHBUILDS/build-scripts/39-awesome.sh

notify-send -i /usr/share/icons/hicolor/16x16/apps/firefox.png "A Firefox tab was opened."

