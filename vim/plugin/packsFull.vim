
" https://harriott.githubio/ - ven 01 nov 2024

" $vfv/plugin/packsFull.vim - only sourced by  $vfv/plugin/packs.vim  for full installations

""> encoding - AnsiEsc
if has('unix') | packadd vim-plugin-AnsiEsc | endif

""> encoding - dsf
" $vfvp/packs-cp-full/opt/dsf.vim/README.md

packadd dsf.vim
" csf -> change surrounding function
" daf -> delete a function call
" dif -> delete inner function call
" dsf -> delete surrounding function
" dsnf -> delete next surrounding function

""> encoding - Git - Flog
" :Flog  " tab of commits
packadd vim-flog

""> encoding - Git - gitignore.vim
packadd gitignore.vim

""> encoding - Git - vim-fugitive
" $vfvp/packs-cp-full/opt/vim-fugitive/README.markdown

" configurations
"  let g:airline_symbols.notexists
"  let g:airline_symbols.dirty
let g:airline#extensions#branch#vcs_checks = ['untracked'] " because 'dirty' isn't accurate...

" Ggrep for last search (using  @s)
nnoremap <F3> :call StripStoreCurSel()<CR>:Ggrep -i "<C-R>s" <bar>cw
" - gives bogus filenames if they contain accented characters

" keystrokes
"  ce  " amend the last commit without editing the message
"  U   " unstages all
"  :GB :GBrowse
"  :Gclog  " load commit history,  (  &  )  to navigate
"  :Git pull

packadd vim-fugitive

"">> for :GBrowse to work
packadd fugitive-gitlab.vim  " for GitLab
packadd vim-rhubarb  " for GitHub

""> encoding - Git - vim-gfm-syntax
" $vfvp/packs-cp-full/opt/vim-gfm-syntax/README.md
let g:gfm_syntax_emoji_conceal = 1
let g:gfm_syntax_enable_always = 0
let g:gfm_syntax_enable_filetypes = ['gfm']
" packadd vim-gfm-syntax  " for viewing  $coreIT/CP/encoding/EMOJI_CHEAT_SHEET.gfm

""> encoding - languages
packadd CSS-one-line--multi-line-folding

"">> conky-syntax.vim
" $vfvp/packs-cp-full/opt/conky-syntax.vim/ftdetect/conkyrc.vim  delete 2nd *
if has('nvim') | packadd conky-syntax.vim | endif  " (doesn't work in  init.vim)

" "">> CSS Color
" packadd vim-css-color  " slows down every other filetype...

"">> csv.vim
" extra tools in  $vfv/ftplugin/csv.vim
"  & see  $vfv/after/plugin/packs.vim

" $vfvp/packs-cp-full/opt/csv.vim/ftdetect/csv.vim
" :h ft-csv  ($vfvp/packs-cp-full/opt/csv.vim/doc/ft-csv.txt) the help

packadd csv.vim

"">>> column highlighting
" :HiColumn [n]  " highlight column [n] using  WildMenu  syntax colour
" :HiColumn!  " removes
" - f7 toggle define in  $vimfiles/ftplugin/csv.vim

" my preferred syntax colour
let g:csv_hiGroup = 'Directory'  " good in my  Vim
if has('nvim') | let g:csv_hiGroup = 'CursorLineNr' |
elseif has("gui_running") | :let g:csv_hiGroup = 'DiffText' | endif

" automatic
let g:csv_highlight_column = 'y'
" - could be useful, but makes seeing the cursor difficult in  tomorrow

"">>> commands
" :%Substitute 4,12/\./,/g
" :WhatColumn
" H -> go left
" L -> go right

" %ArrangeColumn  " is slow, and makes changes
" %UnArrangeColumn  " undoes
" :AddColumn  " after current
" :CSVInit  " reinitialise the plugin (clears HiColumn)
" :DeleteColumn [n[-m]]  " deleted column(s) [n[-m]]
" :MoveColumn [n] [m]  " moves column [n] to right [of column m] (m can be $)
" :SearchInColumn [n] <text>  " doesn't work for numbers...
" :Sort [column}
" :SumCol

" column hiding
"  :VertFold  " hides from left to current
"  :VertFold!  " unhide
" :CSVTabularize  " open as table in new buffer

