
" https://harriott.github.io/ - Sun 05 Feb 2023

" $vimfiles/plugin/plugins.vim

" find . -mindepth 3 -maxdepth 3 -type d | sort | tr '\n' ' ' | sed 's#./packs-##g' | xcol cp/opt/ unix/opt/; echo

""> encoding

"">> AnsiEsc
packadd vim-plugin-AnsiEsc

"">> dsf
packadd dsf.vim
" csf -> change surrounding function
" daf -> delete a function call
" dif -> delete inner function call
" dsf -> delete surrounding function
" dsnf -> delete next surrounding function

"">> Git

"">>> Flog
" :Flog
" :Floggit
packadd vim-flog

"">>> gitignore.vim
packadd gitignore.vim

"">>> vim-fugitive
" configurations
"  let g:airline_symbols.notexists
"  let g:airline_symbols.dirty
let g:airline#extensions#branch#vcs_checks = ['untracked'] " because 'dirty' isn't accurate...

" Ggrep for last search
nnoremap <F3> :call StripStoreCurSel()<CR>:Ggrep -i "<C-R>s" <bar>cw
" gives bogus filenames if they contain accented characters

" keystrokes
"  ce  " amend the last commit without editing the message
"  U   " unstages all
"  :GB :GBrowse
"  :Git pull

packadd vim-fugitive

" "">>> vim-gfm-syntax
" " $vimfiles/pack/packs-cp/opt/vim-gfm-syntax/README.md
" let g:gfm_syntax_emoji_conceal = 1
" let g:gfm_syntax_enable_always = 0
" let g:gfm_syntax_enable_filetypes = ['gfm']
" packadd vim-gfm-syntax

"">>> vim-gitgutter
let g:gitgutter_max_signs = 600
let g:gitgutter_enabled = 0
packadd vim-gitgutter

"">>>> toggle
let g:GGF = 0
" $vimfiles/after/plugin/plugins.vim

"">>> vim-rhubarb
packadd vim-rhubarb  " for :GBrowse to work

"">> languages
packadd CSS-one-line--multi-line-folding

" "">>> CSS Color
" packadd vim-css-color  " slows down every other filetype...

"">>> csv.vim
" $vimfiles/pack/packs-cp/opt/csv.vim/ftdetect/csv.vim
" H -> go left
" L -> go right
" column hiding
"  :VertFold  " hides from left to current
"  :VertFold!  " unhide
" :CSVTabularize  " open as table in new buffer
" line hiding
"  <cr>  " unhide
"  <enter>  " hides away non-matching
packadd csv.vim

"">>> emmet-vim
" EmmetInstall
let g:user_emmet_install_global = 0
packadd emmet-vim

"">>> Liquid
packadd vim-liquid  " $vimfiles/pack/packs-cp/opt/vim-liquid/ftdetect/liquid.vim

"">>> mediawiki.vim
packadd mediawiki.vim  " $vimfiles/pack/packs-cp/opt/mediawiki.vim/README.md

"">>> MTA
packadd MatchTagAlways
" requires a Python 3 that corresponds to vim's compilation
" $vimfiles/pack/packs-cp/opt/MatchTagAlways/test.html

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

"">>> vim-base64
packadd vim-base64

"">>> vim-bbcode
" $vimfiles/pack/packs-cp/opt/vim-bbcode/example.bbcode - [code] & [pre] aren't highlighted
packadd vim-bbcode

"">>> vim-closetag
let g:closetag_close_shortcut = '<localleader>>'  " for > without closing
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
packadd vim-closetag

"">>> vim-dokuwiki
" $vimfiles/pack/packs-cp/opt/vim-dokuwiki/ftdetect/dokuwiki.vim
packadd vim-dokuwiki
let dokuwiki_comment=1  " comment highlighting on
let g:dokuwiki_fenced_languages = ['html', 'python', 'sh', 'vim']

"">>> vim-go
packadd vim-go

"">>> vim-hjson
packadd vim-hjson

"">>> Vim Markdown
" :h markdown
" $vimfiles/pack/packs-cp/opt/vim-markdown/maintenance.md
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_conceal_code_blocks = 0  " need to see them
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1  " highlight YAML Front Matter
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_strikethrough = 1
" let g:vim_markdown_fenced_languages
packadd vim-markdown  " harriott  clone of  preservim

" Movements:
" ]] => next header
" [[ => previous header
" ][ => next sibling header
" [] => previous sibling header
" ]h => current header
" ]u => parent header

