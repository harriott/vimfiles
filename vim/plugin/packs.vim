
" https://harriott.githubio/ - mer 15 mai 2024

" $vimfiles/vim/plugin/packs.vim

" $ ls $vimfiles -r vim/packs*/opt

let g:packs_vim = 1

""> encoding

"">> AnsiEsc
packadd vim-plugin-AnsiEsc

"">> context.vim
" :ContextToggleWindow  mapped in
"  $vimfiles/vim/ftplugin/perl.vim
"  $vimfiles/vim/ftplugin/ps1.vim
let g:context_enabled = 0
packadd context.vim

"">> dsf
" $vfvp/packs-cp/opt/dsf.vim/README.md

packadd dsf.vim
" csf -> change surrounding function
" daf -> delete a function call
" dif -> delete inner function call
" dsf -> delete surrounding function
" dsnf -> delete next surrounding function

"">> Git

"">>> Flog
" :Flog  " tab of commits
packadd vim-flog

"">>> gitignore.vim
packadd gitignore.vim

"">>> vim-fugitive
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

"">>>> for :GBrowse to work
packadd fugitive-gitlab.vim  " for GitLab
packadd vim-rhubarb  " for GitHub

" "">>> vim-gfm-syntax
" " enable this for viewing  $ITstack/CP/encoding/EMOJI_CHEAT_SHEET.gfm
" " $vfvp/packs-cp/opt/vim-gfm-syntax/README.md
" let g:gfm_syntax_emoji_conceal = 1
" let g:gfm_syntax_enable_always = 0
" let g:gfm_syntax_enable_filetypes = ['gfm']
" packadd vim-gfm-syntax

"">> languages
packadd CSS-one-line--multi-line-folding

" "">>> CSS Color
" packadd vim-css-color  " slows down every other filetype...

"">>> csv.vim
" configured in  $vimfiles/ftplugin/csv.vim
" overriden in  $vimfiles/after/plugin/plugins.vim

" $vfvp/packs-cp/opt/csv.vim/ftdetect/csv.vim
" :h ft-csv  ($vfvp/packs-cp/opt/csv.vim/doc/ft-csv.txt) the help

packadd csv.vim

"">>>> column highlighting
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

"">>>> commands
" H -> go left
" L -> go right

" %ArrangeColumn  " is slow, and makes changes
" %UnArrangeColumn  " undoes
" :CSVInit  " reinitialise the plugin (clears HiColumn)
" :DeleteColumn [n[-m]]  " deleted column(s) [n[-m]]
" :MoveColumn [n] [m]  " moves column [n] to right [of column m] (m can be $)
" :Sort [column}

" column hiding
"  :VertFold  " hides from left to current
"  :VertFold!  " unhide
" :CSVTabularize  " open as table in new buffer

" dynamic filters (:h csv-filter) see lines containing same value
"  :Filter  " show them
"  <enter>  hides away non-matching lines
"  <backspace>  successively removes filters
"  <space>  hides away matching lines

"">>> emmet-vim
" EmmetInstall  for CSS/HTML
let g:user_emmet_install_global = 0
packadd emmet-vim

" "">>> Liquid
" packadd vim-liquid  " $vfvp/packs-cp/opt/vim-liquid/ftdetect/liquid.vim

"">>> mediawiki.vim
packadd mediawiki.vim  " $vfvp/packs-cp/opt/mediawiki.vim/README.md

"">>> MTA
packadd MatchTagAlways
" for  XML/HTML  tags
" requires a Python 3 that corresponds to vim's compilation
" $vfvp/packs-cp/opt/MatchTagAlways/test.html

"">>> Org.vim
packadd org.vim

"">>> SimpylFold
" packadd SimpylFold
" Python folding

"">>> syntastic
if has('unix')
  let g:syntastic_mode_map = { "mode": "passive" } " will only run on :SyntasticCheck
else
  let g:syntastic_mode_map = { "passive_filetypes": ["tex"] }
  " packadd syntastic
endif
let g:syntastic_python_checkers = ['flake8']

"">>> tagalong.vim
" change a tag, its pair is changed too
let g:tagalong_verbose = 1
packadd tagalong.vim

"">>> vader.vim
packadd vader.vim

"">>> vim-base64
packadd vim-base64

"">>> vim-bbcode
" $vfvp/packs-cp/opt/vim-bbcode/example.bbcode - [code] & [pre] aren't highlighted
packadd vim-bbcode

"">>> vim-closetag
let g:closetag_close_shortcut = '<localleader>>'  " for > without closing
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
packadd vim-closetag

"">>> vim-dokuwiki
" $vfvp/packs-cp/opt/vim-dokuwiki/ftdetect/dokuwiki.vim
packadd vim-dokuwiki
let dokuwiki_comment=1  " comment highlighting on
let g:dokuwiki_fenced_languages = ['html', 'python', 'sh', 'vim']

