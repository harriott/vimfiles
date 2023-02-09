
" Language:	buildAndroid - for my Android build files
" Maintainer: Joseph Harriott
" Last Change: Tue 15 Nov 2022

" $vimfiles/syntax/buildAndroid.vim  &  $vimfiles/ftplugin/buildAndroid.vim
" vim: ft=buildAndroid:

if exists('b:current_syntax') | finish |  endif

syn match AApp "\(Adobe Acrobat Reader\|AVG Protection\|CPU X - Device & System info\|CPU-Z\|Bad North: Jotunn Edition\|Bouygues Telecom\|CalenGoo\|Chrome\|Clipper Plus with Sync\|Clock\|Cube Master 3D\|DiskUsage\|Doctolib\|Dropsync: Autosync for Dropbox\|Dropsync\|Ecosia: Browse to plant trees\|Ecosia\|Elementary: Periodic Table\|F-Droid.apk\|F-Droid\|f-droid\|Family Link \|Facebook\|File Manager +\|French Verb Conjugator Pro\|Game Space\|Gmail\|Gboard Clipboard\|Gboard\|Google Family Link\|Google Play\|Google Translate\|Google\|Hacker's Keyboard\|HappyCow - Find Vegan Food\|ImagePipe\|Jitsi Meet\|K-9 Mail\|Keepass2Android Offline\|leboncoin, petites annonces\|LinkedIn\|Maps\|Messages\|mysms SMS Text Messaging Sync\|NewPipe\|NordVPN: private & secure VPN\|OpenWeatherMap\|Pixelup - AI Photo Enhancer\|PUBG MOBILE Gift Box\|LIMBO\|Quora\|RAR\|Samorost 3\|Sleep as Android\|Storage Analyzer & Disk Usage\|SwiftKey\|Tabata Interval HIIT Timer\|tachiyomi\|Termux\|TikTok\|Tile Master 3D\|Total Commander - file manager\|Vélib' (official appli)\|Velib Paris\|Messenger – Text and Video Chat for Free\|Veli Velo - Bike sharing\|WhatsApp Messenger\|Messenger\|Velib' Now !\|WiFi File Explorer PRO\|WordReference.com dictionaries\|Xperia Lounge\|Xperia Transfer Mobile\)"
hi def link AApp vimCommand

syn match emails '\(deauram11@gmail.com\)'
hi def link ASetting Number

syn match ASetting "\(About phone\|Accounts\|Account colour\|Activate\|Adaptive Sleep\|Ads Free\|Advanced settings\|Addresses\|Album\|Apply\|AUTO-UPDATE\|Automatic background sync\|Battery\|ColorOS 12.1 (Android 12) 2022.07.26 CPH2375_11_C.41\|ColorOS 12.1 (Android 12) 2022.07.26 CPH2375_11_C.44\|ColorOS 13.0 (Android 13) CPH2375_11_F.57\|Connect to Wi-Fi\|Display & brightness\|Distance units\|Don't optimise\|Download mirror\|ENABLE KEYBOARD\|Exclude hidden files\|Fetching\|Fingerprint\|gmx\|height, portrait\|Hide floating bar\|Home Screen & Lock Screen\|Incoming\|Import settings\|Install Now\|Install\|INSTALLED\|jharr\|k9_settings_export\|Keyboard & input method\|Kilometres\|Local\|Lock screen\|Manage keyboards\|Menu\|My apps & games\|Offline speech recognition\|Optimise battery use\|Outgoing\|Password & security\|Passwords\|Payment\|Personal hotspot\|Personalisations\|pkg upgrade\|Port 587\|Portable hotspot\|pw\|Reading\|Remote\|REMOVE\|Safe Mode\|SAVE\|Security\|Settings\|Sign in\|Smart Sidebar\|Special features\|Synchronisation\|Sync\|STARTTLS\|System settings\|Terms of Service\|termux-setup-storage\|trohib\|Two-way\|UNINSTALL\|Uninstalled\|UPDATE\|Voice\|WPA2-Personal\|WPA3-Personal\|Xperia system update\|Zourit\|\[Internal storage]\|\[SD card]\|SD card\|SYNCED FOLDERS\|Wallpapers\)"
hi def link ASetting Identifier

syn region buildH start=/^#/ end=/$/
hi def link buildH Folded  " for an unobtrusive heading

let b:current_syntax = "buildAndroid"