" ToC:
" :Toc => quickfix ToC left
" :Toch => quickfix ToC below

"">>> vim-mbsync
packadd vim-mbsync

"">>> vim-pandoc-syntax
packadd vim-pandoc-syntax

"">>> vim-prettier
" :Prettier
packadd vim-prettier

"">>> vim-ps1
" $vimfiles\pack\packs-cp\opt\vim-ps1\ftdetect\ps1.vim
packadd vim-ps1

"">>> VimTeX
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
let g:vimtex_fold_enabled =1
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
packadd vimtex

"">> The NERD Commenter
packadd nerdcommenter
let NERDSpaceDelims = 1
" <leader>c<space> -> NERDCommenterToggle

" extra filetypes
" $vimfiles/pack/packs-cp/opt/nerdcommenter/autoload/nerdcommenter.vim > let s:delimiterMap
let g:NERDCustomDelimiters = { 'clifm': { 'left': '#' }, }

"">> Tagbar
" add this for relevant filetypes:  nnoremap <silent> <buffer> <leader>ct :TagbarToggle<CR>
" h tagbar-contents
" h tagbar-ignore

autocmd BufNewFile,BufReadPre *.md let b:tagbar_ignore = 1
packadd tagbar

"">> vim match-up
" % = jump forward
" g% = jumb backward
" jump blocks
"  [% = start
"  ]% = end
"  z% = inside
" block text objects
"  i% = inside
"  a% = all
nnoremap <leader>pp :<c-u>MatchupWhereAmI??<cr>
packadd vim-matchup

"">> vim-ssh-annex
autocmd BufRead,BufNewFile known_hosts-* setlocal filetype=ssh_known_hosts
packadd vim-ssh-annex

""> fzf.vim
packadd fzf.vim

nnoremap <leader>B :BLines<CR>
nnoremap <leader>L :Lines<CR>
nnoremap <leader>bf :Buffers<CR>
nnoremap <F8> :History:<CR>
inoremap <F8> <Esc>:History:<CR>
vnoremap <F8> <Esc>:History:<CR>
nnoremap <F9> :History/<CR>
inoremap <F9> <Esc>:History/<CR>
vnoremap <F9> <Esc>:History/<CR>

" Win10:
" junegunn/fzf  at  $vimfiles\plugin\fzf,
"  because  fzf  is not found externally inspite of  :set rtp+=$CrPl\fzf
"  (the advice at  $vimfiles/plugin/fzf/README-VIM.md  ain't correct)

"">> \j
" in ~/.vim: rg '>j' --no-ignore

if hostname() == 'i34G1TU02'
  nnoremap <leader>j :Files /mnt/BX200/Dropbox/JH<CR>
elseif hostname() == 'AsusW202'
  nnoremap <leader>j :Files /mnt/SDEP128G/Dropbox/JH<CR>
elseif hostname() == 'sbMb'
  nnoremap <leader>j :Files /mnt/SDU3D1TB/Dropbox/JH<CR>
elseif hostname() == 'T430i73520M'
  nnoremap <leader>j :Files C:\Users\troin\Dropbox\JH<CR>
endif

""> ingo-library
" required for  vim-mark  vim-ShowTrailingWhitespace
packadd vim-ingo-library

""> languages

"">> ALE
" :ALEFix
" :Bufferize ALEInfo  " shows settings for the filetype
" :h ale-languagetool-options
" $vimfiles/pack/packs-cp/opt/ale/plugin/ale.vim

" Enabled?
"  :let ale_enabled
"  airline shows an orange category at right end when ALE is enabled
"  filetypes might have  b:ale_enabled = 0

" Arch's  languagetool  is found
let g:ale_echo_msg_format = '%linter% %code% %s'
let g:ale_virtualtext_cursor = 'disabled'  " turns off end of line  virtual-text  messages
let g:ale_linters_explicit = 1  " turns off all except explicity defined linters
"  I use  let b:ale_linters = [...]  in my ftplugin configurations
let g:ale_sign_column_always = 1
packadd ale

" moving to ALE errors
noremap <silent> <C-j> <Plug>(ale_next_wrap)
noremap <silent> <C-k> <Plug>(ale_previous_wrap)

"">>> toggle ALE for buffer
" noremap <leader>aa :ALEToggleBuffer<CR>  " doesn't report status
noremap <leader>aa :call ALEToggleBufferShow()<cr>
function! ALEToggleBufferShow()
  if b:ale_enabled
    ALEDisableBuffer
  else
    ALEEnableBuffer
  endif