" dynamic filters (:h csv-filter) see lines containing same value
"  :Filter  " show them
"  <enter>  hides away non-matching lines
"  <backspace>  successively removes filters
"  <space>  hides away matching lines

"">> emmet-vim
" EmmetInstall  for CSS/HTML
let g:user_emmet_install_global = 0
packadd emmet-vim

" "">> Liquid
" packadd vim-liquid  " $vfvp/packs-cp-full/opt/vim-liquid/ftdetect/liquid.vim

"">> mediawiki.vim
packadd mediawiki.vim  " $vfvp/packs-cp-full/opt/mediawiki.vim/README.md

"">> msmtp-scripts-vim
" marlam  in  $vfv/getRepos/unix.sh, $vfv/getRepos/win64.ps1
" $vfvp/packs-cp-full/opt/msmtp-scripts-vim/ftdetect/msmtp.vim
if has('nvim') | packadd msmtp-scripts-vim | endif

"">> MTA
" if has('unix') || filereadable("C:/Python312/NEWS.txt") | packadd MatchTagAlways | endif
" for  XML/HTML  tags - $vfvp/packs-cp-full/opt/MatchTagAlways/test.html
" Neovim: works fine. Vim: corresponding Python required.
" Somehow this ain't needed...

"">> NeoMutt
" $vfvp/packs-cp-full/opt/neomutt.vim/ftdetect/neomuttrc.vim
" $vfvp/packs-cp-full/opt/neomutt.vim/syntax/neomuttrc.vim
packadd neomutt.vim
" superseding
"  /usr/share/nvim/runtime/syntax/muttrc.vim
"  /usr/share/nvim/runtime/syntax/neomuttrc.vim

"">> Org.vim
packadd org.vim

"">> SimpylFold
" packadd SimpylFold
" Python folding

"">> syntastic
if has('unix')
  let g:syntastic_mode_map = { "mode": "passive" } " will only run on :SyntasticCheck
else
  let g:syntastic_mode_map = { "passive_filetypes": ["tex"] }
  " packadd syntastic
endif
let g:syntastic_python_checkers = ['flake8']

"">> tagalong.vim
" change a tag, its pair is changed too
let g:tagalong_verbose = 1
packadd tagalong.vim

"">> vader.vim
packadd vader.vim

"">> vim-base64
packadd vim-base64

"">> vim-bbcode
" $vfvp/packs-cp-full/opt/vim-bbcode/example.bbcode - [code] & [pre] aren't highlighted
packadd vim-bbcode

"">> vim-closetag
let g:closetag_close_shortcut = '<localleader>>'  " for > without closing
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
packadd vim-closetag

"">> vim-dokuwiki
" $vfvp/packs-cp-full/opt/vim-dokuwiki/ftdetect/dokuwiki.vim
packadd vim-dokuwiki
let dokuwiki_comment=1  " comment highlighting on
let g:dokuwiki_fenced_languages = ['html', 'python', 'sh', 'vim']

" also  $vfv/ftplugin/dokuwiki.vim

"">> vim-go
packadd vim-go

"">> vim-hjson
" $vfvp/packs-cp-full/opt/vim-hjson/ftdetect/hjson.vim
packadd vim-hjson

"">> Vim Markdown
" :h markdown
" $vfvp/packs-cp-full/opt/vim-markdown/maintenance.md
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_conceal_code_blocks = 0  " need to see them
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1  " highlight YAML Front Matter
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_strikethrough = 1  " ~~ struck thru ~~
packadd vim-markdown  " harriott  clone of  preservim

" Movements:
" ]] => next header
" [[ => previous header
" ][ => next sibling header
" [] => previous sibling header
" ]h => current header
" ]u => parent header

" Shell:
" ge => open link in Vim
" gx => open link in browser

"">> vim-mbsync
packadd vim-mbsync

"">> vim-pandoc-syntax
packadd vim-pandoc-syntax

"">> vim-prettier
" $vfvp/packs-cp-full/opt/vim-prettier/doc/prettier.txt
" :Prettier
packadd vim-prettier

"">> vim-ps1
" $vfvp\cp\opt\vim-ps1\ftdetect\ps1.vim
packadd vim-ps1

"">> VimTeX
" $vfvp/packs-cp-full/opt/vimtex/doc/vimtex.txt
" $vfvp/packs-cp-full/opt/vimtex/ftdetect/tex.vim
" $vfvp/packs-cp-full/opt/vimtex/README.md