"">>> vim-go
packadd vim-go

"">>> vim-hjson
packadd vim-hjson

"">>> Vim Markdown
" :h markdown
" $vfvp/packs-cp/opt/vim-markdown/maintenance.md
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

"">>> vim-mbsync
packadd vim-mbsync

"">>> vim-pandoc-syntax
packadd vim-pandoc-syntax

"">>> vim-prettier
" :Prettier
packadd vim-prettier

"">>> vim-ps1
" $vfvp\cp\opt\vim-ps1\ftdetect\ps1.vim
packadd vim-ps1

"">>> VimTeX
" $vfvp/packs-cp/opt/vimtex/README.md

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
if has('win32') | let g:vimtex_view_general_viewer = 'C:\SumatraPDF\SumatraPDF.exe' | endif
let g:vimtex_compiler_enabled = 0
let g:vimtex_compiler_silent = 1  " doesn't hide the «latexmk is not executable» message
let g:vimtex_fold_enabled = 1
let g:vimtex_include_search_enabled = 0
let g:vimtex_syntax_conceal = { 'accents': 1, 'ligatures': 1, 'cites': 1, 'fancy': 1, 'spacing': 0, 'greek': 1, 'math_bounds': 1, 'math_delimiters': 1, 'math_fracs': 1, 'math_super_sub': 1, 'math_symbols': 1, 'sections': 0, 'styles': 1, }
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

"">> minimap.vim
" MinimapToggle
packadd minimap.vim

"">> Tagbar
" $vfvp/packs-cp/opt/vim-tagbar/README.md

" :TagbarToggle  mapping set in
"  $vimfiles/vim/ftplugin/perl.vim
"  $vimfiles/vim/ftplugin/python.vim

" h tagbar-contents
" h tagbar-ignore

autocmd BufNewFile,BufReadPre *.md let b:tagbar_ignore = 1
packadd vim-tagbar

"">> unicode.vim
" $vimfiles\vim\cp\opt\unicode.vim\doc\unicode.txt
" :UnicodeName  for the character under the cursor
let g:Unicode_no_default_mappings = v:true
packadd unicode.vim

"">> vim match-up
" $vimfiles\vim\cp\opt\unicode.vim\doc\unicode.txt
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

"">> vim-ssh-annex
autocmd BufRead,BufNewFile known_hosts-* setlocal filetype=ssh_known_hosts
packadd vim-ssh-annex

""> ingo-library
" $vfvp/packs-cp/opt/vim-ingo-library/README.md
"  required for  vim-mark  vim-ShowTrailingWhitespace
packadd vim-ingo-library

""> languages
" quicker access to completions
inoremap <c-x><c-x> <c-x><c-o>
" - I'd preferred  <C-M>, but that's <CR>

"">> ALE
" :ALEFix
" :h ale-languagetool-options
" settings for the filetype, including recommended modules
"  :ALEInfo
"   AlEPrreviewWindow  responds to  <c-w>+, but not to  <cw>=
" $vfvp/packs-cp/opt/ale/plugin/ale.vim

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
"   and  $vimfiles/vim/ftplugin/ALElocaleader.vim
let g:ale_sign_column_always = 1
packadd ale

"">> NeoMutt
" $vfvp/packs-cp/opt/neomutt.vim/ftdetect/neomuttrc.vim
packadd neomutt.vim

"">> thesaurus_query.vim
let g:tq_map_keys=0
let g:tq_enabled_backends=["openoffice_en","mthesaur_txt","cnrtl_fr","synonymo_fr"]
" let g:tq_enabled_backends=["openoffice_en","mthesaur_txt"]
if has('win32')
  let g:tq_mthesaur_file="~/vimfiles/thesaurus/mthesaur.txt"
  let g:tq_openoffice_en_file="~/vimfiles/thesaurus/MyThes-1.0/th_en_US_new"