let b:ale_enabled
endfunction

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
nnoremap <leader>th :ThesaurusQueryReplaceCurrentWord<CR>
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

"">>> colorizer
" optionally available

"">>> vim-hexokinase
" enabled in my ~/.config/nvim/init.vim
  autocmd BufRead,BufNewFile /tmp/.nnn* :HexokinaseTurnOff

let g:Hexokinase_highlighters = ['foregroundfull']

"">> color schemes

"">>> jellybeans.vim
" see $vimfiles/vimrc-Arch.vim

"">>> vim-colors-solarized
" packadd vim-colors-solarized

"">>> vim-colors-tomorrow
packadd vim-colors-tomorrow  " colorscheme tomorrow

"">>> vim-wombat-scheme
" optionally added for neovim

"">> FastFold
" let g:fastfold_fold_command_suffixes = []
" packadd FastFold

"">> FoldText
packadd FoldText

"">> highlighting

"">>> illuminate
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

" "">>> limelight.vim
" " Limelight!!
" packadd limelight.vim

"">>> vim-better-whitespace
" added for neovim

" "">>> vim-interestingwords
" " \k -> new highlight
" " \K -> all off
" packadd vim-interestingwords
" let g:interestingWordsRandomiseColors = 1

"">>> vim-ShowTrailingWhitespace
if g:useSTW | packadd vim-ShowTrailingWhitespace | endif  " requires  ingo-library

"">> nerdfont.vim
" packadd nerdfont.vim

"">> vim-airline
let g:airline_powerline_fonts = 1
packadd vim-airline
let airline#extensions#ale#show_line_numbers = 0
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#fzf#enabled = 1  " adds line-number/total lines
let g:airline#extensions#whitespace#trailing_format = 'tr[%s]'
let g:airline#extensions#whitespace#mixed_indent_file_format = 'mif[%s]'
packadd vim-airline-themes
if has('win32')
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
  let g:airline_symbols.colnr = ' '
  let g:airline_symbols.linenr = ' '
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.branch = ''
endif

"">> vim-devicons
" loaded in  $vimfiles/after/plugin/plugins.vim

"">> vim-fontsize
packadd vim-fontsize
" <Leader><Leader>+ -> bigger font
" <Leader><Leader>- -> smaller font
" <Leader><Leader>0 -> default font size

""> shell

"">> calendar-vim
let g:calendar_monday = 1
let g:calendar_weeknm = 1
noremap <leader>yy :CalendarH<CR>
packadd calendar-vim

"">> ctrlp.vim
" $HOME/.cache/ctrlp/mru/cache.txt
" <c-f> and <c-b> to cycle between modes
" open selected entry in a new
"  split horizontal <c-x>
"  split vertical   <c-v>
"  tab              <c-t>
set wildignore+=NTUSER.DAT*,*.lnk " helps when in my Win7 %USERPROFILE%

"">>> 0 configure
" need to be defined before it's loaded
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_mruf_max = 500
nnoremap <leader>bb :CtrlPBuffer<CR>

"">>> 1 invoke
packadd ctrlp.vim

"">> Fern
" vim default c-e = scroll up the window, without displacing the cursor
noremap <C-e> :cd %:p:h<CR>:Fern . -reveal=%<CR>
packadd fern.vim " $vimfiles/pack/packs-cp/opt/fern.vim/README.md
" <c-h>  in
" <c-m>  out
" +  vim-buffing-wheel out
" E  open:side
" x  open:system
" t  open:tabedit

"">> fern-git-status
packadd fern-git-status.vim

"">> fern-preview.vim
augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END
function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction
packadd fern-preview.vim

"">> fern-renderer-nerdfont.vim
let g:fern#renderer = "nerdfont"
packadd fern-renderer-nerdfont.vim

"">> MRU
" $HOME/.vim_mru_files
let MRU_Max_Entries = 1000
if has('unix')
  let MRU_Window_Height = 20
else
  let MRU_Window_Height = 30
endif
" - which is overriden by this:
" let MRU_Use_Current_Window = 1

if has('unix')
  nnoremap <leader>m :MRU
  " - allows for a qualifying regex
else
  nnoremap <leader>m :MRU<CR>
endif
packadd mru

" in GNU/Linux  :FZFMru
" :MRU \.md
" :MruRefresh
" in the normal MRU window
"  d = delete from list
"  Enter = open over current window
"  O = open split right
"  o = open split below
"  u = update

"">> NERDTree
"h NERDTree
let NERDTreeWinSize = 40
let NERDTreeHijackNetrw = 0  " liberate  e.
noremap <C-n> :NERDTreeToggle<CR>