" dsd  " delete surrounding delimiters
" commands
"  csc  " change surrounding
"  dsc  " delete surrounding
"  tsc  " toggle starred commands
" surrounding environments
"  cse <newEnvironment>  "to change
"  dse  " delete
" surrounding maths environment
"  cs$  " change
"  ds$  " delete
"  ts$  " toggle
" :h vimtex-default-mappings
" :VimtexInfo
" [[  or  ]]  " move to previous or next sectioning
" [m  or  ]m  " move to previous or next environment
" =li  or  =lI  " vimtex-info  or  vimtex-info-full
" =lc  or  =lC  " vimtex-clean  or  vimtex-clean-full

" if has('nvim') | let g:vimtex_complete_enabled = 0 | endif
if has('win64') | let g:vimtex_view_general_viewer = 'C:\SumatraPDF\SumatraPDF.exe' | endif
let g:vimtex_compiler_enabled = 0
let g:vimtex_compiler_silent = 1  " doesn't hide the «latexmk is not executable» message
let g:vimtex_fold_enabled = 1
let g:vimtex_include_search_enabled = 0
let g:vimtex_syntax_conceal = { 'accents': 1, 'ligatures': 0, 'cites': 1, 'fancy': 1, 'spacing': 0, 'greek': 1, 'math_bounds': 1, 'math_delimiters': 1, 'math_fracs': 1, 'math_super_sub': 1, 'math_symbols': 1, 'sections': 0, 'styles': 1, } " set cole=0
" - search for  function! s:match_conceal_  in
"     $vfvp/packs-cp-full/opt/vimtex/autoload/vimtex/syntax/core.vim
let g:vimtex_syntax_custom_cmds = [
  \ {'name': 'Odr', 'hlgroup': 'CursorLineNr'},
  \ {'name': 'Eltt', 'hlgroup': 'CursorLineNr'},
  \ {'name': 'Jo', 'hlgroup': 'CursorLineNr'},
  \ {'name': 'Luce', 'hlgroup': 'CursorLineNr'},
  \ {'name': 'Mth', 'hlgroup': 'CursorLineNr'},
  \ {'name': 'Mrstl', 'hlgroup': 'CursorLineNr'},
  \ {'name': 'Rox', 'hlgroup': 'CursorLineNr'},
  \ {'name': 'Tom', 'hlgroup': 'CursorLineNr'},
  \ {'name': 'AM', 'hlgroup': 'Question'},
  \ {'name': 'Anntt', 'hlgroup': 'Question'},
  \ {'name': 'Brgt', 'hlgroup': 'Question'},
  \ {'name': 'Crla', 'hlgroup': 'Question'},
  \ {'name': 'Emna', 'hlgroup': 'Question'},
  \ {'name': 'Ftm', 'hlgroup': 'Question'},
  \ {'name': 'Hmlh', 'hlgroup': 'Question'},
  \ {'name': 'Jln', 'hlgroup': 'Question'},
  \ {'name': 'Kddj', 'hlgroup': 'Question'},
  \ {'name': 'Ltt', 'hlgroup': 'Question'},
  \ {'name': 'Ncl', 'hlgroup': 'Question'},
  \ {'name': 'Olv', 'hlgroup': 'Question'},
  \ {'name': 'SrB', 'hlgroup': 'Question'},
  \ {'name': 'Vrgn', 'hlgroup': 'Question'},
  \ {'name': 'Yumi', 'hlgroup': 'Question'},
  \ {'name': 'section', 'hlgroup': 'Todo'},
  \]
let g:vimtex_view_enabled = 0
packadd vimtex

""> encoding - minimap.vim
" MinimapToggle
if ! exists('g:WSL') | packadd minimap.vim | endif

""> encoding - Tagbar
" $vfvp/packs-cp-full/opt/vim-tagbar/doc/tagbar.txt
" $vfvp/packs-cp-full/opt/vim-tagbar/README.md

" :TagbarToggle  mapping set in
"  $vfv/ftplugin/perl.vim
"  $vfv/ftplugin/python.vim

" h tagbar-contents
" h tagbar-ignore

autocmd BufNewFile,BufReadPre *.md let b:tagbar_ignore = 1
packadd vim-tagbar

