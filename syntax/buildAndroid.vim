
" Language:	buildAndroid - for my Android build files
" Maintainer: Joseph Harriott
" Last Change: Thu 08 Sep 2022

" $vimfiles/syntax/buildAndroid.vim  &  $vimfiles/ftplugin/buildAndroid.vim
" vim: ft=buildAndroid:

if exists('b:current_syntax') | finish |  endif

syn match AApp "\(Adobe Acrobat Reader\|AVG Protection\|Bad North: Jotunn Edition\|Bouygues Telecom\|CalenGoo\|Chrome\|Clipper Plus with Sync\|Clock\|Cube Master 3D\|DiskUsage\|Dropsync: Autosync for Dropbox\|Dropsync\|Ecosia\|Family Link \|Facebook\|Game Space\|Gmail\|Gboard\|Gboard Clipboard\|Google Play\|Google\|Jitsi Meet\|Keepass2Android Offline\|LinkedIn\|Messages\|mysms SMS Text Messaging Sync\|OpenWeatherMap\|Pixelup - AI Photo Enhancer\|PUBG MOBILE Gift Box\|LIMBO\|Quora\|Samorost 3\|Storage Analyzer & Disk Usage\|SwiftKey\|Tabata Interval HIIT Timer\|Tile Master 3D\|Total Commander - file manager\|Vélib' (official appli)\|Velib Paris\|Messenger – Text and Video Chat for Free\|WhatsApp Messenger\|Messenger\|Velib' Now !\|WiFi File Explorer PRO\|WordReference.com dictionaries\|Xperia Lounge\|Xperia Transfer Mobile\)"
hi def link AApp vimCommand

syn match emails '\(deauram11@gmail.com\)'
hi def link ASetting Number

syn match ASetting "\(About phone\|Accounts\|Advanced settings\|Addresses\|AUTO-UPDATE\|Battery\|ColorOS 12.1 (Android 12) 2022.07.26 CPH2375_11_C.41\|ColorOS 12.1 (Android 12) 2022.07.26 CPH2375_11_C.44\|Connect to Wi-Fi\|Display & brightness\|Don't optimise\|Download mirror\|Exclude hidden files\|Fingerprint\|Hide floating bar\|Home Screen & Lock Screen\|Install Now\|INSTALLED\|Local\|Menu\|My apps & games\|Offline speech recognition\|Optimise battery use\|Password & security\|Passwords\|Payment\|Personal hotspot\|Portable hotspot\|pw\|Reading\|Remote\|REMOVE\|SAVE\|Security\|Settings\|Sign in\|Smart Sidebar\|Special features\|Sync\|Terms of Service\|Two-way\|UNINSTALL\|UPDATE\|Voice\|Xperia system update\|\[Internal storage]\|\[SD card]\)"
hi def link ASetting Identifier

syn region buildH start=/^#/ end=/$/
hi def link buildH Folded  " for an unobtrusive heading

let b:current_syntax = "buildAndroid"