" loaded in  $vimfiles/after/plugin/plugins.vim

" Open it on buffer's directory:
nnoremap <F10> :cd %:p:h<CR>:NERDTreeCWD<CR>
inoremap <F10> <Esc>:cd %:p:h<CR>:NERDTreeCWD<CR>

"">> nerdtree-git-plugin
packadd nerdtree-git-plugin

"">> open-browser.vim
" If it looks like URI, Open URI under cursor. Otherwise, Search word under cursor.
nnoremap <F6> :execute "normal \<Plug>(openbrowser-smart-search)"<bar>silent !nsBt<CR>
" If it looks like URI, Open selected URI. Otherwise, Search selected word.
vmap <F6> <Plug>(openbrowser-smart-search)
"  (can't adapt this one for  nsBt)

packadd open-browser.vim

"">> vifm.vim
packadd vifm.vim

"">> vim-clifm
packadd vim-clifm

"">> vim-dirvish
" h dirvish
" takes over :e.

" in dirvish
"  -       -> out
"  <enter> -> in
"  g?      -> dirvish-mappings
"  gq      -> quit
"  preview left
"   p
"    Ctrl-n -> next
"    Ctrl-p -> previous

packadd vim-dirvish

"">> vim-dirvish-git
if has('unix')
  packadd vim-dirvish-git
endif

"">> vim-open-url
packadd vim-open-url

"">> vim-startify
packadd vim-startify
" Startify

"">> vim-picker
if has('unix')
  packadd vim-picker
  nmap <unique> <leader>pe <Plug>(PickerEdit)
  nmap <unique> <leader>pb <Plug>(PickerBuffer)
endif

""> text wrangling

"">> aligning

"">>> tabular
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
    \ '>': { 'pattern': '>>\|=>\|>' }
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

"">>> vim-easymotion
" :h easymotion-default-mappings
packadd vim-easymotion

let g:EasyMotion_do_mapping = 0 " Disable default mappings
" <Leader>f{char} to move to {char}
map  <Leader><Leader>f <Plug>(easymotion-bd-f)
nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)
" Move to word
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)
" s{char}{char}{label}
autocmd VimEnter * nmap s <Plug>(easymotion-overwin-f2)
"  (in an autocmd to be sure it works with Arch vim-colors-solarized)

" toggle searching functionality
nnoremap <leader>e :call EasyMotionSearchToggle()<cr>
let g:searchingwitheasymotion = 0
function! EasyMotionSearchToggle()
    if g:searchingwitheasymotion
        unmap /
        unmap n
        unmap N
        let g:searchingwitheasymotion = 0
        echo 'searching normally'
    else
        map / <Plug>(easymotion-sn)
        map n <Plug>(easymotion-next)
        map N <Plug>(easymotion-prev)
        let g:searchingwitheasymotion = 1
        echo 'searching with EasyMotion'
    endif
endfunction

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
packadd supertab

"">> targets.vim
" $vimfiles/pack/packs-cp/opt/targets.vim/cheatsheet.md
packadd targets.vim

"">> vim-subversive
packadd vim-subversive

nmap S <plug>(SubversiveSubstituteRange)
" S<motion1><motion2> => prompts for text to replace <motion1> in <motion2>
" "zS<motion1><motion2> => replaces <motion1> in <motion2> with register z
nmap <leader>s <plug>(SubversiveSubstituteRangeConfirm)
" - requests confirmations

"">> vim-surround
" cs'b cs'B cs'r cs'a => change surrounding ' to ) ] } >
" cs'( cs'{ cs'[ cs'< => ...with spaces
" ds' => delete surrounding '
" h surround
" ysiw<q> => yes surround word in quote tags (ySiw  or  ySS  to include newlines)
" yssb => bracket the line
" on a visual selection, Sr => wrap with []
packadd vim-surround

""> vim

"">> buffers

"">>> bufexplorer
packadd bufexplorer
noremap <silent> <leader>be :BufExplorer<CR>

"">>>> default mappings
"  <Leader>be - Opens BufExplorer
"  <Leader>bt - Toggles BufExplorer open or closed
"  <Leader>bs - Opens horizontally split window BufExplorer
"  <Leader>bv - Opens vertically split window BufExplorer

"">>> bufferize.vim
packadd bufferize.vim

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
" :BD  :bd maintaining splits
packadd vim-bufkill

"">> location/quickfix list

"">>> cfilter
packadd cfilter

"">>> ListToggle
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