""> encoding - unicode.vim
" $vfvp/packs-cp-full/opt/unicode.vim/doc/unicode.txt
" :UnicodeName  for the character under the cursor
let g:Unicode_no_default_mappings = v:true
packadd unicode.vim

""> encoding - vim match-up
" $vfvp/packs-cp-full/opt/vim-matchup/doc/matchup.txt
" % = jump forward
" g% = jumb backward
" jump blocks
"  [% = start
"  ]% = end
"  z% = inside
" block text objects
"  i% = inside
"  a% = all
nnoremap <leader>ww :<c-u>MatchupWhereAmI??<cr>
packadd vim-matchup

""> encoding - vim-ssh-annex
autocmd BufRead,BufNewFile known_hosts-* setlocal filetype=ssh_known_hosts
packadd vim-ssh-annex

""> ingo-library
" $vfvp/packs-cp-full/opt/vim-ingo-library/README.md
"  required for  vim-mark  vim-ShowTrailingWhitespace
packadd vim-ingo-library

""> languages - ALE
" :ALEFix
" :h ale-languagetool-options
" settings for the filetype, including recommended modules
"  :ALEInfo
"   AlEPrreviewWindow  responds to  <c-w>+, but not to  <cw>=
" $vfvp/packs-cp-full/opt/ale/plugin/ale.vim
" $vfvp/packs-cp-full/opt/ale/doc/ale.txt

" Enabled?
"  :let ale_enabled
"  airline shows an orange category at right end when ALE is enabled
"  filetypes might have  b:ale_enabled = 0

" \ll

" Using
"  bash-language-server
"  languagetool, needs  g:languagetool_jar  defined

" :let g:ale_completion_enabled = 1  " if only using  ALE's internal engines
let g:ale_echo_msg_format = '%linter% %code% %s'
let g:ale_virtualtext_cursor = 'disabled'  " turns off end of line  virtual-text  messages
let g:ale_linters_explicit = 1  " turns off all except explicity defined linters
"  I use  let b:ale_linters = [...]  in my  ftplugin  configurations,
"   and  $vfv/ftplugin/ALElocaleader.vim
let g:ale_sign_column_always = 1
packadd ale

""> languages - thesaurus_query.vim
let g:tq_map_keys=0
let g:tq_enabled_backends=["openoffice_en","mthesaur_txt","cnrtl_fr","synonymo_fr"]
" let g:tq_enabled_backends=["openoffice_en","mthesaur_txt"]
if has('win64')
  let g:tq_mthesaur_file="~/vimfiles/thesaurus/mthesaur.txt" " $vfv/thesaurus/mthesaur.txt
  let g:tq_openoffice_en_file="~/vimfiles/thesaurus/MyThes-1.0/th_en_US_new"
