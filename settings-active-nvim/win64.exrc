" vim: se nowrap:

" generated from within Vim by  :call Grab_exrc()

let s:cpo_save=&cpo
set cpo&vim
inoremap <C-G>S <Plug>(nvim-surround-insert-line)
inoremap <C-G>s <Plug>(nvim-surround-insert)
inoremap <silent> <Plug>(ScrollViewToggle) <Cmd>ScrollViewToggle<cr>
inoremap <silent> <Plug>(ScrollViewRefresh) <Cmd>ScrollViewRefresh<cr>
inoremap <silent> <Plug>(ScrollViewPrev) <Cmd>ScrollViewPrev<cr>
inoremap <silent> <Plug>(ScrollViewNext) <Cmd>ScrollViewNext<cr>
inoremap <silent> <Plug>(ScrollViewLegend!) <Cmd>ScrollViewLegend!<cr>
inoremap <silent> <Plug>(ScrollViewLegend) <Cmd>ScrollViewLegend<cr>
inoremap <silent> <Plug>(ScrollViewLast) <Cmd>ScrollViewLast<cr>
inoremap <silent> <Plug>(ScrollViewFirst) <Cmd>ScrollViewFirst<cr>
inoremap <silent> <Plug>(ScrollViewEnable) <Cmd>ScrollViewEnable<cr>
inoremap <silent> <Plug>(ScrollViewDisable) <Cmd>ScrollViewDisable<cr>
inoremap <S-F2> <esc>
inoremap <F3> <esc>
inoremap <F2> <esc>:wa<cr>
inoremap <F5> <esc>:wa<cr>:e<cr>
inoremap <silent> <Plug>(peekaboo) <cr><cr>:<cr>call peekaboo#aboo()<cr>
inoremap <silent> <Plug>(ale_complete) <cr><cr>:ALEComplete<cr>
imap <silent> <C-G>% <Plug>(matchup-c_g%)
inoremap <silent> <Plug>(matchup-c_g%) <cr><cr>:call matchup#motion#insert_mode()<cr>
inoremap <C-X><C-X> <cr><cr>
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) <cr>e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"<cr><cr>
inoremap <F11> <esc><F11>
inoremap <F4> <esc>:call VimWriteClose()<cr>
cnoremap <C-F4> <cr><cr>c
inoremap <C-F4> <cr><cr>c
cnoremap <C-Tab> <cr><cr>w
inoremap <C-Tab> <cr><cr>w
cnoremap <C-A> <cr>gggH<cr>G
inoremap <C-A> <cr>gg<cr>gH<cr>G
inoremap <C-Y> <cr><cr>
inoremap <C-Z> <cr>u
imap <S-Insert> <cr><cr>
cmap <S-Insert> <cr>+
cmap <C-V> <cr>+
inoremap <C-S> <esc>:update<cr>gi
inoremap <C-W> <cr>u<cr>
inoremap <C-U> <cr>u<cr>
vnoremap <cr> "+y
nnoremap <cr> <cr>h
tnoremap <cr> <Cmd>wincmd k<cr>
nnoremap <NL> <cr>j
tnoremap <NL> <Cmd>wincmd k<cr>
nnoremap <cr> <cr>k
tnoremap <cr> <Cmd>wincmd k<cr>
tnoremap <cr> <Cmd>wincmd k<cr>
nnoremap <cr> <cr>l
noremap <cr> <cr><cr>
vnoremap <cr> <cr>:update<cr>
nnoremap <cr> :update<cr>
onoremap <cr> :update<cr>
nmap <cr><cr> "+gP
omap <cr><cr> "+gP
nmap <cr><cr> <cr>d
vnoremap <cr> "+x
noremap <cr> <cr>
noremap <cr> u
tnoremap <esc> <cr><cr>
nnoremap <cr>  za
nnoremap ! /
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
noremap =a :call ALEToggleBufferShow()<cr>
noremap <silent> ==[ <Plug>(ale_previous_wrap)
noremap <silent> ==] <Plug>(ale_next_wrap)
noremap <silent> =d :ALEGoToDefinition<cr>
nnoremap =h :echo 'you just hit =h'<cr>
nnoremap @: <Nop>
nnoremap @@ @:
xnoremap <silent> @(targets) :<cr>call targets#do()<cr>
onoremap <silent> @(targets) :<cr>call targets#do()<cr>
xnoremap <silent> <expr> @ mode() ==# 'V' ? ':normal! @'.getcharstr().'<cr>' : '@'
xmap <expr> A targets#e('o', 'A', 'A')
omap <expr> A targets#e('o', 'A', 'A')
inoremap ² <esc>~a
xmap F <Plug>(QuickScopeF)
omap F <Plug>(QuickScopeF)
nmap F <Plug>(QuickScopeF)
nnoremap <silent> <expr> H context#util#map_H()
xmap <expr> I targets#e('o', 'I', 'I')
omap <expr> I targets#e('o', 'I', 'I')
noremap Q <Nop>
xnoremap S <Plug>(nvim-surround-visual)
nnoremap S <Plug>(leap-from-window)
xmap T <Plug>(QuickScopeT)
omap T <Plug>(QuickScopeT)
nmap T <Plug>(QuickScopeT)
nnoremap Y y$
omap <silent> [% <Plug>(matchup-[%)
xmap <silent> [% <Plug>(matchup-[%)
nmap <silent> [% <Plug>(matchup-[%)
noremap \gg :call GitGutterFocus()<cr>
nnoremap \d :cd %:p:h<cr>:pwd<cr>
nnoremap \\t :sp term://pwsh<cr>
nnoremap \<F12> :call OpenInEmacs()<cr>
nnoremap \- :Hexplore<cr>
vnoremap <silent> \<F11> <esc>:echo strftime('%c',getftime(expand('%')))<cr>
nnoremap <silent> \<F11> :echo strftime('%c',getftime(expand('%')))<cr>
nnoremap \f :let@f=@%<cr>
vnoremap \vs <esc>:call ConvertSearchForVisualSelection()<cr>
nnoremap \vs :call ConvertSearchForVisualSelection()<cr>
nnoremap \pt :call ParenthsToggle()<cr>
nnoremap \\q :call VimgrepQRs()<cr>
nnoremap \vg :call VimgrepSelection()<cr>
nnoremap \is :call IncSearchToggle()<cr>
nnoremap \: :call TweakLS()<cr>
vnoremap \n <esc>:nohlsearch<cr>
nnoremap \n :nohlsearch<cr>
nnoremap \c= :windo set nowfh <cr>
nnoremap \<Right> 10<cr>>
nnoremap \<Left> 10<cr><cr><
nnoremap \<Up> 5<cr>+
nnoremap \<Down> 5<cr>-
nnoremap \\o :write<cr>|close<cr>
nnoremap \\v :vsplit<cr>
nnoremap \\h :split<cr>
nnoremap \x <cr>c
nnoremap \<F5> :syntax sync fromstart<cr>
nnoremap <silent> \rn :set rnu! rnu? <cr>
nnoremap <silent> \\l :set cul! cul? <cr>
nnoremap <silent> \\c :set cuc! cuc? <cr>
nnoremap \zz :let &scrolloff=999-&scrolloff<cr>
noremap \\ll :set list! list? <cr>
nnoremap \\<F5> :call clearmatches()<cr>
nnoremap \( :call UnicodePercent()<cr>
nnoremap \9 :call PercentUnicode()<cr>
noremap \yp :lan tim English_United Kingdom<cr>:exe ":norm a".strftime('%a %d %b %Y')<cr>:lan tim French<cr>
vnoremap \_ <esc>:call DateFr()<cr>
nnoremap \_ :call DateFr()<cr>
nnoremap \\2 :call ClearMAS()<cr>
nnoremap \é :call ClearFancyGlyphs()<cr>
nnoremap \U :Underline
nnoremap \\( :s/\m\[.\{-}]//g<cr>
nnoremap <silent> \q :QToggle<cr>
nnoremap <silent> \l :LToggle<cr>
noremap <silent> \\d :BD<cr>:bp<cr>
nmap <silent> \ba <Plug>BufKillAlt
nmap <silent> \bundo <Plug>BufKillUndo
nmap <silent> \!bw <Plug>BufKillBangBw
nmap <silent> \bw <Plug>BufKillBw
nmap <silent> \!bd <Plug>BufKillBangBd
nmap <silent> \!bun <Plug>BufKillBangBun
nmap <silent> \bun <Plug>BufKillBun
nmap <silent> \bf <Plug>BufKillForward
nmap <silent> \bb <Plug>BufKillBack
nmap \\n <Plug>MarkClear
nmap \\m <Plug>MarkSet
nmap \caL <Plug>CalendarH
nmap \cal <Plug>CalendarV
noremap \C :CalendarH<cr>
nmap <silent> \fs <Plug>FontsizeBegin
nmap <silent> \\0 <Plug>FontsizeDefault
nmap <silent> \\- <Plug>FontsizeDec
nmap <silent> \\+ <Plug>FontsizeInc
nmap <silent> \\= <Plug>FontsizeBegin
nnoremap \LT :call LanguageTool_lopen() <cr>
nnoremap \lt :LangTool <cr>| lopen 15 <cr>
nnoremap \wt :ThesaurusQueryReplaceCurrentWord<cr>
nnoremap \ww :<cr>MatchupWhereAmI??<cr>
nmap \p <Plug>(Prettier)
nnoremap \atob/ :%s/\v()/\=base64#decode(submatch(1))/<Home><Right><Right><Right><Right><Right><Right>
nnoremap \btoa/ :%s/\v()/\=base64#encode(submatch(1))/<Home><Right><Right><Right><Right><Right><Right>
vnoremap <silent> \btoa :<cr>call base64#v_btoa()<cr>
vnoremap <silent> \atob :<cr>call base64#v_atob()<cr>
nnoremap \bd :Bdelete hidden<cr>
nnoremap \bdd :Bdelete other<cr>
nnoremap \m :MRU
nnoremap \zg <Cmd>FzfLua files cwd=$onGH<cr>
nnoremap \zt <Cmd>FzfLua files cwd=$TeNo<cr>
nnoremap \zd <Cmd>FzfLua files cwd=$DWp<cr>
nnoremap \<F1> <Cmd>FzfLua buffers<cr>
nnoremap \yy <Cmd>echo 'neoclip'<cr>|Telescope neoclip<cr>
nnoremap \sv <Cmd>ScrollViewToggle<cr>
nnoremap \lg :Telescope live_grep_args<cr>
nnoremap \k <Cmd>lua vim.diagnostic.open_float()<cr>
nnoremap \à :call ToggleGUIwidth(108,150)<cr>
nnoremap \<F4> :Bdelete other<cr>:sleep<cr>:call VimWriteClose()<cr>
vnoremap \k :exe 'h '.expand('<cr><cword>')<cr>
onoremap \k :exe 'h '.expand('<cr><cword>')<cr>
omap <silent> ]% <Plug>(matchup-]%)
xmap <silent> ]% <Plug>(matchup-]%)
nmap <silent> ]% <Plug>(matchup-]%)
xmap <expr> a targets#e('o', 'a', 'a')
omap <expr> a targets#e('o', 'a', 'a')
omap <silent> a% <Plug>(matchup-a%)
xmap <silent> a% <Plug>(matchup-a%)
xmap af <Plug>DsfTextObjectA
omap af <Plug>DsfTextObjectA
nnoremap cS <Plug>(nvim-surround-change-line)
nnoremap cs <Plug>(nvim-surround-change)
nmap csnf <Plug>DsfNextChange
nmap csf <Plug>DsfChange
nnoremap ds <Plug>(nvim-surround-delete)
nmap dsnf <Plug>DsfNextDelete
nmap dsf <Plug>DsfDelete
xmap f <Plug>(QuickScopef)
omap f <Plug>(QuickScopef)
nmap f <Plug>(QuickScopef)
xnoremap gS <Plug>(nvim-surround-visual-line)
nnoremap g, <Nop>
nnoremap g: g,
map g/ <Plug>(incsearch-stay)
xmap gA <Plug>(EasyAlign)
nmap gA <Plug>(EasyAlign)
xmap gG <Plug>(open-url-search-google)
nmap gG <Plug>(open-url-search-google)
xmap gW <Plug>(open-url-search-wikipedia)
nmap gW <Plug>(open-url-search-wikipedia)
xmap g<cr> <Plug>(open-url-search)
nmap g<cr> <Plug>(open-url-search)
xmap gB <Plug>(open-url-browser)
nmap gB <Plug>(open-url-browser)
omap <silent> g% <Ignore><Plug>(matchup-g%)
xmap <silent> g% <Plug>(matchup-g%)
nmap <silent> g% <Plug>(matchup-g%)
map g# <Plug>(asterisk-g#)  " rg --no-ignore ' g# '
map g* <Plug>(asterisk-g*)  " rg --no-ignore ' g\* '
nmap ga <Plug>(characterize)
xnoremap gb <Plug>(comment_toggle_blockwise_visual)
nnoremap gb <Plug>(comment_toggle_blockwise)
xnoremap gc <Plug>(comment_toggle_linewise_visual)
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
nnoremap q! q/
nnoremap s <Plug>(leap)
xmap t <Plug>(QuickScopet)
omap t <Plug>(QuickScopet)
nmap t <Plug>(QuickScopet)
nnoremap ySS <Plug>(nvim-surround-normal-cur-line)
nnoremap yS <Plug>(nvim-surround-normal-line)
nnoremap yss <Plug>(nvim-surround-normal-cur)
nnoremap ys <Plug>(nvim-surround-normal)
nnoremap z? :exe ':spellrare  '.expand('<cr><cWORD>')<cr>
map z/ <Plug>(incsearch-fuzzy-stay)
omap <silent> z% <Plug>(matchup-z%)
xmap <silent> z% <Plug>(matchup-z%)
nmap <silent> z% <Plug>(matchup-z%)
map z# <Plug>(asterisk-z#)  " rg --no-ignore ' z# '
map z* <Plug>(asterisk-z*)  " rg --no-ignore ' z\* '
nnoremap <silent> <expr> zt context#util#map_zt()
vnoremap ~ y:call setreg('', TwiddleCase(@"), getregtype(''))<cr>gv""Pgv
nnoremap <SNR>252_: :<cr><cr>=v:count ? v:count : ''<cr>
noremap <silent> <Plug>(ScrollViewToggle) <Cmd>ScrollViewToggle<cr>
noremap <silent> <Plug>(ScrollViewRefresh) <Cmd>ScrollViewRefresh<cr>
noremap <silent> <Plug>(ScrollViewPrev) <Cmd>ScrollViewPrev<cr>
noremap <silent> <Plug>(ScrollViewNext) <Cmd>ScrollViewNext<cr>
noremap <silent> <Plug>(ScrollViewLegend!) <Cmd>ScrollViewLegend!<cr>
noremap <silent> <Plug>(ScrollViewLegend) <Cmd>ScrollViewLegend<cr>
noremap <silent> <Plug>(ScrollViewLast) <Cmd>ScrollViewLast<cr>
noremap <silent> <Plug>(ScrollViewFirst) <Cmd>ScrollViewFirst<cr>
noremap <silent> <Plug>(ScrollViewEnable) <Cmd>ScrollViewEnable<cr>
noremap <silent> <Plug>(ScrollViewDisable) <Cmd>ScrollViewDisable<cr>
vnoremap <F2> <esc>:wa<cr>
nnoremap <F2> :wa<cr>
nnoremap <C-=> <cr>=
nnoremap <C-K> <cr>k
nnoremap <C-J> <cr>j
nnoremap <C-H> <cr>h
vnoremap <F5> <esc>:wa<cr>:e<cr>
nnoremap <F5> :wa<cr>:edit<cr>
xnoremap <silent> <Plug>(peekaboo) :<cr>call peekaboo#aboo()<cr>
nnoremap <silent> <Plug>(peekaboo) :<cr>call peekaboo#aboo()<cr>
nnoremap <silent> <Plug>MarkSearchGroup9Prev :<cr>if ! mark#SearchGroupMark(9, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup9Next :<cr>if ! mark#SearchGroupMark(9, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup8Prev :<cr>if ! mark#SearchGroupMark(8, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup8Next :<cr>if ! mark#SearchGroupMark(8, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup7Prev :<cr>if ! mark#SearchGroupMark(7, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup7Next :<cr>if ! mark#SearchGroupMark(7, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup6Prev :<cr>if ! mark#SearchGroupMark(6, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup6Next :<cr>if ! mark#SearchGroupMark(6, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup5Prev :<cr>if ! mark#SearchGroupMark(5, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup5Next :<cr>if ! mark#SearchGroupMark(5, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup4Prev :<cr>if ! mark#SearchGroupMark(4, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup4Next :<cr>if ! mark#SearchGroupMark(4, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup3Prev :<cr>if ! mark#SearchGroupMark(3, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup3Next :<cr>if ! mark#SearchGroupMark(3, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup2Prev :<cr>if ! mark#SearchGroupMark(2, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup2Next :<cr>if ! mark#SearchGroupMark(2, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup1Prev :<cr>if ! mark#SearchGroupMark(1, v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroup1Next :<cr>if ! mark#SearchGroupMark(1, v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadePrevNoStop :<cr>if ! mark#cascade#Next(v:count1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadeNextNoStop :<cr>if ! mark#cascade#Next(v:count1, 0, 0)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadeStartNoStop :<cr>if ! mark#cascade#Start(v:count, 0)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"   <cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadePrevWithStop :<cr>if ! mark#cascade#Next(v:count1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadeNextWithStop :<cr>if ! mark#cascade#Next(v:count1, 1, 0)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCascadeStartWithStop :<cr>if ! mark#cascade#Start(v:count, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"   <cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchUsedGroupPrev :<cr>if ! mark#SearchNextGroup(v:count1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchUsedGroupNext :<cr>if ! mark#SearchNextGroup(v:count1, 0)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroupPrev :<cr>if ! mark#SearchGroupMark(v:count, 1, 1, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchGroupNext :<cr>if ! mark#SearchGroupMark(v:count, 1, 0, 1)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchAnyOrDefaultPrev :<cr>if mark#IsEnabled() && mark#GetCount() > 0<cr>|if ! mark#SearchAnyMark(1)<cr>|echoerr ingo#err#Get()<cr>|endif<cr>|else<cr>|execute 'normal!' v:count1 . 'Nzv'<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchAnyOrDefaultNext :<cr>if mark#IsEnabled() && mark#GetCount() > 0<cr>|if ! mark#SearchAnyMark(0)<cr>|echoerr ingo#err#Get()<cr>|endif<cr>|else<cr>|execute 'normal!' v:count1 . 'nzv'<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchOrAnyPrev :<cr>if ! mark#SearchNext(1,'mark#SearchAnyMark')<cr>|execute 'normal!' v:count1 . '#zv'<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchOrAnyNext :<cr>if ! mark#SearchNext(0,'mark#SearchAnyMark')<cr>|execute 'normal!' v:count1 . '*zv'<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchOrCurPrev :<cr>if ! mark#SearchNext(1,'mark#SearchCurrentMark')<cr>|execute 'normal!' v:count1 . '#zv'<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchOrCurNext :<cr>if ! mark#SearchNext(0,'mark#SearchCurrentMark')<cr>|execute 'normal!' v:count1 . '*zv'<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchPrev :<cr>if ! mark#SearchNext(1)<cr>|execute 'normal!' v:count1 . '#zv'<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchNext :<cr>if ! mark#SearchNext(0)<cr>|execute 'normal!' v:count1 . '*zv'<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchAnyPrev :<cr>if ! mark#SearchAnyMark(1)<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchAnyNext :<cr>if ! mark#SearchAnyMark(0)<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCurrentPrev :<cr>if ! mark#SearchCurrentMark(1)<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSearchCurrentNext :<cr>if ! mark#SearchCurrentMark(0)<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkToggle :<cr>call mark#Toggle()<cr>
nnoremap <silent> <Plug>MarkConfirmAllClear :<cr>if confirm('Really delete all marks? This cannot be undone.', "&Yes\n&No") == 1<cr>|call mark#ClearAll()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkAllClear :<cr>call mark#ClearAll()<cr>
nnoremap <silent> <Plug>MarkClear :<cr>if ! mark#Clear(v:count)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
vnoremap <silent> <Plug>MarkRegex :<cr>if ! mark#MarkRegex(v:count, mark#GetVisualSelectionAsRegexp())<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
nnoremap <silent> <Plug>MarkRegex :<cr>if ! mark#MarkRegex(v:count, '')<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|echoerr ingo#err#Get()<cr>|endif<cr>
vnoremap <silent> <Plug>MarkIWhiteSet :<cr>if ! mark#DoMark(v:count, mark#GetVisualSelectionAsLiteralWhitespaceIndifferentPattern())[0]<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|endif<cr>
vnoremap <silent> <Plug>MarkSet :<cr>if ! mark#DoMark(v:count, mark#GetVisualSelectionAsLiteralPattern())[0]<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|endif<cr>
nnoremap <silent> <Plug>MarkPartialWord :<cr>if ! mark#MarkCurrentWord(v:count, 0)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|endif<cr>
nnoremap <silent> <Plug>MarkSet :<cr>if ! mark#MarkCurrentWord(v:count)<cr>|execute "normal! \<cr><C-\>\<cr><C-n>\<cr><Esc>"<cr>|endif<cr>
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
xnoremap <Plug>(textmanip-toggle-mode) :<cr>call textmanip#mode('toggle')<cr>gv
nnoremap <Plug>(textmanip-toggle-mode) :<cr>call textmanip#mode('toggle')<cr>
xnoremap <silent> <Plug>(textmanip-blank-below) :<cr>call textmanip#start("blank", "v", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-blank-above) :<cr>call textmanip#start("blank", "^", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move1-right-r) :<cr>call textmanip#start("move1", ">", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move1-right-i) :<cr>call textmanip#start("move1", ">", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move1-right) :<cr>call textmanip#start("move1", ">", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move1-left-r) :<cr>call textmanip#start("move1", "<cr><", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move1-left-i) :<cr>call textmanip#start("move1", "<cr><", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move1-left) :<cr>call textmanip#start("move1", "<cr><", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move-right-r) :<cr>call textmanip#start("move", ">", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move-right-i) :<cr>call textmanip#start("move", ">", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move-right) :<cr>call textmanip#start("move", ">", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move-left-r) :<cr>call textmanip#start("move", "<cr><", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move-left-i) :<cr>call textmanip#start("move", "<cr><", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move-left) :<cr>call textmanip#start("move", "<cr><", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move-down-r) :<cr>call textmanip#start("move", "v", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move-down-i) :<cr>call textmanip#start("move", "v", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move-down) :<cr>call textmanip#start("move", "v", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-move-up-r) :<cr>call textmanip#start("move", "^", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-move-up-i) :<cr>call textmanip#start("move", "^", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-move-up) :<cr>call textmanip#start("move", "^", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-right-r) :<cr>call textmanip#start("duplicate", ">", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-right-i) :<cr>call textmanip#start("duplicate", ">", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-right) :<cr>call textmanip#start("duplicate", ">", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-left-r) :<cr>call textmanip#start("duplicate", "<cr><", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-left-i) :<cr>call textmanip#start("duplicate", "<cr><", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-left) :<cr>call textmanip#start("duplicate", "<cr><", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-down-r) :<cr>call textmanip#start("duplicate", "v", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-down-i) :<cr>call textmanip#start("duplicate", "v", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-down) :<cr>call textmanip#start("duplicate", "v", "x", "auto")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-up-r) :<cr>call textmanip#start("duplicate", "^", "x", "replace")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-up-i) :<cr>call textmanip#start("duplicate", "^", "x", "insert")<cr>
xnoremap <silent> <Plug>(textmanip-duplicate-up) :<cr>call textmanip#start("duplicate", "^", "x", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-blank-below) :<cr>call textmanip#start("blank", "v", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-blank-above) :<cr>call textmanip#start("blank", "^", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-move-right-r) :<cr>call textmanip#start("move", ">", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-move-right-i) :<cr>call textmanip#start("move", ">", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-move-right) :<cr>call textmanip#start("move", ">", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-move-left-r) :<cr>call textmanip#start("move", "<cr><", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-move-left-i) :<cr>call textmanip#start("move", "<cr><", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-move-left) :<cr>call textmanip#start("move", "<cr><", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-move-down-r) :<cr>call textmanip#start("move", "v", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-move-down-i) :<cr>call textmanip#start("move", "v", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-move-down) :<cr>call textmanip#start("move", "v", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-move-up-r) :<cr>call textmanip#start("move", "^", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-move-up-i) :<cr>call textmanip#start("move", "^", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-move-up) :<cr>call textmanip#start("move", "^", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-down-r) :<cr>call textmanip#start("duplicate", "v", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-down-i) :<cr>call textmanip#start("duplicate", "v", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-down) :<cr>call textmanip#start("duplicate", "v", "n", "auto")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-up-r) :<cr>call textmanip#start("duplicate", "^", "n", "replace")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-up-i) :<cr>call textmanip#start("duplicate", "^", "n", "insert")<cr>
nnoremap <silent> <Plug>(textmanip-duplicate-up) :<cr>call textmanip#start("duplicate", "^", "n", "auto")<cr>
xnoremap <Plug>(open-url-search-wikipedia) :<cr>OpenSearchURL wikipedia <cr>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-search-wikipedia) :OpenSearchURL wikipedia <cr><cword><cr>
xnoremap <Plug>(open-url-search-google) :<cr>OpenSearchURL google <cr>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-search-google) :OpenSearchURL google <cr><cword><cr>
xnoremap <Plug>(open-url-search-so) :<cr>OpenSearchURL so <cr>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-search-so) :OpenSearchURL so <cr><cword><cr>
xnoremap <Plug>(open-url-search) :<cr>OpenSearchURL <cr>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-search) :OpenSearchURL <cr><cword><cr>
xnoremap <Plug>(open-url-browser) :<cr>OpenURL <cr>=open_url#get_selection()<cr><cr>
nnoremap <Plug>(open-url-browser) :OpenURL <cr><cfile><cr>
xnoremap <silent> <Plug>(openbrowser-smart-search) :<cr>call openbrowser#_keymap_smart_search('v')<cr>
nnoremap <silent> <Plug>(openbrowser-smart-search) :<cr>call openbrowser#_keymap_smart_search('n')<cr>
xnoremap <silent> <Plug>(openbrowser-search) :<cr>call openbrowser#_keymap_search('v')<cr>
nnoremap <silent> <Plug>(openbrowser-search) :<cr>call openbrowser#_keymap_search('n')<cr>
xnoremap <silent> <Plug>(openbrowser-open-incognito) :<cr>call openbrowser#_keymap_open('v', 0, ['--incognito'])<cr>
nnoremap <silent> <Plug>(openbrowser-open-incognito) :<cr>call openbrowser#_keymap_open('n', 0, ['--incognito'])<cr>
xnoremap <silent> <Plug>(openbrowser-open) :<cr>call openbrowser#_keymap_open('v')<cr>
nnoremap <silent> <Plug>(openbrowser-open) :<cr>call openbrowser#_keymap_open('n')<cr>
vmap <F6> <Plug>(openbrowser-smart-search)
nnoremap <F6> :execute "normal \<Plug>(openbrowser-smart-search)"<cr>|silent !nsBt<cr>
nnoremap <silent> <Plug>CalendarT :cal calendar#show(2)<cr>
nnoremap <silent> <Plug>CalendarH :cal calendar#show(1)<cr>
nnoremap <silent> <Plug>CalendarV :cal calendar#show(0)<cr>
nmap <silent> <SNR>38_DisableFontsizeDefault <Plug>FontsizeDefault
nmap <silent> <SNR>38_DisableFontsizeDec <Plug>FontsizeDec
nmap <silent> <SNR>38_DisableFontsizeInc <Plug>FontsizeInc
nnoremap <silent> <SNR>117_quit :<cr>call fontsize#quit()<cr>
nnoremap <silent> <SNR>117_setDefault :<cr>call fontsize#setDefault()<cr>
nnoremap <silent> <SNR>117_default :<cr>call fontsize#default()<cr>
nnoremap <silent> <SNR>117_dec :<cr>call fontsize#dec()<cr>
nnoremap <silent> <SNR>117_inc :<cr>call fontsize#inc()<cr>
nnoremap <silent> <SNR>117_begin :<cr>call fontsize#begin()<cr>
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
nnoremap <Plug>(matchup-reload) :<cr>MatchupReload<cr>
nnoremap <silent> <Plug>(matchup-double-click) :<cr>call matchup#text_obj#double_click()<cr>
onoremap <silent> <Plug>(matchup-a%) :<cr>call matchup#text_obj#delimited(0, 0, 'delim_all')<cr>
onoremap <silent> <Plug>(matchup-i%) :<cr>call matchup#text_obj#delimited(1, 0, 'delim_all')<cr>
xnoremap <silent> <Plug>(matchup-a%) :<cr>call matchup#text_obj#delimited(0, 1, 'delim_all')<cr>
xnoremap <silent> <Plug>(matchup-i%) :<cr>call matchup#text_obj#delimited(1, 1, 'delim_all')<cr>
onoremap <silent> <Plug>(matchup-Z%) :<cr>call matchup#motion#op('Z%')<cr>
xnoremap <silent> <SNR>102_(matchup-Z%) :<cr>call matchup#motion#jump_inside_prev(1)<cr>
nnoremap <silent> <Plug>(matchup-Z%) <Cmd>call matchup#motion#jump_inside_prev(0)<cr>
onoremap <silent> <Plug>(matchup-z%) :<cr>call matchup#motion#op('z%')<cr>
xnoremap <silent> <SNR>102_(matchup-z%) :<cr>call matchup#motion#jump_inside(1)<cr>
nnoremap <silent> <Plug>(matchup-z%) <Cmd>call matchup#motion#jump_inside(0)<cr>
onoremap <silent> <Plug>(matchup-[%) :<cr>call matchup#motion#op('[%')<cr>
onoremap <silent> <Plug>(matchup-]%) :<cr>call matchup#motion#op(']%')<cr>
xnoremap <silent> <SNR>102_(matchup-[%) :<cr>call matchup#motion#find_unmatched(1, 0)<cr>
xnoremap <silent> <SNR>102_(matchup-]%) :<cr>call matchup#motion#find_unmatched(1, 1)<cr>
nnoremap <silent> <Plug>(matchup-[%) <Cmd>call matchup#motion#find_unmatched(0, 0)<cr>
nnoremap <silent> <Plug>(matchup-]%) <Cmd>call matchup#motion#find_unmatched(0, 1)<cr>
onoremap <silent> <Plug>(matchup-g%) :<cr>call matchup#motion#op('g%')<cr>
xnoremap <silent> <SNR>102_(matchup-g%) :<cr>call matchup#motion#find_matching_pair(1, 0)<cr>
onoremap <silent> <Plug>(matchup-%) :<cr>call matchup#motion#op('%')<cr>
xnoremap <silent> <SNR>102_(matchup-%) :<cr>call matchup#motion#find_matching_pair(1, 1)<cr>
nnoremap <silent> <Plug>(matchup-g%) <Cmd>call matchup#motion#find_matching_pair(0, 0)<cr>
nnoremap <silent> <Plug>(matchup-%) <Cmd>call matchup#motion#find_matching_pair(0, 1)<cr>
nnoremap <silent> <expr> <SNR>102_(wise) empty(g:v_motion_force) ? 'v' : g:v_motion_force
nnoremap <silent> <Plug>(matchup-hi-surround) :<cr>call matchup#matchparen#highlight_surrounding()<cr>
nnoremap <silent> <Plug>(PrettierCliPath) :PrettierCliPath<cr>
nnoremap <silent> <Plug>(PrettierCliVersion) :PrettierCliVersion<cr>
nnoremap <silent> <Plug>(PrettierCli) :PrettierCli<cr>
nnoremap <silent> <Plug>(PrettierVersion) :PrettierVersion<cr>
nnoremap <silent> <Plug>(PrettierPartial) :PrettierPartial<cr>
nnoremap <silent> <Plug>(PrettierFragment) :PrettierFragment<cr>
nnoremap <silent> <Plug>(PrettierAsync) :PrettierAsync<cr>
nnoremap <silent> <Plug>(Prettier) :Prettier<cr>
nnoremap <silent> <Plug>TagalongReapply :call tagalong#Reapply()<cr>
nnoremap <F3> :call StripStoreCurSel()<cr>:Ggrep -i "<cr>s" <cr>|cw
noremap <silent> <expr> <Plug>(asterisk-gz#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-z#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 0, 'is_whole' : 1})
noremap <silent> <expr> <Plug>(asterisk-g#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-#) asterisk#do(mode(1), {'direction' : 0, 'do_jump' : 1, 'is_whole' : 1})
noremap <silent> <expr> <Plug>(asterisk-gz*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-z*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 0, 'is_whole' : 1})
noremap <silent> <expr> <Plug>(asterisk-g*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 0})
noremap <silent> <expr> <Plug>(asterisk-*) asterisk#do(mode(1), {'direction' : 1, 'do_jump' : 1, 'is_whole' : 1})
xnoremap <silent> <Plug>(QuickScopeToggle) :<cr>call quick_scope#Toggle()<cr>
nnoremap <silent> <Plug>(QuickScopeToggle) :call quick_scope#Toggle()<cr>
xnoremap <expr> <Plug>(QuickScopeWallhacks) quick_scope#Wallhacks()
xnoremap <expr> <Plug>(QuickScopeWallhacksT) quick_scope#Wallhacks("T")
xnoremap <expr> <Plug>(QuickScopeWallhacksF) quick_scope#Wallhacks("F")
onoremap <expr> <Plug>(QuickScopeWallhacks) quick_scope#Wallhacks()
onoremap <expr> <Plug>(QuickScopeWallhacksT) quick_scope#Wallhacks("T")
onoremap <expr> <Plug>(QuickScopeWallhacksF) quick_scope#Wallhacks("F")
nnoremap <expr> <Plug>(QuickScopeWallhacks) quick_scope#Wallhacks()
nnoremap <expr> <Plug>(QuickScopeWallhacksT) quick_scope#Wallhacks("T")
nnoremap <expr> <Plug>(QuickScopeWallhacksF) quick_scope#Wallhacks("F")
nnoremap <silent> <Plug>(QuickScopeT) :<cr>call quick_scope#Ready() <cr>| execute "normal!" v:count1 . quick_scope#Aim("T") <cr>| call quick_scope#Reload() <cr>| call quick_scope#DoubleTap()<cr>
xnoremap <expr> <Plug>(QuickScopeT) quick_scope#Ready() . quick_scope#Aim("T") . quick_scope#Reload() . quick_scope#DoubleTap()
onoremap <expr> <Plug>(QuickScopeT) quick_scope#Ready() . quick_scope#Aim("T") . quick_scope#Reload() . quick_scope#DoubleTap()
nnoremap <silent> <Plug>(QuickScopet) :<cr>call quick_scope#Ready() <cr>| execute "normal!" v:count1 . quick_scope#Aim("t") <cr>| call quick_scope#Reload() <cr>| call quick_scope#DoubleTap()<cr>
xnoremap <expr> <Plug>(QuickScopet) quick_scope#Ready() . quick_scope#Aim("t") . quick_scope#Reload() . quick_scope#DoubleTap()
onoremap <expr> <Plug>(QuickScopet) quick_scope#Ready() . quick_scope#Aim("t") . quick_scope#Reload() . quick_scope#DoubleTap()
nnoremap <silent> <Plug>(QuickScopeF) :<cr>call quick_scope#Ready() <cr>| execute "normal!" v:count1 . quick_scope#Aim("F") <cr>| call quick_scope#Reload() <cr>| call quick_scope#DoubleTap()<cr>
xnoremap <expr> <Plug>(QuickScopeF) quick_scope#Ready() . quick_scope#Aim("F") . quick_scope#Reload() . quick_scope#DoubleTap()
onoremap <expr> <Plug>(QuickScopeF) quick_scope#Ready() . quick_scope#Aim("F") . quick_scope#Reload() . quick_scope#DoubleTap()
nnoremap <silent> <Plug>(QuickScopef) :<cr>call quick_scope#Ready() <cr>| execute "normal!" v:count1 . quick_scope#Aim("f") <cr>| call quick_scope#Reload() <cr>| call quick_scope#DoubleTap()<cr>
xnoremap <expr> <Plug>(QuickScopef) quick_scope#Ready() . quick_scope#Aim("f") . quick_scope#Reload() . quick_scope#DoubleTap()
onoremap <expr> <Plug>(QuickScopef) quick_scope#Ready() . quick_scope#Aim("f") . quick_scope#Reload() . quick_scope#DoubleTap()
nnoremap <silent> <Plug>(startify-open-buffers) :<cr>call startify#open_buffers()<cr>
xnoremap <Plug>(comment_toggle_blockwise_visual) <esc><Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())<cr>
xnoremap <Plug>(comment_toggle_linewise_visual) <esc><Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())<cr>
onoremap <silent> <Plug>(leap-cross-window) <Plug>(leap-from-window)
xnoremap <silent> <Plug>(leap-cross-window) <Plug>(leap-from-window)
nnoremap <silent> <Plug>(leap-cross-window) <Plug>(leap-from-window)
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))<cr>
tnoremap <C-K> <Cmd>wincmd k<cr>
tnoremap <C-J> <Cmd>wincmd k<cr>
tnoremap <C-L> <Cmd>wincmd k<cr>
tnoremap <C-H> <Cmd>wincmd k<cr>
nnoremap <F11> :!start explorer %:p:h<cr><cr>
vnoremap <F4> <esc>:call VimWriteClose()<cr>
nnoremap <F4> :call VimWriteClose()<cr>
nnoremap <C-F11> 2<cr>
onoremap <C-F4> <cr><cr>c
nnoremap <C-F4> <cr>c
vnoremap <C-F4> <cr>c
onoremap <C-Tab> <cr><cr>w
nnoremap <C-Tab> <cr>w
vnoremap <C-Tab> <cr>w
noremap <C-Y> <cr>
noremap <C-Z> u
vnoremap <C-S> <cr>:update<cr>
noremap <C-Q> <cr><cr>
vmap <S-Insert> <cr><cr>
nmap <S-Insert> "+gP
omap <S-Insert> "+gP
nmap <C-V> "+gP
omap <C-V> "+gP
vnoremap <C-Insert> "+y
vnoremap <C-C> "+y
vnoremap <S-Del> "+x
vnoremap <C-X> "+x
vnoremap <BS> d
nmap <C-W><C-D> <cr>d
nnoremap <C-S> :update<cr>
onoremap <C-S> :update<cr>
nnoremap <C-L> <cr>l
cnoremap <cr> <cr>gggH<cr>G
inoremap <cr> <cr>gg<cr>gH<cr>G
inoremap <cr>S <Plug>(nvim-surround-insert-line)
inoremap <cr>s <Plug>(nvim-surround-insert)
imap <silent> <cr>% <Plug>(matchup-c_g%)
inoremap <cr> <esc>:update<cr>gi
inoremap <cr> <cr>u<cr>
cmap <cr><cr> <cr>+
inoremap <cr> <cr>u<cr>
inoremap <cr><cr> <cr><cr>
inoremap <cr> <cr><cr>
inoremap <cr> <cr>u
inoremap \<F12> :<esc>call OpenInEmacs()<cr>
inoremap <silent> \<F11> <esc>:echo strftime('%c',getftime(expand('%')))<cr>
inoremap \<F5> :<esc>syntax sync fromstart<cr>
inoremap \\<F5> :call clearmatches()<cr>
inoremap \_ <esc>:call DateFr()<cr>
inoremap \<F4> <esc>:Bdelete other<cr>::sleep<cr>call VimWriteClose()<cr>
iabbr <expr> d8t strftime("%y%m%d(%Hh%Mm%S)")
iabbr <expr> d8s strftime("%d/%m/%y")
iabbr <expr> d8p strftime("%Y-%m-%d %H:%M")
iabbr <expr> d8m strftime("%y%m%d-%Hh%Mm")
iabbr <expr> d8l strftime("%Hh%M %a %d %b %Y")
iabbr <expr> d8c strftime("%y%m%d")
iabbr <expr> d8a strftime("%Y-%m-%d-%a")
iabbr <expr> d8- strftime("%y-%m-%d")
cnoreabbr Flogsp Flogsplit
let &cpo=s:cpo_save
unlet s:cpo_save
set cmdwinheight=20
set completefunc=thesaurus_query#auto_complete_integrate
set directory=~/.vimswap//
set fillchars=fold:\ 
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep\ -uu\ 
set guifont=Lucida_Console:h9
set helplang=fr
set history=500
set ignorecase
set inccommand=split
set keymodel=startsel,stopsel
set keywordprg=:help
set linespace=4
set listchars=eol:│,nbsp:␣,trail:·,tab:»·
set noloadplugins
set matchpairs=(:),{:},[:],<:>
set maxmempattern=800000
set modelines=4
set mouse=a
set mousemodel=popup
set runtimepath=
set runtimepath+=~\\AppData\\Local\\nvim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-all\\opt\\nerdtree
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-peekaboo
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\undotree
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-loclist-follow
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\listtoggle
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-bufkill
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\bufferize.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\targets.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-mark
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\incsearch-fuzzy.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\incsearch.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-textmanip
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-easy-align
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-rooter
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-open-url
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-clifm
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\open-browser.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\calendar-vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-fontsize
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\lf-vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-better-whitespace
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\FoldText
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-LanguageTool
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-langtool
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\thesaurus_query.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\ale
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-ingo-library
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\unix\\opt\\vim-ssh-annex
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-matchup
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\unicode.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-tagbar
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\minimap.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vimtex
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-ps1
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-prettier
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-pandoc-syntax
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-mbsync
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-markdown
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-hjson
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-go
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-dokuwiki
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-closetag
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-bbcode
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-base64
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vader.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\tagalong.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\org.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\neomutt.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\msmtp-scripts-vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\mediawiki.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\emmet-vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\csv.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\conky-syntax.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\CSS-one-line--multi-line-folding
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-rhubarb
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\fugitive-gitlab.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-fugitive
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\gitignore.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-flog
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\dsf.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-all\\opt\\vim-repeat
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-all\\opt\\vim-buffing-wheel
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-all\\opt\\close-buffers.vim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-all\\opt\\vim-asterisk
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-all\\opt\\quick-scope
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-all\\opt\\vim-startify
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-all\\opt\\mru
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-all\\opt\\vim-characterize
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-all\\opt\\context.vim
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\lazy.nvim
set runtimepath+=~/AppData/Local/nvim-data/lazy/lspsaga.nvim
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\nvim-surround
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\nvim-notify
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\fzf-lua
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\Comment.nvim
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\sqlite.lua
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\nvim-neoclip.lua
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\gitsigns.nvim
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\harpoon
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\nvim-treesitter-context
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\diffview.nvim
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\neogit
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\leap.nvim
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\oil.nvim
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\nvim-scrollview
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\bufferline.nvim
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\nvim-lspconfig
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\mason.nvim
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\mason-lspconfig.nvim
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\nvim-tree.lua
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\telescope-fzf-native.nvim
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\telescope-live-grep-args.nvim
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\plenary.nvim
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\telescope.nvim
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\telescope-frecency.nvim
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\nvim-treesitter
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\nvim-web-devicons
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\lualine.nvim
set runtimepath+=C:\\Program\ Files\\Neovim\\share\\nvim\\runtime
set runtimepath+=C:\\Program\ Files\\Neovim\\share\\nvim\\runtime\\pack\\dist\\opt\\cfilter
set runtimepath+=C:\\Program\ Files\\Neovim\\lib\\nvim
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-matchup\\after
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vimtex\\after
set runtimepath+=~\\AppData\\Local\\nvim\\pack\\cp-full\\opt\\vim-markdown\\after
set runtimepath+=~\\AppData\\Local\\nvim\\after
set runtimepath+=~\\AppData\\Local\\nvim-data\\lazy\\readme
set selection=exclusive
set selectmode=mouse,key
set sessionoptions=buffers,curdir,folds,tabpages,winsize,terminal,winpos
set shiftwidth=4
set shortmess=ltToOCFI
set noshowmode
set showtabline=2
set smartcase
set splitbelow
set splitright
set statusline=%#Normal#
set tabline=%!v:lua.nvim_bufferline()
set tabstop=4
set termguicolors
set textwidth=99
set title
set titlelen=19
set titlestring=%{expand(\"%:h\")}%H%M%R%q%W
set undodir=~\\AppData\\Local\\nvim-data\\undo\\
set updatetime=250
set whichwrap=b,s,<,>,[,]
set wildmode=longest,full
set window=61
set winminheight=0
" vim: set ft=vim :