endif
let g:tq_language=['en', 'fr']
autocmd BufRead,BufNewFile */France/Scratch/* let b:tq_language=['fr']
nnoremap <leader>wt :ThesaurusQueryReplaceCurrentWord<CR>
packadd thesaurus_query.vim

"">> vim-langtool
nnoremap <leader>lt :LangTool <bar> lopen 15 <CR>
packadd vim-langtool  " can then  :h langtool
" needs  g:langtool_jar  defined

" doesn't highlight anything
" move to errors:  <cr>  :lne  :lpr

"">> vim-LanguageTool
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

""> layout

"">> characterize.vim
" enhances  ga
packadd vim-characterize

"">> color codes

"">>> Colorizer
let g:colorizer_disable_bufleave = 1
" see  $vimfiles/QR/QR.md

"">>> clrzr
" see  $vimfiles/QR/QR.md

"">> color schemes
" no need to  packadd  for Vim

"">>> jellybeans.vim
" $vimfiles/nvim/init.vim

"">>> nightfox.nvim
" $vimfiles/nvim/init.vim

"">>> vim-colors-solarized
" kept in reserve, replaced by  vim-colors-tomorrow

"">>> vim-colors-tomorrow
" $vimfiles/vim/enter/gvimrc-Arch.vim
" $vimfiles/vim/enter/vimrc-Arch.vim
" $vimfiles/vim/enter/vimrc-Win10.vim

"">>> vim-wombat-scheme
" $vimfiles/nvim/init.vim

"">> FastFold
" let g:fastfold_fold_command_suffixes = []
" packadd FastFold

"">> FoldText
packadd FoldText

"">> highlighting

" "">>> limelight.vim
" " Limelight!!
" packadd limelight.vim

"">>> vim-better-whitespace
" $vfvp/packs-cp/opt/vim-better-whitespace/doc/better-whitespace.txt
" $vfvp/packs-cp/opt/vim-better-whitespace/README.md
" only used in  $vimfiles/nvim/init.vim
if has('nvim')
  let g:better_whitespace_ctermcolor='Black'
  let g:better_whitespace_guicolor='Black'
  let g:better_whitespace_operator=''
  packadd vim-better-whitespace
endif

"">>> vim-illuminate
packadd vim-illuminate

" toggle illuminate more visible
nnoremap <silent><leader>it :call IlluminateMoreToggle()<cr>
let g:illuminatedWordMoreVisible = 0
function! IlluminateMoreToggle()
  if g:illuminatedWordMoreVisible
    hi link illuminatedWord CursorLine
    let g:illuminatedWordMoreVisible = 0
  else
    hi link illuminatedWord buildN
    let g:illuminatedWordMoreVisible = 1
  endif
  hi illuminatedWord
endfunction

" "">>> vim-interestingwords
" " \k -> new highlight
" " \K -> all off
" packadd vim-interestingwords
" let g:interestingWordsRandomiseColors = 1

"">>> vim-ShowTrailingWhitespace
" $vfvp/packs-cp/opt/vim-ShowTrailingWhitespace/doc/ShowTrailingWhitespace.txt
if g:useSTW | packadd vim-ShowTrailingWhitespace | endif  " requires  ingo-library

"">> lf.vim
" $vfvp/packs-cp/opt/lf-vim/README.md
packadd lf-vim

"">> nerdfont.vim
" packadd nerdfont.vim

"">> vim-devicons
" loaded in  $vimfiles/vim/after/plugin/plugins.vim

"">> vim-fontsize
" $vfvp/packs-cp/opt/vim-fontsize/doc/fontsize.txt
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

""> shell

"">> calendar-vim
let g:calendar_monday = 1
let g:calendar_weeknm = 1
noremap <leader>C :CalendarH<CR>
packadd calendar-vim

"">> MRU
" $vfvp/packs-cp/opt/mru/README.md
" $vimfiles/syntax/mru.vim
let MRU_Max_Entries = 1000
let MRU_Window_Height = 20
" - which is overriden by this:
" let MRU_Use_Current_Window = 1

nnoremap <leader>m :MRU
packadd mru

" $HOME/.vim_mru_files
" in GNU/Linux  :FZFMru
" :MRU \.md
" :MruRefresh
" in the normal MRU window
"  d = delete from list
"  Enter = open over current window
"  O = open split right
"  o = open split below
"  u = update

"">> open-browser.vim
" $vfvp/packs-cp/opt/open-browser.vim/doc/openbrowser.txt
" requires  :set shell  be unchanged from  cmd.exe

" If it looks like URI, Open URI under cursor. Otherwise, Search word under cursor.
nnoremap <F6> :execute "normal \<Plug>(openbrowser-smart-search)"<bar>silent !nsBt<CR>
" If it looks like URI, Open selected URI. Otherwise, Search selected word.
vmap <F6> <Plug>(openbrowser-smart-search)
"  (can't adapt this one for  nsBt)

packadd open-browser.vim

"">> vim-clifm
packadd vim-clifm

"">> vim-open-url
packadd vim-open-url

"">> vim-rooter
let g:rooter_buftypes = ['']  " avoiding specials
let g:rooter_manual_only = 1  " :Rooter
packadd vim-rooter

"">> vim-startify
" $vfvp/packs-cp/opt/vim-startify/doc/startify.txt
packadd vim-startify
" Startify

""> text wrangling

"">> aligning

"">>> tabular
" :vert h tabular
" $vfvp/packs-cp/opt/tabular/doc/Tabular.txt
" packadd tabular  " :Tabularize ...

"">>> vim-easy-align
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

"">>> vim-textmanip
packadd vim-textmanip
xmap <c-down> <Plug>(textmanip-move-down)
xmap <c-up> <Plug>(textmanip-move-up)
xmap <c-left> <Plug>(textmanip-move-left)
xmap <c-right> <Plug>(textmanip-move-right)

"">> find/replace

"">>> Highlight.vim
if !has('gui_running') && !has('nvim') | packadd Highlight.vim | endif  " plain vim only

"">>> incsearch.vim
" :h incsearch.vim
map g/ <Plug>(incsearch-stay)
packadd incsearch.vim  " needed for  incsearch-fuzzy.vim

"">>> incsearch-fuzzy.vim
map z/ <Plug>(incsearch-fuzzy-stay)
packadd incsearch-fuzzy.vim

"">>> quick-scope
" trigger highlighting in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

packadd quick-scope

"">>> vim-asterisk
packadd vim-asterisk
map *  <Plug>(asterisk-*)
map #  <Plug>(asterisk-#)
map g* <Plug>(asterisk-g*)  " rg --no-ignore ' g\* '
map g# <Plug>(asterisk-g#)  " rg --no-ignore ' g# '
map z* <Plug>(asterisk-z*)  " rg --no-ignore ' z\* '
" z*cgn  make change to this first match, escape, . does same on next match
map z# <Plug>(asterisk-z#)  " rg --no-ignore ' z# '

"">>> vim-mark
" :h mark.txt
" :Mark => disable them
" :Mark /arbitrary/
" :Mark word

let g:mw_no_mappings = 1
nmap <leader><leader>m <Plug>MarkSet
nmap <leader><leader>n <Plug>MarkClear
packadd vim-mark  " requires  ingo-library

" "">>> vim-visual-star-search
" packadd vim-visual-star-search
" " now preferring  vim-asterisk

"">> supertab
" $vfvp/packs-cp/opt/supertab/doc/supertab.txt
" c-v tab  to insert a literal tab
packadd supertab

"">> targets.vim
" $vfvp/packs-cp/opt/targets.vim/cheatsheet.md
packadd targets.vim

""> vim

"">> buffers

"">>> bufferize.vim
" :Bufferize <something>  is handy, but the buffer's fragile...
packadd bufferize.vim

"">>>> grab Vim settings - all commands
function! GrabAllCommands()
  silent execute 'Bufferize command'
  winc k
  normal! ggVGd
  bdelete
  blast
  normal! p
  write
endfunction
" for use in  $vimfiles/settings/*-commands-*.txt

"">>>> grab Vim settings - all functions
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
" for use in  $vimfiles/settings/*-commands-*.txt

"">>>> grab Vim settings - maps of Fn keys
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
" for use in  $vimfiles/settings/*-FnMaps.txt
" won't catch buffer-specific maps

"">>>> grab Vim settings - simple maps
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
" for use in  $vimfiles/settings/*-simpleMaps-*.txt

"">>>> grab Vim settings - scriptnames
function! GrabScriptnames()
  silent execute 'Bufferize scriptnames'
  winc k
  normal! ggVGd
  bdelete
  blast
  normal! p
  write
endfunction
" for use in  $vimfiles/settings/*-scriptnames-*.fetl

"">>> close-buffers.vim
"  quickly close all but current buffer
nnoremap <leader>bdd :Bdelete other<CR>
"  quickly close all but visible buffers
nnoremap <leader>bd  :Bdelete hidden<CR>

packadd close-buffers.vim

"">>> vim-buffing-wheel
packadd vim-buffing-wheel
" - + X

"">>> vim-bufkill
" :BB :BF  could be mapped to replace some of the functionality of  vim-buffing-wheel

packadd vim-bufkill

"">>>> mappings
let g:BufKillCreateMappings = 0

" :bd  maintaining splits
noremap <silent> <leader><leader>d :BD<CR>:bp<CR>
" - has at least a chance of landing on a different buffer than already visible

"">> location/quickfix list

"">>> cfilter
packadd cfilter

"">>> ListToggle
" $vfvp/packs-cp/opt/listtoggle/README.md

packadd listtoggle
let g:lt_location_list_toggle_map = '<leader>ll'
let g:lt_height = 15

" Defaults:
" let g:lt_location_list_toggle_map = '<leader>l'
" let g:lt_quickfix_list_toggle_map = '<leader>q'

"">>> vim-loclist-follow
let g:loclist_follow = 1
packadd vim-loclist-follow

"">> undotree
packadd undotree

"">> vim-peekaboo
packadd vim-peekaboo
" triggered by "/@ normal mode, <CTRL-R> insert mode
"  spacebar toggles full-screen, to see clearer the register's contents

"">> vim-repeat
packadd vim-repeat