endif
let g:tq_language=['en', 'fr']
autocmd BufRead,BufNewFile */France/Scratch/* let b:tq_language=['fr']
nnoremap <leader>wt :ThesaurusQueryReplaceCurrentWord<CR>
packadd thesaurus_query.vim

""> languages - vim-langtool
nnoremap <leader>lt :LangTool <bar> lopen 15 <CR>
packadd vim-langtool  " can then  :h langtool
" needs  g:langtool_jar  defined

" doesn't highlight anything
" move to errors:  <cr>  :lne  :lpr

""> languages - vim-LanguageTool
nnoremap <leader>LT :call LanguageTool_lopen() <CR>
function! LanguageTool_lopen()
  LanguageToolCheck
  lopen
endfunction

" :LanguageToolClear
let g:languagetool_win_height = -1
" needs a  g:languagetool_*  defined
packadd vim-LanguageTool " then can  :h LanguageTool
" now preferring  vim-langtool

""> layout - color schemes
" no need to  packadd  for Vim

"">> jellybeans.vim
" $vfn/init.vim

"">> nightfox.nvim
" $vfn/init.vim

"">> vim-colors-solarized
" kept in reserve, replaced by  vim-colors-tomorrow

"">> vim-colors-tomorrow
" $vfv/enter/gvimrc-Arch.vim
" $vfv/enter/vimrc-Arch.vim
" $vfv/enter/vimrc-Win10.vim

"">> vim-wombat-scheme
" $vfn/init.vim

""> layout - Colorizer
" $vfvp/packs-cp-full/opt/Colorizer/README.md  but see  $vimfiles/QR/QR.md
let g:colorizer_disable_bufleave = 1

""> layout - FastFold
" let g:fastfold_fold_command_suffixes = []
" packadd FastFold

""> layout - FoldText
packadd FoldText

""> layout - highlighting - limelight.vim
" " Limelight!!
" packadd limelight.vim

""> layout - highlighting - vim-better-whitespace
" $vfvp/packs-cp-full/opt/vim-better-whitespace/doc/better-whitespace.txt
" $vfvp/packs-cp-full/opt/vim-better-whitespace/README.md
" only used in  $vfn/init.vim
if has('nvim')
  let g:better_whitespace_ctermcolor='Black'
  let g:better_whitespace_filetypes_blacklist=['diff', 'git', 'gitcommit', 'unite', 'qf', 'help', 'fugitive']
  " - removed  markdown
  let g:better_whitespace_guicolor='Black'
  let g:better_whitespace_operator=''
  packadd vim-better-whitespace
endif

""> layout - highlighting - vim-interestingwords
" \k -> new highlight
" \K -> all off
" packadd vim-interestingwords
let g:interestingWordsRandomiseColors = 1

""> layout - highlighting - vim-ShowTrailingWhitespace
" $vfvp/packs-cp-full/opt/vim-ShowTrailingWhitespace/doc/ShowTrailingWhitespace.txt
if g:useSTW | packadd vim-ShowTrailingWhitespace | endif  " requires  ingo-library

""> layout - lf.vim
" $vfvp/packs-cp-full/opt/lf-vim/README.md
" syntax for  $MSn\lf\lfrc
packadd lf-vim

""> layout - nerdfont.vim
" packadd nerdfont.vim

""> layout - vim-fontsize
" $vfvp/packs-cp-full/opt/vim-fontsize/doc/fontsize.txt
if has('gui_running')
  packadd vim-fontsize
    let g:fontsize#timeout = 0
    nmap <silent> <leader>fs <Plug>FontsizeBegin
    " - enters fontsize mode
    nmap <silent> <SID>DisableFontsizeInc     <Plug>FontsizeInc
    nmap <silent> <SID>DisableFontsizeDec     <Plug>FontsizeDec
    nmap <silent> <SID>DisableFontsizeDefault <Plug>FontsizeDefault
endif
" fontsize mode:
"  +/=             increases
"  -               decreases
"  0               returns to default
"  <CR>/<space>/q  quits

""> shell - calendar-vim
let g:calendar_monday = 1
let g:calendar_weeknm = 1
noremap <leader>C :CalendarH<CR>
packadd calendar-vim

""> shell - open-browser.vim
" $vfvp/packs-cp-full/opt/open-browser.vim/doc/openbrowser.txt
" requires  :set shell  be unchanged from  cmd.exe

" If it looks like URI, Open URI under cursor. Otherwise, Search word under cursor.
nnoremap <F6> :execute "normal \<Plug>(openbrowser-smart-search)"<bar>silent !nsBt<CR>
" If it looks like URI, Open selected URI. Otherwise, Search selected word.
vmap <F6> <Plug>(openbrowser-smart-search)
"  (can't adapt this one for  nsBt)

packadd open-browser.vim

""> shell - vim-clifm
packadd vim-clifm

""> shell - vim-open-url
packadd vim-open-url

""> shell - vim-rooter
let g:rooter_buftypes = ['']  " avoiding specials
let g:rooter_manual_only = 1  " :Rooter
packadd vim-rooter

""> text wrangling - aligning - tabular
" :vert h tabular
" $vfvp/packs-cp-full/opt/tabular/doc/Tabular.txt
" packadd tabular  " :Tabularize ...

""> text wrangling - aligning - vim-easy-align
packadd vim-easy-align
nmap gA <Plug>(EasyAlign)
xmap gA <Plug>(EasyAlign)

" * => all
" <CR> to change l/r/c

" the following are just as easily entered as regex's
let g:easy_align_delimiters = {
    \ 'b': { 'pattern': '∙' },
    \ 'm': { 'pattern': ' - ' },
    \ '>': { 'pattern': '>>\|=>\|>' },
    \ }

""> text wrangling - aligning - vim-textmanip
packadd vim-textmanip
xmap <c-down> <Plug>(textmanip-move-down)
xmap <c-up> <Plug>(textmanip-move-up)
xmap <c-left> <Plug>(textmanip-move-left)
xmap <c-right> <Plug>(textmanip-move-right)

""> text wrangling - find/replace - incsearch.vim
" :h incsearch.vim
map g/ <Plug>(incsearch-stay)
packadd incsearch.vim  " needed for  incsearch-fuzzy.vim

""> text wrangling - find/replace - incsearch-fuzzy.vim
" $vfvp/packs-cp-full/opt/incsearch-fuzzy.vim/README.md
map z/ <Plug>(incsearch-fuzzy-stay)
packadd incsearch-fuzzy.vim

""> text wrangling - find/replace - vim-mark
" :h mark.txt
" :Mark => disable them
" :Mark /arbitrary/
" :Mark word

let g:mw_no_mappings = 1
nmap <leader><leader>m <Plug>MarkSet
nmap <leader><leader>n <Plug>MarkClear
packadd vim-mark  " requires  ingo-library

""> text wrangling - find/replace - vim-visual-star-search
" packadd vim-visual-star-search
" " now preferring  vim-asterisk

""> text wrangling - targets.vim
" $vfvp/packs-cp-full/opt/targets.vim/cheatsheet.md
packadd targets.vim

""> vim - buffers - bufferize.vim
" :Bufferize <something>  is handy, but the buffer's fragile...
packadd bufferize.vim

"">> grab Vim settings - all commands
function! GrabAllCommands()
  silent execute 'Bufferize command'
  winc k
  normal! ggVGd
  bdelete
  blast
  normal! p
  write
endfunction
" for use in  $vfs/*-commands-*.txt

"">> grab Vim settings - all functions
function! GrabAllFunctions()
  silent execute 'Bufferize function'
  winc k
  sort
  normal! ggVGd
  bdelete
  blast
  normal! p
  write
endfunction
" for use in  $vfs/*-commands-*.txt

"">> grab Vim settings - maps of Fn keys
function! GrabBmmFn()
  silent execute 'Bufferize map|map!'
  winc j  " assuming  splitbelow
  v/<.\=.\=F.*>/d
  nohlsearch
  sort
  normal! ggVGd
  bdelete
  blast
  normal! p
  write
endfunction
" for use in  $vfs/*-FnMaps.txt
" won't catch buffer-specific maps

"">> grab Vim settings - simple maps
function! GrabSimpleMaps()
  silent execute 'Bufferize map|map!'
  winc k
  silent! exe 'g/<.\=.\=F.*>/d'
  silent! exe 'g/<Plug>/d'
  silent! exe 'g/<SNR>/d'
  g/ /d " non-breaking space
  nohlsearch
  normal! ggVGd
  bdelete
  blast
  normal! p
  write
endfunction
" for use in  $vfs/*-simpleMaps-*.txt

"">> grab Vim settings - scriptnames
function! GrabScriptnames()
  silent execute 'Bufferize scriptnames'
  winc k
  normal! ggVGd
  bdelete
  blast
  normal! p
  write
endfunction
" for use in  $vfs/*-scriptnames-*.ffl

""> vim - buffers - vim-bufkill
" :BB :BF  could be mapped to replace some of the functionality of  vim-buffing-wheel

packadd vim-bufkill

"">> mappings
let g:BufKillCreateMappings = 0

" :bd  maintaining splits
noremap <silent> <leader><leader>d :BD<CR>:bp<CR>
" - has at least a chance of landing on a different buffer than already visible

""> vim - location/quickfix list

"">> cfilter
packadd cfilter

"">> ListToggle
" $vfvp/packs-cp-full/opt/listtoggle/README.md

packadd listtoggle
let g:lt_location_list_toggle_map = '<leader>ll'
let g:lt_height = 15

" Defaults:
" let g:lt_location_list_toggle_map = '<leader>l'
" let g:lt_quickfix_list_toggle_map = '<leader>q'

"">> vim-loclist-follow
let g:loclist_follow = 1
packadd vim-loclist-follow

""> vim - undotree
packadd undotree

""> vim - vim-peekaboo
packadd vim-peekaboo
" triggered by "/@ normal mode, <CTRL-R> insert mode
"  spacebar toggles full-screen, to see clearer the register's contents

