" vim: se nowrap:

" generated from within Vim by  :call Grab_exrc()

let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(peekaboo) <bar><bar>:<bar>call peekaboo#aboo()<cr>
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
imap <S-Tab> <Plug>SuperTabBackward
inoremap <C-Tab> <bar>	
inoremap <F10> <esc>:cd %:p:h<cr>:NERDTreeCWD<cr>
inoremap <silent> <Plug>(ale_complete) <bar><bar>:ALEComplete<cr>
inoremap <C-X><C-X> <bar><bar>
imap <silent> <C-G>% <Plug>(matchup-c_g%)
inoremap <silent> <Plug>(matchup-c_g%) <bar><bar>:call matchup#motion#insert_mode()<cr>
inoremap <silent> <Plug>NERDCommenterInsert <bar><bar>:call nerdcommenter#Comment('i', "Insert")<cr>
inoremap <S-F2> <esc>
inoremap <F3> <esc>
inoremap <F2> <esc>:wa<cr>
inoremap <S-F11> <esc><S-F11>
inoremap <S-F5> <esc><S-F5>
inoremap <F5> <esc>:wa<cr>:e<cr>
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) <bar>e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"<cr><cr>
imap <F11> <esc><F11>
inoremap <Insert> <esc> :CapsLockOff <cr>
inoremap <F4> <esc>:call F4F4()<cr>
inoremap <C-W> <bar>u<c-w>
inoremap <C-U> <bar>u<bar>
noremap <bar> :cd %:p:h<cr>:Fern . -reveal=%<cr>
nnoremap <bar> <c-w>h
nnoremap <NL> <c-w>j
nnoremap <bar> <c-w>k
nnoremap <bar> <c-w>l
noremap <bar> :NERDTreeToggle<cr>
tnoremap <esc><esc> <bar><bar>:bd!<cr>
nnoremap <bar>  za
map # <Plug>(asterisk-#)
omap <silent> % <Ignore><Plug>(matchup-%)
xmap <silent> % <Plug>(matchup-%)
nmap <silent> % <Plug>(matchup-%)
nnoremap & :&&<cr>
map * <Plug>(asterisk-*)
onoremap , :
xnoremap , :
nnoremap , :
onoremap : ,
xnoremap : ,
nnoremap : ,
nnoremap =h :echo 'you just hit =h'<cr>
xnoremap <silent> @(targets) :<bar>call targets#do()<cr>
onoremap <silent> @(targets) :<bar>call targets#do()<cr>
nnoremap @: <Nop>
nnoremap @@ @:
xmap <expr> A targets#e('o', 'A', 'A')
omap <expr> A targets#e('o', 'A', 'A')
xmap F <Plug>(QuickScopeF)
omap F <Plug>(QuickScopeF)
nmap F <Plug>(QuickScopeF)
nnoremap <silent> <expr> H context#util#map_H()
xmap <expr> I targets#e('o', 'I', 'I')
omap <expr> I targets#e('o', 'I', 'I')
noremap Q @q
xmap S <Plug>VSurround
nmap S <Plug>(SubversiveSubstituteRange)
xmap T <Plug>(QuickScopeT)
omap T <Plug>(QuickScopeT)
nmap T <Plug>(QuickScopeT)
nnoremap U :CapsLockOff<cr> <bar>| U
nnoremap Y y$
omap <silent> [% <Plug>(matchup-[%)
xmap <silent> [% <Plug>(matchup-[%)
nmap <silent> [% <Plug>(matchup-[%)
noremap \gg :call GitGutterFocus()<cr>
nnoremap <silent> \q :QToggle<cr>
nnoremap <silent> \l :LToggle<cr>
noremap <silent> \\d :BD<cr>:bp<cr>
nmap <silent> \ba <Plug>BufKillAlt
nmap <silent> \bundo <Plug>BufKillUndo
nmap <silent> \!bw <Plug>BufKillBangBw
nmap <silent> \bw <Plug>BufKillBw
nmap <silent> \!bd <Plug>BufKillBangBd
nmap <silent> \!bun <Plug>BufKillBangBun
nmap <silent> \bun <Plug>BufKillBun
nmap <silent> \bf <Plug>BufKillForward
nmap <silent> \bb <Plug>BufKillBack
nnoremap \bd :Bdelete hidden<cr>
nnoremap \bdd :Bdelete other<cr>
nmap \\n <Plug>MarkClear
nmap \\m <Plug>MarkSet
nnoremap \e :call EasyMotionSearchToggle()<cr>
nmap \\w <Plug>(easymotion-overwin-w)
vmap \\w <Plug>(easymotion-bd-w)
omap \\w <Plug>(easymotion-bd-w)
nmap \\f <Plug>(easymotion-overwin-f)
vmap \\f <Plug>(easymotion-bd-f)
omap \\f <Plug>(easymotion-bd-f)
map \\ <Plug>(easymotion-prefix)
nmap \caL <Plug>CalendarH
nmap \cal <Plug>CalendarV
noremap \yy :CalendarH<cr>
nnoremap <silent> \it :call IlluminateMoreToggle()<cr>
nnoremap \LT :call LanguageTool_lopen() <cr>
nnoremap \lt :LangTool <bar>| lopen 15 <cr>
nnoremap \tq :ThesaurusQueryReplaceCurrentWord<cr>
nnoremap \pp :<bar>MatchupWhereAmI??<cr>
nmap \ca <Plug>NERDCommenterAltDelims
xmap \cu <Plug>NERDCommenterUncomment
nmap \cu <Plug>NERDCommenterUncomment
xmap \cb <Plug>NERDCommenterAlignBoth
nmap \cb <Plug>NERDCommenterAlignBoth
xmap \cl <Plug>NERDCommenterAlignLeft
nmap \cl <Plug>NERDCommenterAlignLeft
nmap \cA <Plug>NERDCommenterAppend
xmap \cy <Plug>NERDCommenterYank
nmap \cy <Plug>NERDCommenterYank
xmap \cs <Plug>NERDCommenterSexy
nmap \cs <Plug>NERDCommenterSexy
xmap \ci <Plug>NERDCommenterInvert
nmap \ci <Plug>NERDCommenterInvert
nmap \c$ <Plug>NERDCommenterToEOL
xmap \cn <Plug>NERDCommenterNested
nmap \cn <Plug>NERDCommenterNested
xmap \cm <Plug>NERDCommenterMinimal
nmap \cm <Plug>NERDCommenterMinimal
xmap \c<bar>  <Plug>NERDCommenterToggle
nmap \c<bar>  <Plug>NERDCommenterToggle
xmap \cc <Plug>NERDCommenterComment
nmap \cc <Plug>NERDCommenterComment
nmap \p <Plug>(Prettier)
nnoremap \atob/ :%s/\v()/\=base64#decode(submatch(1))/<Home><Right><Right><Right><Right><Right><Right>
nnoremap \btoa/ :%s/\v()/\=base64#encode(submatch(1))/<Home><Right><Right><Right><Right><Right><Right>
vnoremap <silent> \btoa :<bar>call base64#v_btoa()<cr>
vnoremap <silent> \atob :<bar>call base64#v_atob()<cr>
map \rwp <Plug>RestoreWinPosn
map \swp <Plug>SaveWinPosn
nnoremap \d :cd %:p:h<cr>:pwd<cr>
nnoremap \- :Hexplore<cr>
vnoremap <silent> \<F11> <esc>:echo strftime('%c',getftime(expand('%')))<cr>
nnoremap <silent> \<F11> :echo strftime('%c',getftime(expand('%')))<cr>
nnoremap \f :let@f=@%<cr>
vnoremap \vs <esc>:call ConvertSearchForVisualSelection()<cr>
nnoremap \vs :call ConvertSearchForVisualSelection()<cr>
nnoremap \pt :call ParenthsToggle()<cr>
nnoremap \\q :call VimgrepQRs()<cr>
nnoremap \vg :call VimgrepSelection()<cr>
nnoremap \v v$hy
nnoremap \is :call IncSearchToggle()<cr>
nnoremap \/ :call TweakLS()<cr>
vnoremap \n <esc>:nohlsearch<cr>
nnoremap \n :nohlsearch<cr>
nnoremap \c= :windo set nowfh <cr>
nnoremap \<Right> 10<c-w>>
nnoremap \<Left> 10<c-w><bar><
nnoremap \<Up> 5<c-w>+
nnoremap \<Down> 5<c-w>-
nnoremap \\o :close<cr>
nnoremap \\v :vsplit<cr>
nnoremap \\h :split<cr>
nnoremap \x <c-w>c
nnoremap <silent> \rn :set rnu! rnu? <cr>
nnoremap <silent> \\l :set cul! cul? <cr>
nnoremap <silent> \\c :set cuc! cuc? <cr>
nnoremap \zz :let &scrolloff=999-&scrolloff<cr>
noremap \\ll :set list! list? <cr>
nnoremap \<F5> :call clearmatches()<cr>
nnoremap \5 :call UnicodePercent()<cr>
nnoremap \9 :call PercentUnicode()<cr>
noremap \yp :lan fr_FR.UTF-8<cr>:call DateFr()<cr>:lan en_GB.UTF-8<cr>
nnoremap \\2 :call ClearMAS()<cr>
nnoremap \2 :call ClearFancyGlyphs()<cr>
nnoremap \U :Underline
nnoremap \[ :s/\m\[.\{-}]//g<cr>
nmap \s <Plug>(SubversiveSubstituteRangeConfirm)
nmap <silent> \s<bar>  :<bar>exe ".,+".v:count" StripWhitespace"<cr>
xmap <silent> \s :StripWhitespace<cr>
omap <silent> ]% <Plug>(matchup-]%)
xmap <silent> ]% <Plug>(matchup-]%)
nmap <silent> ]% <Plug>(matchup-]%)
xmap <expr> a targets#e('o', 'a', 'a')
omap <expr> a targets#e('o', 'a', 'a')
omap <silent> a% <Plug>(matchup-a%)
xmap <silent> a% <Plug>(matchup-a%)
xmap af <Plug>DsfTextObjectA
omap af <Plug>DsfTextObjectA
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap csnf <Plug>DsfNextChange
nmap csf <Plug>DsfChange
nmap ds <Plug>Dsurround
nmap dsnf <Plug>DsfNextDelete
nmap dsf <Plug>DsfDelete
xmap f <Plug>(QuickScopef)
omap f <Plug>(QuickScopef)
nmap f <Plug>(QuickScopef)
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
map g# <Plug>(asterisk-g#)  " rg --no-ignore ' g# '
map g* <Plug>(asterisk-g*)  " rg --no-ignore ' g\* '
map g/ <Plug>(incsearch-stay)
xmap gA <Plug>(EasyAlign)
nmap gA <Plug>(EasyAlign)
xmap gG <Plug>(open-url-search-google)
nmap gG <Plug>(open-url-search-google)
xmap gW <Plug>(open-url-search-wikipedia)
nmap gW <Plug>(open-url-search-wikipedia)
xmap g<cr> <Plug>(open-url-search)
nmap g<cr> <Plug>(open-url-search)
xmap gB <Plug>(open-url-browser)
nmap gB <Plug>(open-url-browser)
nmap ga <Plug>(characterize)
omap <silent> g% <Ignore><Plug>(matchup-g%)
xmap <silent> g% <Plug>(matchup-g%)
nmap <silent> g% <Plug>(matchup-g%)
nnoremap g, <Nop>
nnoremap g: g,
xnoremap gb <Plug>(comment_toggle_blockwise_visual)
xnoremap gc <Plug>(comment_toggle_linewise_visual)
nnoremap gb <Plug>(comment_toggle_blockwise)
nnoremap gc <Plug>(comment_toggle_linewise)
xmap <expr> i targets#e('o', 'i', 'i')
omap <expr> i targets#e('o', 'i', 'i')
omap <silent> i% <Plug>(matchup-i%)
xmap <silent> i% <Plug>(matchup-i%)
xmap if <Plug>DsfTextObjectI
omap if <Plug>DsfTextObjectI
xnoremap q: <Nop>
nnoremap q: <Nop>
xnoremap q, q:
nnoremap q, q:
nmap s <Plug>(easymotion-overwin-f2)
xmap t <Plug>(QuickScopet)
omap t <Plug>(QuickScopet)
nmap t <Plug>(QuickScopet)
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
map z# <Plug>(asterisk-z#)  " rg --no-ignore ' z# '
map z* <Plug>(asterisk-z*)  " rg --no-ignore ' z\* '
map z/ <Plug>(incsearch-fuzzy-stay)
omap <silent> z% <Plug>(matchup-z%)
xmap <silent> z% <Plug>(matchup-z%)
nmap <silent> z% <Plug>(matchup-z%)
nnoremap <silent> <expr> zt context#util#map_zt()
nnoremap zr :exe ':spellrare  '.expand('<bar><cWORD>')<cr>
vnoremap ~ y:call setreg('', TwiddleCase(@"), getregtype(''))<cr>gv""Pgv
xnoremap <silent> <Plug>NetrwBrowseXVis :<bar>call netrw#BrowseXVis()<cr>
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<cr>
xnoremap <silent> <Plug>(peekaboo) :<bar>call peekaboo#aboo()<cr>
nnoremap <silent> <Plug>(peekaboo) :<bar>call peekaboo#aboo()<cr>
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <Plug>(_SubversiveSubstituteRangeSecondary) :<bar>set opfunc=subversive#lineRangeMotion#selectRangeMotion<cr>g@
nnoremap <silent> <Plug>(SubversiveSubvertWordRangeNoPrompt) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 0, 1, 1, 0)<cr>:set opfunc=subversive#lineRangeMotion#selectTextMotion<cr>g@iw
xnoremap <silent> <Plug>(SubversiveSubvertRangeNoPrompt) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 0, 1, 0, 0)<cr><esc>:call subversive#lineRangeMotion#selectTextMotion('char', 1)<cr>
nnoremap <silent> <Plug>(SubversiveSubvertRangeNoPrompt) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 0, 1, 0, 0)<cr>:set opfunc=subversive#lineRangeMotion#selectTextMotion<cr>g@
nnoremap <silent> <Plug>(SubversiveSubvertWordRange) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 1, 1, 1, 0)<cr>:set opfunc=subversive#lineRangeMotion#selectTextMotion<cr>g@iw
xnoremap <silent> <Plug>(SubversiveSubvertRange) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 1, 1, 0, 0)<cr><esc>:call subversive#lineRangeMotion#selectTextMotion('char', 1)<cr>
nnoremap <silent> <Plug>(SubversiveSubvertRange) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 1, 1, 0, 0)<cr>:set opfunc=subversive#lineRangeMotion#selectTextMotion<cr>g@
nnoremap <silent> <Plug>(SubversiveSubstituteWordRangeNoPromptConfirm) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 0, 0, 1, 1)<cr>:set opfunc=subversive#lineRangeMotion#selectTextMotion<cr>g@iw
xnoremap <silent> <Plug>(SubversiveSubstituteRangeNoPromptConfirm) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 0, 0, 0, 1)<cr><esc>:call subversive#lineRangeMotion#selectTextMotion('char', 1)<cr>
nnoremap <silent> <Plug>(SubversiveSubstituteRangeNoPromptConfirm) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 0, 0, 0, 1)<cr>:set opfunc=subversive#lineRangeMotion#selectTextMotion<cr>g@
nnoremap <silent> <Plug>(SubversiveSubstituteWordRangeNoPrompt) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 0, 0, 1, 0)<cr>:set opfunc=subversive#lineRangeMotion#selectTextMotion<cr>g@iw
xnoremap <silent> <Plug>(SubversiveSubstituteRangeNoPrompt) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 0, 0, 0, 0)<cr><esc>:call subversive#lineRangeMotion#selectTextMotion('char', 1)<cr>
nnoremap <silent> <Plug>(SubversiveSubstituteRangeNoPrompt) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 0, 0, 0, 0)<cr>:set opfunc=subversive#lineRangeMotion#selectTextMotion<cr>g@
nnoremap <silent> <Plug>(SubversiveSubstituteWordRangeConfirm) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 1, 0, 1, 1)<cr>:set opfunc=subversive#lineRangeMotion#selectTextMotion<cr>g@iw
xnoremap <silent> <Plug>(SubversiveSubstituteRangeConfirm) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 1, 0, 0, 1)<cr><esc>:call subversive#lineRangeMotion#selectTextMotion('char', 1)<cr>
nnoremap <silent> <Plug>(SubversiveSubstituteRangeConfirm) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 1, 0, 0, 1)<cr>:set opfunc=subversive#lineRangeMotion#selectTextMotion<cr>g@
nnoremap <silent> <Plug>(SubversiveSubstituteWordRange) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 1, 0, 1, 0)<cr>:set opfunc=subversive#lineRangeMotion#selectTextMotion<cr>g@iw
xnoremap <silent> <Plug>(SubversiveSubstituteRangeDelete) :<bar>call subversive#lineRangeMotion#preSubstitute("_", 1, 0, 0, 0)<cr><esc>:call subversive#lineRangeMotion#selectTextMotion('char', 1)<cr>
nnoremap <silent> <Plug>(SubversiveSubstituteRangeDelete) :<bar>call subversive#lineRangeMotion#preSubstitute("_", 1, 0, 0, 0)<cr>:set opfunc=subversive#lineRangeMotion#selectTextMotion<cr>g@
xnoremap <silent> <Plug>(SubversiveSubstituteRange) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 1, 0, 0, 0)<cr><esc>:call subversive#lineRangeMotion#selectTextMotion('char', 1)<cr>
nnoremap <silent> <Plug>(SubversiveSubstituteRange) :<bar>call subversive#lineRangeMotion#preSubstitute(v:register, 1, 0, 0, 0)<cr>:set opfunc=subversive#lineRangeMotion#selectTextMotion<cr>g@
nnoremap <silent> <Plug>(SubversiveSubstituteLine) :<bar>call subversive#singleMotion#substituteLineSetup(v:register, v:count)<cr>:set opfunc=subversive#singleMotion#substituteLine<cr>g@l
nnoremap <silent> <Plug>(SubversiveSubstituteToEndOfLine) :<bar>call subversive#singleMotion#substituteToEndOfLineSetup(v:register, v:count)<cr>:set opfunc=subversive#singleMotion#substituteToEndOfLine<cr>g@l
xnoremap <silent> <Plug>(SubversiveSubstitute) :<bar>call subversive#singleMotion#preSubstitute(v:register, 1, visualmode())<cr><esc>`<bar><:set opfunc=subversive#singleMotion#substituteMotion<cr>g@`>
nnoremap <silent> <Plug>(SubversiveSubstitute) :<bar>call subversive#singleMotion#preSubstitute(v:register, 0, '')<cr>:set opfunc=subversive#singleMotion#substituteMotion<cr>g@
nnoremap <silent> <Plug>MarkSearchGroup9Prev :<bar>if ! mark#SearchGroupMark(9, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup9Next :<bar>if ! mark#SearchGroupMark(9, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup8Prev :<bar>if ! mark#SearchGroupMark(8, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup8Next :<bar>if ! mark#SearchGroupMark(8, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup7Prev :<bar>if ! mark#SearchGroupMark(7, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup7Next :<bar>if ! mark#SearchGroupMark(7, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup6Prev :<bar>if ! mark#SearchGroupMark(6, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup6Next :<bar>if ! mark#SearchGroupMark(6, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup5Prev :<bar>if ! mark#SearchGroupMark(5, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup5Next :<bar>if ! mark#SearchGroupMark(5, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup4Prev :<bar>if ! mark#SearchGroupMark(4, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup4Next :<bar>if ! mark#SearchGroupMark(4, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup3Prev :<bar>if ! mark#SearchGroupMark(3, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup3Next :<bar>if ! mark#SearchGroupMark(3, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup2Prev :<bar>if ! mark#SearchGroupMark(2, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup2Next :<bar>if ! mark#SearchGroupMark(2, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup1Prev :<bar>if ! mark#SearchGroupMark(1, v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup1Next :<bar>if ! mark#SearchGroupMark(1, v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadePrevNoStop :<bar>if ! mark#cascade#Next(v:count1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadeNextNoStop :<bar>if ! mark#cascade#Next(v:count1, 0, 0)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadeStartNoStop :<bar>if ! mark#cascade#Start(v:count, 0)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"   <bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadePrevWithStop :<bar>if ! mark#cascade#Next(v:count1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadeNextWithStop :<bar>if ! mark#cascade#Next(v:count1, 1, 0)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadeStartWithStop :<bar>if ! mark#cascade#Start(v:count, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"   <bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchUsedGroupPrev :<bar>if ! mark#SearchNextGroup(v:count1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchUsedGroupNext :<bar>if ! mark#SearchNextGroup(v:count1, 0)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroupPrev :<bar>if ! mark#SearchGroupMark(v:count, 1, 1, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroupNext :<bar>if ! mark#SearchGroupMark(v:count, 1, 0, 1)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchAnyOrDefaultPrev :<bar>if mark#IsEnabled() && mark#GetCount() > 0<bar>|if ! mark#SearchAnyMark(1)<bar>|echoerr ingo#err#Get()<bar>|endif<bar>|else<bar>|execute 'normal!' v:count1 . 'Nzv'<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchAnyOrDefaultNext :<bar>if mark#IsEnabled() && mark#GetCount() > 0<bar>|if ! mark#SearchAnyMark(0)<bar>|echoerr ingo#err#Get()<bar>|endif<bar>|else<bar>|execute 'normal!' v:count1 . 'nzv'<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchOrAnyPrev :<bar>if ! mark#SearchNext(1,'mark#SearchAnyMark')<bar>|execute 'normal!' v:count1 . '#zv'<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchOrAnyNext :<bar>if ! mark#SearchNext(0,'mark#SearchAnyMark')<bar>|execute 'normal!' v:count1 . '*zv'<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchOrCurPrev :<bar>if ! mark#SearchNext(1,'mark#SearchCurrentMark')<bar>|execute 'normal!' v:count1 . '#zv'<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchOrCurNext :<bar>if ! mark#SearchNext(0,'mark#SearchCurrentMark')<bar>|execute 'normal!' v:count1 . '*zv'<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchPrev :<bar>if ! mark#SearchNext(1)<bar>|execute 'normal!' v:count1 . '#zv'<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchNext :<bar>if ! mark#SearchNext(0)<bar>|execute 'normal!' v:count1 . '*zv'<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchAnyPrev :<bar>if ! mark#SearchAnyMark(1)<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchAnyNext :<bar>if ! mark#SearchAnyMark(0)<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCurrentPrev :<bar>if ! mark#SearchCurrentMark(1)<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCurrentNext :<bar>if ! mark#SearchCurrentMark(0)<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkToggle :<bar>call mark#Toggle()<cr>
nnoremap <silent> <Plug>MarkConfirmAllClear :<bar>if confirm('Really delete all marks? This cannot be undone.', "&Yes\n&No") == 1<bar>|call mark#ClearAll()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkAllClear :<bar>call mark#ClearAll()<cr>
nnoremap <silent> <Plug>MarkClear :<bar>if ! mark#Clear(v:count)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
vnoremap <silent> <Plug>MarkRegex :<bar>if ! mark#MarkRegex(v:count, mark#GetVisualSelectionAsRegexp())<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
nnoremap <silent> <Plug>MarkRegex :<bar>if ! mark#MarkRegex(v:count, '')<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|echoerr ingo#err#Get()<bar>|endif<cr>
vnoremap <silent> <Plug>MarkIWhiteSet :<bar>if ! mark#DoMark(v:count, mark#GetVisualSelectionAsLiteralWhitespaceIndifferentPattern())[0]<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|endif<cr>
vnoremap <silent> <Plug>MarkSet :<bar>if ! mark#DoMark(v:count, mark#GetVisualSelectionAsLiteralPattern())[0]<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|endif<cr>
nnoremap <silent> <Plug>MarkSet :<bar>if ! mark#MarkCurrentWord(v:count)<bar>|execute "normal! \<bar><C-\>\<bar><C-n>\<bar><Esc>"<bar>|endif<cr>
map <silent> <Plug>(easymotion-prefix)N <Plug>(easymotion-N)
map <silent> <Plug>(easymotion-prefix)n <Plug>(easymotion-n)
map <silent> <Plug>(easymotion-prefix)k <Plug>(easymotion-k)
map <silent> <Plug>(easymotion-prefix)j <Plug>(easymotion-j)
map <silent> <Plug>(easymotion-prefix)gE <Plug>(easymotion-gE)
map <silent> <Plug>(easymotion-prefix)ge <Plug>(easymotion-ge)
map <silent> <Plug>(easymotion-prefix)E <Plug>(easymotion-E)
map <silent> <Plug>(easymotion-prefix)e <Plug>(easymotion-e)
map <silent> <Plug>(easymotion-prefix)B <Plug>(easymotion-B)
map <silent> <Plug>(easymotion-prefix)b <Plug>(easymotion-b)
map <silent> <Plug>(easymotion-prefix)W <Plug>(easymotion-W)
map <silent> <Plug>(easymotion-prefix)w <Plug>(easymotion-w)
map <silent> <Plug>(easymotion-prefix)T <Plug>(easymotion-T)
map <silent> <Plug>(easymotion-prefix)t <Plug>(easymotion-t)
map <silent> <Plug>(easymotion-prefix)s <Plug>(easymotion-s)
map <silent> <Plug>(easymotion-prefix)F <Plug>(easymotion-F)
map <silent> <Plug>(easymotion-prefix)f <Plug>(easymotion-f)
xnoremap <silent> <Plug>(easymotion-activate) :<bar>call EasyMotion#activate(1)<cr>
nnoremap <silent> <Plug>(easymotion-activate) :<bar>call EasyMotion#activate(0)<cr>
snoremap <silent> <Plug>(easymotion-activate) :<bar>call EasyMotion#activate(0)<cr>
onoremap <silent> <Plug>(easymotion-activate) :<bar>call EasyMotion#activate(0)<cr>
noremap <silent> <Plug>(easymotion-dotrepeat) :<bar>call EasyMotion#DotRepeat()<cr>
xnoremap <silent> <Plug>(easymotion-repeat) <esc>:<bar>call EasyMotion#Repeat(1)<cr>
nnoremap <silent> <Plug>(easymotion-repeat) :<bar>call EasyMotion#Repeat(0)<cr>
snoremap <silent> <Plug>(easymotion-repeat) :<bar>call EasyMotion#Repeat(0)<cr>
onoremap <silent> <Plug>(easymotion-repeat) :<bar>call EasyMotion#Repeat(0)<cr>
xnoremap <silent> <Plug>(easymotion-prev) :<bar>call EasyMotion#NextPrevious(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-prev) :<bar>call EasyMotion#NextPrevious(0,1)<cr>
snoremap <silent> <Plug>(easymotion-prev) :<bar>call EasyMotion#NextPrevious(0,1)<cr>
onoremap <silent> <Plug>(easymotion-prev) :<bar>call EasyMotion#NextPrevious(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-next) :<bar>call EasyMotion#NextPrevious(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-next) :<bar>call EasyMotion#NextPrevious(0,0)<cr>
snoremap <silent> <Plug>(easymotion-next) :<bar>call EasyMotion#NextPrevious(0,0)<cr>
onoremap <silent> <Plug>(easymotion-next) :<bar>call EasyMotion#NextPrevious(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-wl) <esc>:<bar>call EasyMotion#WBL(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-wl) :<bar>call EasyMotion#WBL(0,0)<cr>
snoremap <silent> <Plug>(easymotion-wl) :<bar>call EasyMotion#WBL(0,0)<cr>
onoremap <silent> <Plug>(easymotion-wl) :<bar>call EasyMotion#WBL(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-lineforward) <esc>:<bar>call EasyMotion#LineAnywhere(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-lineforward) :<bar>call EasyMotion#LineAnywhere(0,0)<cr>
snoremap <silent> <Plug>(easymotion-lineforward) :<bar>call EasyMotion#LineAnywhere(0,0)<cr>
onoremap <silent> <Plug>(easymotion-lineforward) :<bar>call EasyMotion#LineAnywhere(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-lineanywhere) <esc>:<bar>call EasyMotion#LineAnywhere(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-lineanywhere) :<bar>call EasyMotion#LineAnywhere(0,2)<cr>
snoremap <silent> <Plug>(easymotion-lineanywhere) :<bar>call EasyMotion#LineAnywhere(0,2)<cr>
onoremap <silent> <Plug>(easymotion-lineanywhere) :<bar>call EasyMotion#LineAnywhere(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-bd-wl) <esc>:<bar>call EasyMotion#WBL(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-wl) :<bar>call EasyMotion#WBL(0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-wl) :<bar>call EasyMotion#WBL(0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-wl) :<bar>call EasyMotion#WBL(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-linebackward) <esc>:<bar>call EasyMotion#LineAnywhere(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-linebackward) :<bar>call EasyMotion#LineAnywhere(0,1)<cr>
snoremap <silent> <Plug>(easymotion-linebackward) :<bar>call EasyMotion#LineAnywhere(0,1)<cr>
onoremap <silent> <Plug>(easymotion-linebackward) :<bar>call EasyMotion#LineAnywhere(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-bl) <esc>:<bar>call EasyMotion#WBL(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-bl) :<bar>call EasyMotion#WBL(0,1)<cr>
snoremap <silent> <Plug>(easymotion-bl) :<bar>call EasyMotion#WBL(0,1)<cr>
onoremap <silent> <Plug>(easymotion-bl) :<bar>call EasyMotion#WBL(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-el) <esc>:<bar>call EasyMotion#EL(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-el) :<bar>call EasyMotion#EL(0,0)<cr>
snoremap <silent> <Plug>(easymotion-el) :<bar>call EasyMotion#EL(0,0)<cr>
onoremap <silent> <Plug>(easymotion-el) :<bar>call EasyMotion#EL(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-gel) <esc>:<bar>call EasyMotion#EL(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-gel) :<bar>call EasyMotion#EL(0,1)<cr>
snoremap <silent> <Plug>(easymotion-gel) :<bar>call EasyMotion#EL(0,1)<cr>
onoremap <silent> <Plug>(easymotion-gel) :<bar>call EasyMotion#EL(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-bd-el) <esc>:<bar>call EasyMotion#EL(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-el) :<bar>call EasyMotion#EL(0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-el) :<bar>call EasyMotion#EL(0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-el) :<bar>call EasyMotion#EL(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-jumptoanywhere) <esc>:<bar>call EasyMotion#JumpToAnywhere(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-jumptoanywhere) :<bar>call EasyMotion#JumpToAnywhere(0,2)<cr>
snoremap <silent> <Plug>(easymotion-jumptoanywhere) :<bar>call EasyMotion#JumpToAnywhere(0,2)<cr>
onoremap <silent> <Plug>(easymotion-jumptoanywhere) :<bar>call EasyMotion#JumpToAnywhere(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-vim-n) <esc>:<bar>call EasyMotion#Search(1,0,1)<cr>
nnoremap <silent> <Plug>(easymotion-vim-n) :<bar>call EasyMotion#Search(0,0,1)<cr>
snoremap <silent> <Plug>(easymotion-vim-n) :<bar>call EasyMotion#Search(0,0,1)<cr>
onoremap <silent> <Plug>(easymotion-vim-n) :<bar>call EasyMotion#Search(0,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-n) <esc>:<bar>call EasyMotion#Search(1,0,0)<cr>
nnoremap <silent> <Plug>(easymotion-n) :<bar>call EasyMotion#Search(0,0,0)<cr>
snoremap <silent> <Plug>(easymotion-n) :<bar>call EasyMotion#Search(0,0,0)<cr>
onoremap <silent> <Plug>(easymotion-n) :<bar>call EasyMotion#Search(0,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-n) <esc>:<bar>call EasyMotion#Search(1,2,0)<cr>
nnoremap <silent> <Plug>(easymotion-bd-n) :<bar>call EasyMotion#Search(0,2,0)<cr>
snoremap <silent> <Plug>(easymotion-bd-n) :<bar>call EasyMotion#Search(0,2,0)<cr>
onoremap <silent> <Plug>(easymotion-bd-n) :<bar>call EasyMotion#Search(0,2,0)<cr>
xnoremap <silent> <Plug>(easymotion-vim-N) <esc>:<bar>call EasyMotion#Search(1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-vim-N) :<bar>call EasyMotion#Search(0,1,1)<cr>
snoremap <silent> <Plug>(easymotion-vim-N) :<bar>call EasyMotion#Search(0,1,1)<cr>
onoremap <silent> <Plug>(easymotion-vim-N) :<bar>call EasyMotion#Search(0,1,1)<cr>
xnoremap <silent> <Plug>(easymotion-N) <esc>:<bar>call EasyMotion#Search(1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-N) :<bar>call EasyMotion#Search(0,1,0)<cr>
snoremap <silent> <Plug>(easymotion-N) :<bar>call EasyMotion#Search(0,1,0)<cr>
onoremap <silent> <Plug>(easymotion-N) :<bar>call EasyMotion#Search(0,1,0)<cr>
xnoremap <silent> <Plug>(easymotion-eol-j) <esc>:<bar>call EasyMotion#Eol(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-eol-j) :<bar>call EasyMotion#Eol(0,0)<cr>
snoremap <silent> <Plug>(easymotion-eol-j) :<bar>call EasyMotion#Eol(0,0)<cr>
onoremap <silent> <Plug>(easymotion-eol-j) :<bar>call EasyMotion#Eol(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-sol-k) <esc>:<bar>call EasyMotion#Sol(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-sol-k) :<bar>call EasyMotion#Sol(0,1)<cr>
snoremap <silent> <Plug>(easymotion-sol-k) :<bar>call EasyMotion#Sol(0,1)<cr>
onoremap <silent> <Plug>(easymotion-sol-k) :<bar>call EasyMotion#Sol(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-sol-j) <esc>:<bar>call EasyMotion#Sol(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-sol-j) :<bar>call EasyMotion#Sol(0,0)<cr>
snoremap <silent> <Plug>(easymotion-sol-j) :<bar>call EasyMotion#Sol(0,0)<cr>
onoremap <silent> <Plug>(easymotion-sol-j) :<bar>call EasyMotion#Sol(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-k) <esc>:<bar>call EasyMotion#JK(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-k) :<bar>call EasyMotion#JK(0,1)<cr>
snoremap <silent> <Plug>(easymotion-k) :<bar>call EasyMotion#JK(0,1)<cr>
onoremap <silent> <Plug>(easymotion-k) :<bar>call EasyMotion#JK(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-j) <esc>:<bar>call EasyMotion#JK(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-j) :<bar>call EasyMotion#JK(0,0)<cr>
snoremap <silent> <Plug>(easymotion-j) :<bar>call EasyMotion#JK(0,0)<cr>
onoremap <silent> <Plug>(easymotion-j) :<bar>call EasyMotion#JK(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-jk) <esc>:<bar>call EasyMotion#JK(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-jk) :<bar>call EasyMotion#JK(0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-jk) :<bar>call EasyMotion#JK(0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-jk) :<bar>call EasyMotion#JK(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-eol-bd-jk) <esc>:<bar>call EasyMotion#Eol(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-eol-bd-jk) :<bar>call EasyMotion#Eol(0,2)<cr>
snoremap <silent> <Plug>(easymotion-eol-bd-jk) :<bar>call EasyMotion#Eol(0,2)<cr>
onoremap <silent> <Plug>(easymotion-eol-bd-jk) :<bar>call EasyMotion#Eol(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-sol-bd-jk) <esc>:<bar>call EasyMotion#Sol(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-sol-bd-jk) :<bar>call EasyMotion#Sol(0,2)<cr>
snoremap <silent> <Plug>(easymotion-sol-bd-jk) :<bar>call EasyMotion#Sol(0,2)<cr>
onoremap <silent> <Plug>(easymotion-sol-bd-jk) :<bar>call EasyMotion#Sol(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-eol-k) <esc>:<bar>call EasyMotion#Eol(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-eol-k) :<bar>call EasyMotion#Eol(0,1)<cr>
snoremap <silent> <Plug>(easymotion-eol-k) :<bar>call EasyMotion#Eol(0,1)<cr>
onoremap <silent> <Plug>(easymotion-eol-k) :<bar>call EasyMotion#Eol(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-iskeyword-ge) <esc>:<bar>call EasyMotion#EK(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-iskeyword-ge) :<bar>call EasyMotion#EK(0,1)<cr>
snoremap <silent> <Plug>(easymotion-iskeyword-ge) :<bar>call EasyMotion#EK(0,1)<cr>
onoremap <silent> <Plug>(easymotion-iskeyword-ge) :<bar>call EasyMotion#EK(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-w) <esc>:<bar>call EasyMotion#WB(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-w) :<bar>call EasyMotion#WB(0,0)<cr>
snoremap <silent> <Plug>(easymotion-w) :<bar>call EasyMotion#WB(0,0)<cr>
onoremap <silent> <Plug>(easymotion-w) :<bar>call EasyMotion#WB(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-W) <esc>:<bar>call EasyMotion#WBW(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-W) :<bar>call EasyMotion#WBW(0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-W) :<bar>call EasyMotion#WBW(0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-W) :<bar>call EasyMotion#WBW(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-iskeyword-w) <esc>:<bar>call EasyMotion#WBK(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-iskeyword-w) :<bar>call EasyMotion#WBK(0,0)<cr>
snoremap <silent> <Plug>(easymotion-iskeyword-w) :<bar>call EasyMotion#WBK(0,0)<cr>
onoremap <silent> <Plug>(easymotion-iskeyword-w) :<bar>call EasyMotion#WBK(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-gE) <esc>:<bar>call EasyMotion#EW(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-gE) :<bar>call EasyMotion#EW(0,1)<cr>
snoremap <silent> <Plug>(easymotion-gE) :<bar>call EasyMotion#EW(0,1)<cr>
onoremap <silent> <Plug>(easymotion-gE) :<bar>call EasyMotion#EW(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-e) <esc>:<bar>call EasyMotion#E(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-e) :<bar>call EasyMotion#E(0,0)<cr>
snoremap <silent> <Plug>(easymotion-e) :<bar>call EasyMotion#E(0,0)<cr>
onoremap <silent> <Plug>(easymotion-e) :<bar>call EasyMotion#E(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-E) <esc>:<bar>call EasyMotion#EW(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-E) :<bar>call EasyMotion#EW(0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-E) :<bar>call EasyMotion#EW(0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-E) :<bar>call EasyMotion#EW(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-iskeyword-e) <esc>:<bar>call EasyMotion#EK(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-iskeyword-e) :<bar>call EasyMotion#EK(0,0)<cr>
snoremap <silent> <Plug>(easymotion-iskeyword-e) :<bar>call EasyMotion#EK(0,0)<cr>
onoremap <silent> <Plug>(easymotion-iskeyword-e) :<bar>call EasyMotion#EK(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-b) <esc>:<bar>call EasyMotion#WB(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-b) :<bar>call EasyMotion#WB(0,1)<cr>
snoremap <silent> <Plug>(easymotion-b) :<bar>call EasyMotion#WB(0,1)<cr>
onoremap <silent> <Plug>(easymotion-b) :<bar>call EasyMotion#WB(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-iskeyword-b) <esc>:<bar>call EasyMotion#WBK(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-iskeyword-b) :<bar>call EasyMotion#WBK(0,1)<cr>
snoremap <silent> <Plug>(easymotion-iskeyword-b) :<bar>call EasyMotion#WBK(0,1)<cr>
onoremap <silent> <Plug>(easymotion-iskeyword-b) :<bar>call EasyMotion#WBK(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) <esc>:<bar>call EasyMotion#WBK(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :<bar>call EasyMotion#WBK(0,2)<cr>
snoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :<bar>call EasyMotion#WBK(0,2)<cr>
onoremap <silent> <Plug>(easymotion-iskeyword-bd-w) :<bar>call EasyMotion#WBK(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-W) <esc>:<bar>call EasyMotion#WBW(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-W) :<bar>call EasyMotion#WBW(0,0)<cr>
snoremap <silent> <Plug>(easymotion-W) :<bar>call EasyMotion#WBW(0,0)<cr>
onoremap <silent> <Plug>(easymotion-W) :<bar>call EasyMotion#WBW(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-w) <esc>:<bar>call EasyMotion#WB(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-w) :<bar>call EasyMotion#WB(0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-w) :<bar>call EasyMotion#WB(0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-w) :<bar>call EasyMotion#WB(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) <esc>:<bar>call EasyMotion#EK(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :<bar>call EasyMotion#EK(0,2)<cr>
snoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :<bar>call EasyMotion#EK(0,2)<cr>
onoremap <silent> <Plug>(easymotion-iskeyword-bd-e) :<bar>call EasyMotion#EK(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-ge) <esc>:<bar>call EasyMotion#E(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-ge) :<bar>call EasyMotion#E(0,1)<cr>
snoremap <silent> <Plug>(easymotion-ge) :<bar>call EasyMotion#E(0,1)<cr>
onoremap <silent> <Plug>(easymotion-ge) :<bar>call EasyMotion#E(0,1)<cr>
xnoremap <silent> <Plug>(easymotion-E) <esc>:<bar>call EasyMotion#EW(1,0)<cr>
nnoremap <silent> <Plug>(easymotion-E) :<bar>call EasyMotion#EW(0,0)<cr>
snoremap <silent> <Plug>(easymotion-E) :<bar>call EasyMotion#EW(0,0)<cr>
onoremap <silent> <Plug>(easymotion-E) :<bar>call EasyMotion#EW(0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-e) <esc>:<bar>call EasyMotion#E(1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-e) :<bar>call EasyMotion#E(0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-e) :<bar>call EasyMotion#E(0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-e) :<bar>call EasyMotion#E(0,2)<cr>
xnoremap <silent> <Plug>(easymotion-B) <esc>:<bar>call EasyMotion#WBW(1,1)<cr>
nnoremap <silent> <Plug>(easymotion-B) :<bar>call EasyMotion#WBW(0,1)<cr>
snoremap <silent> <Plug>(easymotion-B) :<bar>call EasyMotion#WBW(0,1)<cr>
onoremap <silent> <Plug>(easymotion-B) :<bar>call EasyMotion#WBW(0,1)<cr>
nnoremap <silent> <Plug>(easymotion-overwin-w) :<bar>call EasyMotion#overwin#w()<cr>
nnoremap <silent> <Plug>(easymotion-overwin-line) :<bar>call EasyMotion#overwin#line()<cr>
nnoremap <silent> <Plug>(easymotion-overwin-f2) :<bar>call EasyMotion#OverwinF(2)<cr>
nnoremap <silent> <Plug>(easymotion-overwin-f) :<bar>call EasyMotion#OverwinF(1)<cr>
xnoremap <silent> <Plug>(easymotion-Tln) <esc>:<bar>call EasyMotion#TL(-1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-Tln) :<bar>call EasyMotion#TL(-1,0,1)<cr>
snoremap <silent> <Plug>(easymotion-Tln) :<bar>call EasyMotion#TL(-1,0,1)<cr>
onoremap <silent> <Plug>(easymotion-Tln) :<bar>call EasyMotion#TL(-1,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-t2) <esc>:<bar>call EasyMotion#T(2,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-t2) :<bar>call EasyMotion#T(2,0,0)<cr>
snoremap <silent> <Plug>(easymotion-t2) :<bar>call EasyMotion#T(2,0,0)<cr>
onoremap <silent> <Plug>(easymotion-t2) :<bar>call EasyMotion#T(2,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-t) <esc>:<bar>call EasyMotion#T(1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-t) :<bar>call EasyMotion#T(1,0,0)<cr>
snoremap <silent> <Plug>(easymotion-t) :<bar>call EasyMotion#T(1,0,0)<cr>
onoremap <silent> <Plug>(easymotion-t) :<bar>call EasyMotion#T(1,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-s) <esc>:<bar>call EasyMotion#S(1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-s) :<bar>call EasyMotion#S(1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-s) :<bar>call EasyMotion#S(1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-s) :<bar>call EasyMotion#S(1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-tn) <esc>:<bar>call EasyMotion#T(-1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-tn) :<bar>call EasyMotion#T(-1,0,0)<cr>
snoremap <silent> <Plug>(easymotion-tn) :<bar>call EasyMotion#T(-1,0,0)<cr>
onoremap <silent> <Plug>(easymotion-tn) :<bar>call EasyMotion#T(-1,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-t2) <esc>:<bar>call EasyMotion#T(2,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-t2) :<bar>call EasyMotion#T(2,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-t2) :<bar>call EasyMotion#T(2,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-t2) :<bar>call EasyMotion#T(2,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-tl) <esc>:<bar>call EasyMotion#TL(1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-tl) :<bar>call EasyMotion#TL(1,0,0)<cr>
snoremap <silent> <Plug>(easymotion-tl) :<bar>call EasyMotion#TL(1,0,0)<cr>
onoremap <silent> <Plug>(easymotion-tl) :<bar>call EasyMotion#TL(1,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-tn) <esc>:<bar>call EasyMotion#T(-1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-tn) :<bar>call EasyMotion#T(-1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-tn) :<bar>call EasyMotion#T(-1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-tn) :<bar>call EasyMotion#T(-1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-fn) <esc>:<bar>call EasyMotion#S(-1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-fn) :<bar>call EasyMotion#S(-1,0,0)<cr>
snoremap <silent> <Plug>(easymotion-fn) :<bar>call EasyMotion#S(-1,0,0)<cr>
onoremap <silent> <Plug>(easymotion-fn) :<bar>call EasyMotion#S(-1,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-tl) <esc>:<bar>call EasyMotion#TL(1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-tl) :<bar>call EasyMotion#TL(1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-tl) :<bar>call EasyMotion#TL(1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-tl) :<bar>call EasyMotion#TL(1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-fl) <esc>:<bar>call EasyMotion#SL(1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-fl) :<bar>call EasyMotion#SL(1,0,0)<cr>
snoremap <silent> <Plug>(easymotion-fl) :<bar>call EasyMotion#SL(1,0,0)<cr>
onoremap <silent> <Plug>(easymotion-fl) :<bar>call EasyMotion#SL(1,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-tl2) <esc>:<bar>call EasyMotion#TL(2,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-tl2) :<bar>call EasyMotion#TL(2,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-tl2) :<bar>call EasyMotion#TL(2,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-tl2) :<bar>call EasyMotion#TL(2,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-bd-fn) <esc>:<bar>call EasyMotion#S(-1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-fn) :<bar>call EasyMotion#S(-1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-fn) :<bar>call EasyMotion#S(-1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-fn) :<bar>call EasyMotion#S(-1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-f) <esc>:<bar>call EasyMotion#S(1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-f) :<bar>call EasyMotion#S(1,0,0)<cr>
snoremap <silent> <Plug>(easymotion-f) :<bar>call EasyMotion#S(1,0,0)<cr>
onoremap <silent> <Plug>(easymotion-f) :<bar>call EasyMotion#S(1,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-fl) <esc>:<bar>call EasyMotion#SL(1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-fl) :<bar>call EasyMotion#SL(1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-fl) :<bar>call EasyMotion#SL(1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-fl) :<bar>call EasyMotion#SL(1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-Fl2) <esc>:<bar>call EasyMotion#SL(2,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-Fl2) :<bar>call EasyMotion#SL(2,0,1)<cr>
snoremap <silent> <Plug>(easymotion-Fl2) :<bar>call EasyMotion#SL(2,0,1)<cr>
onoremap <silent> <Plug>(easymotion-Fl2) :<bar>call EasyMotion#SL(2,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-tl2) <esc>:<bar>call EasyMotion#TL(2,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-tl2) :<bar>call EasyMotion#TL(2,0,0)<cr>
snoremap <silent> <Plug>(easymotion-tl2) :<bar>call EasyMotion#TL(2,0,0)<cr>
onoremap <silent> <Plug>(easymotion-tl2) :<bar>call EasyMotion#TL(2,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-f2) <esc>:<bar>call EasyMotion#S(2,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-f2) :<bar>call EasyMotion#S(2,0,0)<cr>
snoremap <silent> <Plug>(easymotion-f2) :<bar>call EasyMotion#S(2,0,0)<cr>
onoremap <silent> <Plug>(easymotion-f2) :<bar>call EasyMotion#S(2,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-Fln) <esc>:<bar>call EasyMotion#SL(-1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-Fln) :<bar>call EasyMotion#SL(-1,0,1)<cr>
snoremap <silent> <Plug>(easymotion-Fln) :<bar>call EasyMotion#SL(-1,0,1)<cr>
onoremap <silent> <Plug>(easymotion-Fln) :<bar>call EasyMotion#SL(-1,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-sln) <esc>:<bar>call EasyMotion#SL(-1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-sln) :<bar>call EasyMotion#SL(-1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-sln) :<bar>call EasyMotion#SL(-1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-sln) :<bar>call EasyMotion#SL(-1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-tln) <esc>:<bar>call EasyMotion#TL(-1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-tln) :<bar>call EasyMotion#TL(-1,0,0)<cr>
snoremap <silent> <Plug>(easymotion-tln) :<bar>call EasyMotion#TL(-1,0,0)<cr>
onoremap <silent> <Plug>(easymotion-tln) :<bar>call EasyMotion#TL(-1,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-fl2) <esc>:<bar>call EasyMotion#SL(2,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-fl2) :<bar>call EasyMotion#SL(2,0,0)<cr>
snoremap <silent> <Plug>(easymotion-fl2) :<bar>call EasyMotion#SL(2,0,0)<cr>
onoremap <silent> <Plug>(easymotion-fl2) :<bar>call EasyMotion#SL(2,0,0)<cr>
xnoremap <silent> <Plug>(easymotion-bd-fl2) <esc>:<bar>call EasyMotion#SL(2,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-fl2) :<bar>call EasyMotion#SL(2,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-fl2) :<bar>call EasyMotion#SL(2,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-fl2) :<bar>call EasyMotion#SL(2,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-T2) <esc>:<bar>call EasyMotion#T(2,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-T2) :<bar>call EasyMotion#T(2,0,1)<cr>
snoremap <silent> <Plug>(easymotion-T2) :<bar>call EasyMotion#T(2,0,1)<cr>
onoremap <silent> <Plug>(easymotion-T2) :<bar>call EasyMotion#T(2,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-bd-tln) <esc>:<bar>call EasyMotion#TL(-1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-tln) :<bar>call EasyMotion#TL(-1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-tln) :<bar>call EasyMotion#TL(-1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-tln) :<bar>call EasyMotion#TL(-1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-T) <esc>:<bar>call EasyMotion#T(1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-T) :<bar>call EasyMotion#T(1,0,1)<cr>
snoremap <silent> <Plug>(easymotion-T) :<bar>call EasyMotion#T(1,0,1)<cr>
onoremap <silent> <Plug>(easymotion-T) :<bar>call EasyMotion#T(1,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-bd-t) <esc>:<bar>call EasyMotion#T(1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-t) :<bar>call EasyMotion#T(1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-t) :<bar>call EasyMotion#T(1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-t) :<bar>call EasyMotion#T(1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-Tn) <esc>:<bar>call EasyMotion#T(-1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-Tn) :<bar>call EasyMotion#T(-1,0,1)<cr>
snoremap <silent> <Plug>(easymotion-Tn) :<bar>call EasyMotion#T(-1,0,1)<cr>
onoremap <silent> <Plug>(easymotion-Tn) :<bar>call EasyMotion#T(-1,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-s2) <esc>:<bar>call EasyMotion#S(2,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-s2) :<bar>call EasyMotion#S(2,0,2)<cr>
snoremap <silent> <Plug>(easymotion-s2) :<bar>call EasyMotion#S(2,0,2)<cr>
onoremap <silent> <Plug>(easymotion-s2) :<bar>call EasyMotion#S(2,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-Tl) <esc>:<bar>call EasyMotion#TL(1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-Tl) :<bar>call EasyMotion#TL(1,0,1)<cr>
snoremap <silent> <Plug>(easymotion-Tl) :<bar>call EasyMotion#TL(1,0,1)<cr>
onoremap <silent> <Plug>(easymotion-Tl) :<bar>call EasyMotion#TL(1,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-sn) <esc>:<bar>call EasyMotion#S(-1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-sn) :<bar>call EasyMotion#S(-1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-sn) :<bar>call EasyMotion#S(-1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-sn) :<bar>call EasyMotion#S(-1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-Fn) <esc>:<bar>call EasyMotion#S(-1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-Fn) :<bar>call EasyMotion#S(-1,0,1)<cr>
snoremap <silent> <Plug>(easymotion-Fn) :<bar>call EasyMotion#S(-1,0,1)<cr>
onoremap <silent> <Plug>(easymotion-Fn) :<bar>call EasyMotion#S(-1,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-sl) <esc>:<bar>call EasyMotion#SL(1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-sl) :<bar>call EasyMotion#SL(1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-sl) :<bar>call EasyMotion#SL(1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-sl) :<bar>call EasyMotion#SL(1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-Fl) <esc>:<bar>call EasyMotion#SL(1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-Fl) :<bar>call EasyMotion#SL(1,0,1)<cr>
snoremap <silent> <Plug>(easymotion-Fl) :<bar>call EasyMotion#SL(1,0,1)<cr>
onoremap <silent> <Plug>(easymotion-Fl) :<bar>call EasyMotion#SL(1,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-sl2) <esc>:<bar>call EasyMotion#SL(2,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-sl2) :<bar>call EasyMotion#SL(2,0,2)<cr>
snoremap <silent> <Plug>(easymotion-sl2) :<bar>call EasyMotion#SL(2,0,2)<cr>
onoremap <silent> <Plug>(easymotion-sl2) :<bar>call EasyMotion#SL(2,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-bd-fln) <esc>:<bar>call EasyMotion#SL(-1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-fln) :<bar>call EasyMotion#SL(-1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-fln) :<bar>call EasyMotion#SL(-1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-fln) :<bar>call EasyMotion#SL(-1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-F) <esc>:<bar>call EasyMotion#S(1,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-F) :<bar>call EasyMotion#S(1,0,1)<cr>
snoremap <silent> <Plug>(easymotion-F) :<bar>call EasyMotion#S(1,0,1)<cr>
onoremap <silent> <Plug>(easymotion-F) :<bar>call EasyMotion#S(1,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-bd-f) <esc>:<bar>call EasyMotion#S(1,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-f) :<bar>call EasyMotion#S(1,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-f) :<bar>call EasyMotion#S(1,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-f) :<bar>call EasyMotion#S(1,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-F2) <esc>:<bar>call EasyMotion#S(2,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-F2) :<bar>call EasyMotion#S(2,0,1)<cr>
snoremap <silent> <Plug>(easymotion-F2) :<bar>call EasyMotion#S(2,0,1)<cr>
onoremap <silent> <Plug>(easymotion-F2) :<bar>call EasyMotion#S(2,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-bd-f2) <esc>:<bar>call EasyMotion#S(2,1,2)<cr>
nnoremap <silent> <Plug>(easymotion-bd-f2) :<bar>call EasyMotion#S(2,0,2)<cr>
snoremap <silent> <Plug>(easymotion-bd-f2) :<bar>call EasyMotion#S(2,0,2)<cr>
onoremap <silent> <Plug>(easymotion-bd-f2) :<bar>call EasyMotion#S(2,0,2)<cr>
xnoremap <silent> <Plug>(easymotion-Tl2) <esc>:<bar>call EasyMotion#TL(2,1,1)<cr>
nnoremap <silent> <Plug>(easymotion-Tl2) :<bar>call EasyMotion#TL(2,0,1)<cr>
snoremap <silent> <Plug>(easymotion-Tl2) :<bar>call EasyMotion#TL(2,0,1)<cr>
onoremap <silent> <Plug>(easymotion-Tl2) :<bar>call EasyMotion#TL(2,0,1)<cr>
xnoremap <silent> <Plug>(easymotion-fln) <esc>:<bar>call EasyMotion#SL(-1,1,0)<cr>
nnoremap <silent> <Plug>(easymotion-fln) :<bar>call EasyMotion#SL(-1,0,0)<cr>
snoremap <silent> <Plug>(easymotion-fln) :<bar>call EasyMotion#SL(-1,0,0)<cr>
onoremap <silent> <Plug>(easymotion-fln) :<bar>call EasyMotion#SL(-1,0,0)<cr>
noremap <silent> <expr> <Plug>(asterisk-gz#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-z#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 1})
noremap <silent> <expr> <Plug>(asterisk-g#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 1})
noremap <silent> <expr> <Plug>(asterisk-gz*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-z*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 1})
noremap <silent> <expr> <Plug>(asterisk-g*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 1})
xnoremap <silent> <Plug>(QuickScopeToggle) :<bar>call quick_scope#Toggle()<cr>
nnoremap <silent> <Plug>(QuickScopeToggle) :call quick_scope#Toggle()<cr>
nnoremap <silent> <Plug>(QuickScopeT) :<bar>call quick_scope#Ready() <bar>| execute "normal!" v:count1 . quick_scope#Aim("T") <bar>| call quick_scope#Reload() <bar>| call quick_scope#DoubleTap()<cr>
xnoremap <expr> <Plug>(QuickScopeT) quick_scope#Ready() . quick_scope#Aim("T") . quick_scope#Reload() . quick_scope#DoubleTap()
onoremap <expr> <Plug>(QuickScopeT) quick_scope#Ready() . quick_scope#Aim("T") . quick_scope#Reload() . quick_scope#DoubleTap()
nnoremap <silent> <Plug>(QuickScopet) :<bar>call quick_scope#Ready() <bar>| execute "normal!" v:count1 . quick_scope#Aim("t") <bar>| call quick_scope#Reload() <bar>| call quick_scope#DoubleTap()<cr>
xnoremap <expr> <Plug>(QuickScopet) quick_scope#Ready() . quick_scope#Aim("t") . quick_scope#Reload() . quick_scope#DoubleTap()
onoremap <expr> <Plug>(QuickScopet) quick_scope#Ready() . quick_scope#Aim("t") . quick_scope#Reload() . quick_scope#DoubleTap()
nnoremap <silent> <Plug>(QuickScopeF) :<bar>call quick_scope#Ready() <bar>| execute "normal!" v:count1 . quick_scope#Aim("F") <bar>| call quick_scope#Reload() <bar>| call quick_scope#DoubleTap()<cr>
xnoremap <expr> <Plug>(QuickScopeF) quick_scope#Ready() . quick_scope#Aim("F") . quick_scope#Reload() . quick_scope#DoubleTap()
onoremap <expr> <Plug>(QuickScopeF) quick_scope#Ready() . quick_scope#Aim("F") . quick_scope#Reload() . quick_scope#DoubleTap()
nnoremap <silent> <Plug>(QuickScopef) :<bar>call quick_scope#Ready() <bar>| execute "normal!" v:count1 . quick_scope#Aim("f") <bar>| call quick_scope#Reload() <bar>| call quick_scope#DoubleTap()<cr>
xnoremap <expr> <Plug>(QuickScopef) quick_scope#Ready() . quick_scope#Aim("f") . quick_scope#Reload() . quick_scope#DoubleTap()
onoremap <expr> <Plug>(QuickScopef) quick_scope#Ready() . quick_scope#Aim("f") . quick_scope#Reload() . quick_scope#DoubleTap()
noremap <Plug>(_incsearch-g#) g#
noremap <Plug>(_incsearch-g*) g*
noremap <Plug>(_incsearch-#) #
noremap <Plug>(_incsearch-*) *
noremap <expr> <Plug>(_incsearch-N) g:incsearch#consistent_n_direction && !v:searchforward ? 'n' : 'N'
noremap <expr> <Plug>(_incsearch-n) g:incsearch#consistent_n_direction && !v:searchforward ? 'N' : 'n'
map <Plug>(incsearch-nohl-g#) <Plug>(incsearch-nohl)<Plug>(_incsearch-g#)
map <Plug>(incsearch-nohl-g*) <Plug>(incsearch-nohl)<Plug>(_incsearch-g*)
map <Plug>(incsearch-nohl-#) <Plug>(incsearch-nohl)<Plug>(_incsearch-#)
map <Plug>(incsearch-nohl-*) <Plug>(incsearch-nohl)<Plug>(_incsearch-*)
map <Plug>(incsearch-nohl-N) <Plug>(incsearch-nohl)<Plug>(_incsearch-N)
map <Plug>(incsearch-nohl-n) <Plug>(incsearch-nohl)<Plug>(_incsearch-n)
noremap <expr> <Plug>(incsearch-nohl2) incsearch#autocmd#auto_nohlsearch(2)
noremap <expr> <Plug>(incsearch-nohl0) incsearch#autocmd#auto_nohlsearch(0)
noremap <expr> <Plug>(incsearch-nohl) incsearch#autocmd#auto_nohlsearch(1)
noremap <silent> <expr> <Plug>(incsearch-stay) incsearch#go({'command': '/', 'is_stay': 1})
noremap <silent> <expr> <Plug>(incsearch-backward) incsearch#go({'command': '?'})
noremap <silent> <expr> <Plug>(incsearch-forward) incsearch#go({'command': '/'})
xmap <C-Right> <Plug>(textmanip-move-right)
xmap <C-Left> <Plug>(textmanip-move-left)
xmap <C-Up> <Plug>(textmanip-move-up)
xmap <C-Down> <Plug>(textmanip-move-down)
xnoremap <Plug>(textmanip-toggle-mode) :<bar>call textmanip#mode('toggle')<cr>gv
nnoremap <Plug>(textmanip-toggle-mode) :<bar>call textmanip#mode('toggle')<cr>
xnoremap <silent> <Plug>(textmanip-blank-below) :<bar>call textmanip#start("blank", "v", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-blank-above) :<bar>call textmanip#start("blank", "^", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move1-right-r) :<bar>call textmanip#start("move1", ">", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move1-right-i) :<bar>call textmanip#start("move1", ">", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move1-right) :<bar>call textmanip#start("move1", ">", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move1-left-r) :<bar>call textmanip#start("move1", "<bar><", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move1-left-i) :<bar>call textmanip#start("move1", "<bar><", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move1-left) :<bar>call textmanip#start("move1", "<bar><", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move-right-r) :<bar>call textmanip#start("move", ">", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move-right-i) :<bar>call textmanip#start("move", ">", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move-right) :<bar>call textmanip#start("move", ">", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move-left-r) :<bar>call textmanip#start("move", "<bar><", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move-left-i) :<bar>call textmanip#start("move", "<bar><", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move-left) :<bar>call textmanip#start("move", "<bar><", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move-down-r) :<bar>call textmanip#start("move", "v", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move-down-i) :<bar>call textmanip#start("move", "v", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move-down) :<bar>call textmanip#start("move", "v", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move-up-r) :<bar>call textmanip#start("move", "^", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move-up-i) :<bar>call textmanip#start("move", "^", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move-up) :<bar>call textmanip#start("move", "^", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-right-r) :<bar>call textmanip#start("duplicate", ">", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-right-i) :<bar>call textmanip#start("duplicate", ">", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-right) :<bar>call textmanip#start("duplicate", ">", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-left-r) :<bar>call textmanip#start("duplicate", "<bar><", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-left-i) :<bar>call textmanip#start("duplicate", "<bar><", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-left) :<bar>call textmanip#start("duplicate", "<bar><", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-down-r) :<bar>call textmanip#start("duplicate", "v", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-down-i) :<bar>call textmanip#start("duplicate", "v", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-down) :<bar>call textmanip#start("duplicate", "v", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-up-r) :<bar>call textmanip#start("duplicate", "^", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-up-i) :<bar>call textmanip#start("duplicate", "^", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-up) :<bar>call textmanip#start("duplicate", "^", "x", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-blank-below) :<bar>call textmanip#start("blank", "v", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-blank-above) :<bar>call textmanip#start("blank", "^", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-move-right-r) :<bar>call textmanip#start("move", ">", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-move-right-i) :<bar>call textmanip#start("move", ">", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-move-right) :<bar>call textmanip#start("move", ">", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-move-left-r) :<bar>call textmanip#start("move", "<bar><", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-move-left-i) :<bar>call textmanip#start("move", "<bar><", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-move-left) :<bar>call textmanip#start("move", "<bar><", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-move-down-r) :<bar>call textmanip#start("move", "v", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-move-down-i) :<bar>call textmanip#start("move", "v", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-move-down) :<bar>call textmanip#start("move", "v", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-move-up-r) :<bar>call textmanip#start("move", "^", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-move-up-i) :<bar>call textmanip#start("move", "^", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-move-up) :<bar>call textmanip#start("move", "^", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-down-r) :<bar>call textmanip#start("duplicate", "v", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-down-i) :<bar>call textmanip#start("duplicate", "v", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-down) :<bar>call textmanip#start("duplicate", "v", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-up-r) :<bar>call textmanip#start("duplicate", "^", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-up-i) :<bar>call textmanip#start("duplicate", "^", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-up) :<bar>call textmanip#start("duplicate", "^", "n", "auto")<cr>
nnoremap <silent> <Plug>(startify-open-buffers) :<bar>call startify#open_buffers()<cr>
xnoremap <Plug>(open-url-search-wikipedia) :<bar>OpenSearchURL wikipedia <bar>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-search-wikipedia) :OpenSearchURL wikipedia <bar><cword><cr>
xnoremap <Plug>(open-url-search-google) :<bar>OpenSearchURL google <bar>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-search-google) :OpenSearchURL google <bar><cword><cr>
xnoremap <Plug>(open-url-search-so) :<bar>OpenSearchURL so <bar>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-search-so) :OpenSearchURL so <bar><cword><cr>
xnoremap <Plug>(open-url-search) :<bar>OpenSearchURL <bar>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-search) :OpenSearchURL <bar><cword><cr>
xnoremap <Plug>(open-url-browser) :<bar>OpenURL <bar>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-browser) :OpenURL <bar><cfile><cr>
nnoremap <Plug>(dirvish_git_prev_file) :<bar>call dirvish_git#jump_to_prev_file()<cr>
nnoremap <Plug>(dirvish_git_next_file) :<bar>call dirvish_git#jump_to_next_file()<cr>
nnoremap <silent> <Plug>(dirvish_vsplit_up) :<bar>vsplit<bar>|exe 'Dirvish' fnameescape(fnamemodify(@%, ':p'.(@%[-1:]=~'[\\/]'?':h':'').repeat(':h',v:count1)))<cr>
nnoremap <silent> <Plug>(dirvish_split_up) :<bar>split<bar>|exe 'Dirvish' fnameescape(fnamemodify(@%, ':p'.(@%[-1:]=~'[\\/]'?':h':'').repeat(':h',v:count1)))<cr>
nnoremap <silent> <Plug>(dirvish_up) :<bar>exe 'Dirvish' fnameescape(fnamemodify(@%, ':p'.(@%[-1:]=~'[\\/]'?':h':'').repeat(':h',v:count1)))<cr>
xnoremap <silent> <Plug>(openbrowser-smart-search) :<bar>call openbrowser#_keymap_smart_search('v')<cr>
nnoremap <silent> <Plug>(openbrowser-smart-search) :<bar>call openbrowser#_keymap_smart_search('n')<cr>
xnoremap <silent> <Plug>(openbrowser-search) :<bar>call openbrowser#_keymap_search('v')<cr>
nnoremap <silent> <Plug>(openbrowser-search) :<bar>call openbrowser#_keymap_search('n')<cr>
xnoremap <silent> <Plug>(openbrowser-open-incognito) :<bar>call openbrowser#_keymap_open('v', 0, ['--incognito'])<cr>
nnoremap <silent> <Plug>(openbrowser-open-incognito) :<bar>call openbrowser#_keymap_open('n', 0, ['--incognito'])<cr>
xnoremap <silent> <Plug>(openbrowser-open) :<bar>call openbrowser#_keymap_open('v')<cr>
nnoremap <silent> <Plug>(openbrowser-open) :<bar>call openbrowser#_keymap_open('n')<cr>
vmap <F6> <Plug>(openbrowser-smart-search)
nnoremap <F6> :execute "normal \<Plug>(openbrowser-smart-search)"<bar>|silent !nsBt<cr>
nnoremap <F10> :cd %:p:h<cr>:NERDTreeCWD<cr>
noremap <C-N> :NERDTreeToggle<cr>
noremap <C-E> :cd %:p:h<cr>:Fern . -reveal=%<cr>
nnoremap <silent> <Plug>CalendarT :cal calendar#show(2)<cr>
nnoremap <silent> <Plug>CalendarH :cal calendar#show(1)<cr>
nnoremap <silent> <Plug>CalendarV :cal calendar#show(0)<cr>
nnoremap <silent> <Plug>(ale_info_preview) :ALEInfo -preview<cr>
nnoremap <silent> <Plug>(ale_info_clipboard) :ALEInfo -clipboard<cr>
nnoremap <silent> <Plug>(ale_info_echo) :ALEInfo -echo<cr>
nnoremap <silent> <Plug>(ale_info) :ALEInfo<cr>
nnoremap <silent> <Plug>(ale_repeat_selection) :ALERepeatSelection<cr>
nnoremap <silent> <Plug>(ale_code_action) :ALECodeAction<cr>
nnoremap <silent> <Plug>(ale_filerename) :ALEFileRename<cr>
nnoremap <silent> <Plug>(ale_rename) :ALERename<cr>
nnoremap <silent> <Plug>(ale_import) :ALEImport<cr>
nnoremap <silent> <Plug>(ale_documentation) :ALEDocumentation<cr>
nnoremap <silent> <Plug>(ale_hover) :ALEHover<cr>
nnoremap <silent> <Plug>(ale_find_references) :ALEFindReferences<cr>
nnoremap <silent> <Plug>(ale_go_to_implementation_in_vsplit) :ALEGoToImplementation -vsplit<cr>
nnoremap <silent> <Plug>(ale_go_to_implementation_in_split) :ALEGoToImplementation -split<cr>
nnoremap <silent> <Plug>(ale_go_to_implementation_in_tab) :ALEGoToImplementation -tab<cr>
nnoremap <silent> <Plug>(ale_go_to_implementation) :ALEGoToImplementation<cr>
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_vsplit) :ALEGoToTypeDefinition -vsplit<cr>
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_split) :ALEGoToTypeDefinition -split<cr>
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_tab) :ALEGoToTypeDefinition -tab<cr>
nnoremap <silent> <Plug>(ale_go_to_type_definition) :ALEGoToTypeDefinition<cr>
nnoremap <silent> <Plug>(ale_go_to_definition_in_vsplit) :ALEGoToDefinition -vsplit<cr>
nnoremap <silent> <Plug>(ale_go_to_definition_in_split) :ALEGoToDefinition -split<cr>
nnoremap <silent> <Plug>(ale_go_to_definition_in_tab) :ALEGoToDefinition -tab<cr>
nnoremap <silent> <Plug>(ale_go_to_definition) :ALEGoToDefinition<cr>
nnoremap <silent> <Plug>(ale_fix) :ALEFix<cr>
nnoremap <silent> <Plug>(ale_detail) :ALEDetail<cr>
nnoremap <silent> <Plug>(ale_lint) :ALELint<cr>
nnoremap <silent> <Plug>(ale_reset_buffer) :ALEResetBuffer<cr>
nnoremap <silent> <Plug>(ale_disable_buffer) :ALEDisableBuffer<cr>
nnoremap <silent> <Plug>(ale_enable_buffer) :ALEEnableBuffer<cr>
nnoremap <silent> <Plug>(ale_toggle_buffer) :ALEToggleBuffer<cr>
nnoremap <silent> <Plug>(ale_reset) :ALEReset<cr>
nnoremap <silent> <Plug>(ale_disable) :ALEDisable<cr>
nnoremap <silent> <Plug>(ale_enable) :ALEEnable<cr>
nnoremap <silent> <Plug>(ale_toggle) :ALEToggle<cr>
nnoremap <silent> <Plug>(ale_last) :ALELast<cr>
nnoremap <silent> <Plug>(ale_first) :ALEFirst<cr>
nnoremap <silent> <Plug>(ale_next_wrap_warning) :ALENext -wrap -warning<cr>
nnoremap <silent> <Plug>(ale_next_warning) :ALENext -warning<cr>
nnoremap <silent> <Plug>(ale_next_wrap_error) :ALENext -wrap -error<cr>
nnoremap <silent> <Plug>(ale_next_error) :ALENext -error<cr>
nnoremap <silent> <Plug>(ale_next_wrap) :ALENextWrap<cr>
nnoremap <silent> <Plug>(ale_next) :ALENext<cr>
nnoremap <silent> <Plug>(ale_previous_wrap_warning) :ALEPrevious -wrap -warning<cr>
nnoremap <silent> <Plug>(ale_previous_warning) :ALEPrevious -warning<cr>
nnoremap <silent> <Plug>(ale_previous_wrap_error) :ALEPrevious -wrap -error<cr>
nnoremap <silent> <Plug>(ale_previous_error) :ALEPrevious -error<cr>
nnoremap <silent> <Plug>(ale_previous_wrap) :ALEPreviousWrap<cr>
nnoremap <silent> <Plug>(ale_previous) :ALEPrevious<cr>
nmap <silent> <2-LeftMouse> <Plug>(matchup-double-click)
nnoremap <Plug>(matchup-reload) :<bar>MatchupReload<cr>
nnoremap <silent> <Plug>(matchup-double-click) :<bar>call matchup#text_obj#double_click()<cr>
onoremap <silent> <Plug>(matchup-a%) :<bar>call matchup#text_obj#delimited(0, 0, 'delim_all')<cr>
onoremap <silent> <Plug>(matchup-i%) :<bar>call matchup#text_obj#delimited(1, 0, 'delim_all')<cr>
xnoremap <silent> <Plug>(matchup-a%) :<bar>call matchup#text_obj#delimited(0, 1, 'delim_all')<cr>
xnoremap <silent> <Plug>(matchup-i%) :<bar>call matchup#text_obj#delimited(1, 1, 'delim_all')<cr>
onoremap <silent> <Plug>(matchup-Z%) :<bar>call matchup#motion#op('Z%')<cr>
xnoremap <silent> <SNR>90_(matchup-Z%) :<bar>call matchup#motion#jump_inside_prev(1)<cr>
nnoremap <silent> <Plug>(matchup-Z%) :<bar>call matchup#motion#jump_inside_prev(0)<cr>
onoremap <silent> <Plug>(matchup-z%) :<bar>call matchup#motion#op('z%')<cr>
xnoremap <silent> <SNR>90_(matchup-z%) :<bar>call matchup#motion#jump_inside(1)<cr>
nnoremap <silent> <Plug>(matchup-z%) :<bar>call matchup#motion#jump_inside(0)<cr>
onoremap <silent> <Plug>(matchup-[%) :<bar>call matchup#motion#op('[%')<cr>
onoremap <silent> <Plug>(matchup-]%) :<bar>call matchup#motion#op(']%')<cr>
xnoremap <silent> <SNR>90_(matchup-[%) :<bar>call matchup#motion#find_unmatched(1, 0)<cr>
xnoremap <silent> <SNR>90_(matchup-]%) :<bar>call matchup#motion#find_unmatched(1, 1)<cr>
nnoremap <silent> <Plug>(matchup-[%) :<bar>call matchup#motion#find_unmatched(0, 0)<cr>
nnoremap <silent> <Plug>(matchup-]%) :<bar>call matchup#motion#find_unmatched(0, 1)<cr>
onoremap <silent> <Plug>(matchup-g%) :<bar>call matchup#motion#op('g%')<cr>
xnoremap <silent> <SNR>90_(matchup-g%) :<bar>call matchup#motion#find_matching_pair(1, 0)<cr>
onoremap <silent> <Plug>(matchup-%) :<bar>call matchup#motion#op('%')<cr>
xnoremap <silent> <SNR>90_(matchup-%) :<bar>call matchup#motion#find_matching_pair(1, 1)<cr>
nnoremap <silent> <Plug>(matchup-g%) :<bar>call matchup#motion#find_matching_pair(0, 0)<cr>
nnoremap <silent> <Plug>(matchup-%) :<bar>call matchup#motion#find_matching_pair(0, 1)<cr>
nnoremap <silent> <expr> <SNR>90_(wise) empty(g:v_motion_force) ? 'v' : g:v_motion_force
nnoremap <silent> <Plug>(matchup-hi-surround) :<bar>call matchup#matchparen#highlight_surrounding()<cr>
nnoremap <Plug>NERDCommenterAltDelims :call nerdcommenter#SwitchToAlternativeDelimiters(1)<cr>
xnoremap <silent> <Plug>NERDCommenterUncomment :call nerdcommenter#Comment("x", "Uncomment")<cr>
nnoremap <silent> <Plug>NERDCommenterUncomment :call nerdcommenter#Comment("n", "Uncomment")<cr>
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call nerdcommenter#Comment("x", "AlignBoth")<cr>
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call nerdcommenter#Comment("n", "AlignBoth")<cr>
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call nerdcommenter#Comment("x", "AlignLeft")<cr>
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call nerdcommenter#Comment("n", "AlignLeft")<cr>
nnoremap <silent> <Plug>NERDCommenterAppend :call nerdcommenter#Comment("n", "Append")<cr>
xnoremap <silent> <Plug>NERDCommenterYank :call nerdcommenter#Comment("x", "Yank")<cr>
nnoremap <silent> <Plug>NERDCommenterYank :call nerdcommenter#Comment("n", "Yank")<cr>
xnoremap <silent> <Plug>NERDCommenterSexy :call nerdcommenter#Comment("x", "Sexy")<cr>
nnoremap <silent> <Plug>NERDCommenterSexy :call nerdcommenter#Comment("n", "Sexy")<cr>
xnoremap <silent> <Plug>NERDCommenterInvert :call nerdcommenter#Comment("x", "Invert")<cr>
nnoremap <silent> <Plug>NERDCommenterInvert :call nerdcommenter#Comment("n", "Invert")<cr>
nnoremap <silent> <Plug>NERDCommenterToEOL :call nerdcommenter#Comment("n", "ToEOL")<cr>
xnoremap <silent> <Plug>NERDCommenterNested :call nerdcommenter#Comment("x", "Nested")<cr>
nnoremap <silent> <Plug>NERDCommenterNested :call nerdcommenter#Comment("n", "Nested")<cr>
xnoremap <silent> <Plug>NERDCommenterMinimal :call nerdcommenter#Comment("x", "Minimal")<cr>
nnoremap <silent> <Plug>NERDCommenterMinimal :call nerdcommenter#Comment("n", "Minimal")<cr>
xnoremap <silent> <Plug>NERDCommenterToggle :call nerdcommenter#Comment("x", "Toggle")<cr>
nnoremap <silent> <Plug>NERDCommenterToggle :call nerdcommenter#Comment("n", "Toggle")<cr>
xnoremap <silent> <Plug>NERDCommenterComment :call nerdcommenter#Comment("x", "Comment")<cr>
nnoremap <silent> <Plug>NERDCommenterComment :call nerdcommenter#Comment("n", "Comment")<cr>
nnoremap <silent> <Plug>(PrettierCliPath) :PrettierCliPath<cr>
nnoremap <silent> <Plug>(PrettierCliVersion) :PrettierCliVersion<cr>
nnoremap <silent> <Plug>(PrettierCli) :PrettierCli<cr>
nnoremap <silent> <Plug>(PrettierVersion) :PrettierVersion<cr>
nnoremap <silent> <Plug>(PrettierPartial) :PrettierPartial<cr>
nnoremap <silent> <Plug>(PrettierFragment) :PrettierFragment<cr>
nnoremap <silent> <Plug>(PrettierAsync) :PrettierAsync<cr>
nnoremap <silent> <Plug>(Prettier) :Prettier<cr>
nnoremap <silent> <Plug>TagalongReapply :call tagalong#Reapply()<cr>
nnoremap <silent> <Plug>GitGutterPreviewHunk :call gitgutter#utility#warn('Please change your map <bar><Plug>GitGutterPreviewHunk to <bar><Plug>(GitGutterPreviewHunk)')<cr>
nnoremap <silent> <Plug>(GitGutterPreviewHunk) :GitGutterPreviewHunk<cr>
nnoremap <silent> <Plug>GitGutterUndoHunk :call gitgutter#utility#warn('Please change your map <bar><Plug>GitGutterUndoHunk to <bar><Plug>(GitGutterUndoHunk)')<cr>
nnoremap <silent> <Plug>(GitGutterUndoHunk) :GitGutterUndoHunk<cr>
nnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('Please change your map <bar><Plug>GitGutterStageHunk to <bar><Plug>(GitGutterStageHunk)')<cr>
nnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk<cr>
xnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('Please change your map <bar><Plug>GitGutterStageHunk to <bar><Plug>(GitGutterStageHunk)')<cr>
xnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk<cr>
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\<bar>call gitgutter#utility#warn('Please change your map \<bar><Plug>GitGutterPrevHunk to \<bar><Plug>(GitGutterPrevHunk)')\<cr>"
nnoremap <silent> <expr> <Plug>(GitGutterPrevHunk) &diff ? '[c' : ":\<bar>execute v:count1 . 'GitGutterPrevHunk'\<cr>"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\<bar>call gitgutter#utility#warn('Please change your map \<bar><Plug>GitGutterNextHunk to \<bar><Plug>(GitGutterNextHunk)')\<cr>"
nnoremap <silent> <expr> <Plug>(GitGutterNextHunk) &diff ? ']c' : ":\<bar>execute v:count1 . 'GitGutterNextHunk'\<cr>"
xnoremap <silent> <Plug>(GitGutterTextObjectOuterVisual) :<bar>call gitgutter#hunk#text_object(0)<cr>
xnoremap <silent> <Plug>(GitGutterTextObjectInnerVisual) :<bar>call gitgutter#hunk#text_object(1)<cr>
onoremap <silent> <Plug>(GitGutterTextObjectOuterPending) :<bar>call gitgutter#hunk#text_object(0)<cr>
onoremap <silent> <Plug>(GitGutterTextObjectInnerPending) :<bar>call gitgutter#hunk#text_object(1)<cr>
nnoremap <F3> :call StripStoreCurSel()<cr>:Ggrep -i "<bar>s" <bar>|cw
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()<cr>
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()<cr>
vnoremap <F2> <esc>:wa<cr>
nnoremap <F2> :wa<cr>
nnoremap <S-F11> :call OpenInEmacs()<cr>
nnoremap <C-K> <c-w>k
nnoremap <C-J> <c-w>j
nnoremap <C-H> <c-w>h
nnoremap <S-F5> :syntax sync fromstart<cr>
vnoremap <F5> <esc>:wa<cr>:e<cr>
nnoremap <F5> :wa<cr>:edit<cr>
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))<cr>
xnoremap <Plug>(comment_toggle_blockwise_visual) <esc><Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())<cr>
xnoremap <Plug>(comment_toggle_linewise_visual) <esc><Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())<cr>
noremap <F11> :cd %:p:h<cr><bar>|:silent !pcmanfm &<cr>
nnoremap <Insert> :CapsLockOff <cr>
nnoremap <C-=> <c-w>=
vnoremap <F4> <esc>:wa<cr>:bd<cr>
nnoremap <F4> :call F4F4()<cr>
nnoremap <C-L> <c-w>l
imap <bar>S <Plug>ISurround
imap <bar>s <Plug>Isurround
imap <silent> <bar>% <Plug>(matchup-c_g%)
imap <bar>	 <Plug>SuperTabForward
imap <bar> <Plug>Isurround
inoremap <bar> <bar>u<bar>
inoremap <c-w> <bar>u<c-w>
inoremap <bar><bar> <bar><bar>
inoremap <silent> \<F11> <esc>:echo strftime('%c',getftime(expand('%')))<cr>
inoremap \<F5> :call clearmatches()<cr>
iabbr <expr> d8t strftime("%y%m%d(%Hh%Mm%S)")
iabbr <expr> d8s strftime("%d/%m/%y")
iabbr <expr> d8p strftime("%Y-%m-%d %H:%M")
iabbr <expr> d8m strftime("%y%m%d-%Hh%Mm")
iabbr <expr> d8l strftime("%Hh%M %a %d %b %Y")
iabbr <expr> d8d strftime("%a %d %b %Y")
iabbr <expr> d8c strftime("%y%m%d")
iabbr <expr> d8a strftime("%Y-%m-%d-%a")
iabbr <expr> d8- strftime("%y-%m-%d")
let &cpo=s:cpo_save
unlet s:cpo_save
set clipboard=unnamedplus
set cmdwinheight=20
set completefunc=thesaurus_query#auto_complete_integrate
set directory=~/.vimswap//
set fillchars=fold:\ 
set helplang=en
set history=500
set ignorecase
set inccommand=split
set keywordprg=:help
set linespace=2
set listchars=eol:│,nbsp:␣,trail:·,tab:»·
set noloadplugins
set matchpairs=(:),{:},[:],<:>
set maxmempattern=800000
set modelines=4
set mouse=a
set redrawtime=50000
set runtimepath=
set runtimepath+=~/.config/nvim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/nerdtree
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-repeat
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-peekaboo
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/undotree
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-loclist-follow
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/listtoggle
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-bufkill
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-buffing-wheel
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/close-buffers.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/bufferize.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-surround
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-subversive
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/targets.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/supertab
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-mark
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-easymotion
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-asterisk
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/quick-scope
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/incsearch-fuzzy.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/incsearch.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-textmanip
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-easy-align
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-startify
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-rooter
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-open-url
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-dirvish-git
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-dirvish
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-clifm
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vifm.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/open-browser.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/nerdtree-git-plugin
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/fern-renderer-nerdfont.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/fern-preview.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/fern-git-status.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/fern.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/calendar-vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-fontsize
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/lf-vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-illuminate
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/FoldText
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-characterize
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-LanguageTool
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-langtool
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/thesaurus_query.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/neomutt.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/ale
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-ingo-library
set runtimepath+=~/.config/nvim/pack/packs-unix/opt/vim-ssh-annex
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-matchup
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/unicode.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-tagbar
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/nerdcommenter
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/minimap.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vimtex
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-ps1
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-prettier
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-pandoc-syntax
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-mbsync
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-markdown
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-hjson
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-go
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-dokuwiki
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-closetag
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-bbcode
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-base64
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vader.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/tagalong.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/org.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/MatchTagAlways
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/mediawiki.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-liquid
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/emmet-vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/csv.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/CSS-one-line--multi-line-folding
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-rhubarb
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-gitgutter
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-fugitive
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/gitignore.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-flog
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/dsf.vim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/context.vim
set runtimepath+=~/.config/nvim/pack/packs-unix/opt/vim-plugin-AnsiEsc
set runtimepath+=~/.local/share/nvim/lazy/lazy.nvim
set runtimepath+=~/.local/share/nvim/lazy/lualine.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-notify
set runtimepath+=~/.local/share/nvim/lazy/telescope-live-grep-args.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-web-devicons
set runtimepath+=~/.local/share/nvim/lazy/plenary.nvim
set runtimepath+=~/.local/share/nvim/lazy/telescope.nvim
set runtimepath+=~/.local/share/nvim/lazy/mason.nvim
set runtimepath+=~/.local/share/nvim/lazy/mason-lspconfig.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-lspconfig
set runtimepath+=~/.local/share/nvim/lazy/Comment.nvim
set runtimepath+=~/.local/share/nvim/lazy/telescope-fzf-native.nvim
set runtimepath+=~/.local/share/nvim/lazy/nvim-treesitter
set runtimepath+=/usr/share/nvim/runtime
set runtimepath+=/usr/share/nvim/runtime/pack/dist/opt/cfilter
set runtimepath+=/usr/lib/nvim
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/nerdtree-git-plugin/after
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-matchup/after
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vimtex/after
set runtimepath+=~/.config/nvim/pack/packs-cp/opt/vim-markdown/after
set runtimepath+=~/.config/nvim/after
set runtimepath+=~/.local/state/nvim/lazy/readme
set sessionoptions=buffers,curdir,folds,tabpages,winsize,terminal,winpos
set shiftwidth=4
set shortmess=filnxtToOFI
set noshowmode
set smartcase
set splitbelow
set splitright
set statusline=%#Normal#
set tabstop=4
set termguicolors
set textwidth=99
set title
set updatetime=250
set wildmode=longest,full
set window=36
set winminheight=0
" vim: set ft=vim :
