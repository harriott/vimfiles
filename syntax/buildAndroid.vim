
" Language:	buildAndroid - for my Android build files
" Maintainer: Joseph Harriott
" Last Change: Tue 15 Nov 2022

" $vimfiles/syntax/buildAndroid.vim  &  $vimfiles/ftplugin/buildAndroid.vim
" vim: ft=buildAndroid:

if exists('b:current_syntax') | finish |  endif

syn match AApp "\(Adobe Acrobat Reader\|AVG Protection\|CPU X - Device & System info\|CPU-Z\|Bad North: Jotunn Edition\|Bouygues Telecom\|CalenGoo\|Chrome\|Clipper Plus with Sync\|Clock\|Cube Master 3D\|DiskUsage\|Doctolib\|Dropsync: Autosync for Dropbox\|Dropsync\|Ecosia: Browse to plant trees\|Ecosia\|F-Droid\|Family Link \|Facebook\|French Verb Conjugator Pro\|Game Space\|Gmail\|Gboard Clipboard\|Gboard\|Google Play\|Google Translate\|Google\|Jitsi Meet\|K-9 Mail\|Keepass2Android Offline\|LinkedIn\|Maps\|Messages\|mysms SMS Text Messaging Sync\|OpenWeatherMap\|Pixelup - AI Photo Enhancer\|PUBG MOBILE Gift Box\|LIMBO\|Quora\|RAR\|Samorost 3\|Sleep as Android\|Storage Analyzer & Disk Usage\|SwiftKey\|Tabata Interval HIIT Timer\|tachiyomi\|TikTok\|Tile Master 3D\|Total Commander - file manager\|Vélib' (official appli)\|Velib Paris\|Messenger – Text and Video Chat for Free\|Veli Velo - Bike sharing\|WhatsApp Messenger\|Messenger\|Velib' Now !\|WiFi File Explorer PRO\|WordReference.com dictionaries\|Xperia Lounge\|Xperia Transfer Mobile\)"
hi def link AApp vimCommand

syn match emails '\(deauram11@gmail.com\)'
hi def link ASetting Number

syn match ASetting "\(About phone\|Accounts\|Activate\|Adaptive Sleep\|Advanced settings\|Addresses\|Album\|Apply\|AUTO-UPDATE\|Battery\|ColorOS 12.1 (Android 12) 2022.07.26 CPH2375_11_C.41\|ColorOS 12.1 (Android 12) 2022.07.26 CPH2375_11_C.44\|Connect to Wi-Fi\|Display & brightness\|Distance units\|Don't optimise\|Download mirror\|Exclude hidden files\|Fingerprint\|gmx\|Kilometres\|Hide floating bar\|Home Screen & Lock Screen\|Install Now\|Import settings\|INSTALLED\|jharr\|k9_settings_export\|Local\|Lock screen\|Menu\|My apps & games\|Offline speech recognition\|Optimise battery use\|Password & security\|Passwords\|Payment\|Personal hotspot\|Personalisations\|Port 587\|Portable hotspot\|pw\|Reading\|Remote\|REMOVE\|Safe Mode\|SAVE\|Security\|Settings\|Sign in\|Smart Sidebar\|Special features\|Sync\|STARTTLS\|Terms of Service\|Two-way\|UNINSTALL\|Uninstalled\|UPDATE\|Voice\|WPA3-Personal\|Xperia system update\|\[Internal storage]\|\[SD card]\|SD card\|SYNCED FOLDERS\|Wallpapers\)"
hi def link ASetting Identifier

syn region buildH start=/^#/ end=/$/
hi def link buildH Folded  " for an unobtrusive heading

let b:current_syntax = "buildAndroid"

