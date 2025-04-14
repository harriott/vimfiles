vim: set nowrap:

call GrabAllCommands() " pastes below (see $vfv/plugin/packsFull.vim)

    Name              Args Address Complete    Definition
|   ALECodeAction     0    .                   :call ale#codefix#Execute(<range>)
|   ALEComplete       0                        :call ale#completion#GetCompletions('ale-manual')
|   ALEDetail         0                        :call ale#cursor#ShowCursorDetail()
|   ALEDisable        0                        :call ale#toggle#Disable()
|   ALEDisableBuffer  0                        :call ale#toggle#DisableBuffer(bufnr(''))
|   ALEDocumentation  0                        :call ale#hover#ShowDocumentationAtCursor()
|   ALEEnable         0                        :call ale#toggle#Enable()
|   ALEEnableBuffer   0                        :call ale#toggle#EnableBuffer(bufnr(''))
!|  ALEFileRename     0                        :call ale#filerename#Execute()
|   ALEFindReferences *                        :call ale#references#Find(<f-args>)
|   ALEFirst          0                        :call ale#loclist_jumping#JumpToIndex(0)
!|  ALEFix            *            customlist  :call ale#fix#Fix(bufnr(''), '<bang>', <f-args>)
|   ALEFixSuggest     0                        :call ale#fix#registry#Suggest(&filetype)
|   ALEGoToDefinition *                        :call ale#definition#GoToCommandHandler('', <f-args>)
|   ALEGoToImplementation *                    :call ale#definition#GoToCommandHandler('implementation', 
|   ALEGoToTypeDefinition *                    :call ale#definition#GoToCommandHandler('type', <f-args>)
|   ALEHover          0                        :call ale#hover#ShowAtCursor()
|   ALEImport         0                        :call ale#completion#Import()
|   ALEInfo           *                        :call ale#debugging#InfoCommand(<f-args>)
|   ALEInfoToClipboard 0                       :call ale#debugging#InfoToClipboardDeprecatedCommand()
|   ALEInfoToFile     1                        :call ale#debugging#InfoToFile(<f-args>)
|   ALELast           0                        :call ale#loclist_jumping#JumpToIndex(-1)
|   ALELint           0                        :call ale#Queue(0, 'lint_file')
|   ALELintStop       0                        :call ale#engine#Stop(bufnr(''))
|   ALENext           *                        :call ale#loclist_jumping#WrapJump('after', <q-args>)
|   ALENextWrap       0                        :call ale#loclist_jumping#Jump('after', 1)
|   ALEOrganizeImports 0                       :call ale#organize_imports#Execute()
|   ALEPopulateLocList 0                       :call ale#list#ForcePopulateErrorList(0)
|   ALEPopulateQuickfix 0                      :call ale#list#ForcePopulateErrorList(1)
|   ALEPrevious       *                        :call ale#loclist_jumping#WrapJump('before', <q-args>)
|   ALEPreviousWrap   0                        :call ale#loclist_jumping#Jump('before', 1)
!|  ALERename         0                        :call ale#rename#Execute()
|   ALERepeatSelection 0                       :call ale#preview#RepeatSelection()
|   ALEReset          0                        :call ale#toggle#Reset()
|   ALEResetBuffer    0                        :call ale#toggle#ResetBuffer(bufnr(''))
|   ALEStopAllLSPs    0                        :call ale#lsp#reset#StopAllLSPs()
!|  ALEStopLSP        1            customlist  :call ale#lsp#reset#StopLSP(<f-args>, '<bang>')
    ALESymbolSearch   1                        :call ale#symbol#Search(<q-args>)
|   ALEToggle         0                        :call ale#toggle#Toggle()
|   ALEToggleBuffer   0                        :call ale#toggle#ToggleBuffer(bufnr(''))
!   Ag                *                        call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)
    AirlineExtensions 0                        call s:airline_extensions()
!|  AirlineRefresh    0                        call s:airline_refresh(<q-bang>)
|   AirlineTheme      ?            customlist  call <SNR>118_airline_theme(<f-args>)
|   AirlineToggle     0                        call s:airline_toggle()
|   AirlineToggleWhitespace 0                  call airline#extensions#whitespace#toggle()
!   AnsiEsc           0                        :call AnsiEsc#AnsiEsc(<bang>0)
!   BA                0                        :call <SNR>167_GotoBuffer('#',"<bang>")
!   BB                0                        :call <SNR>167_GotoBuffer('bufback',"<bang>")
!|  BCommits          *    %                   let b:fzf_winview = winsaveview() | <line1>,<line2>call fz
!   BD                0                        :call <SNR>167_BufKill('bd',"<bang>")
!   BF                0                        :call <SNR>167_GotoBuffer('bufforward',"<bang>")
!   BLines            *                        call fzf#vim#buffer_lines(<q-args>, <bang>0)
!   BTags             *                        call fzf#vim#buffer_tags(<q-args>, fzf#vim#with_preview({ 
!   BUN               0                        :call <SNR>167_BufKill('bun',"<bang>")
!   BUNDO             0                        :call <SNR>167_UndoKill()
!   BW                0                        :call <SNR>167_BufKill('bw',"<bang>")
!   Bdelete           1            customlist  call s:bclose("bdelete", <bang>0, <f-args>)
    Black             *            customlist  :call black#Black(<f-args>)
    BlackUpgrade      0                        :call black#BlackUpgrade()
    BlackVersion      0                        :call black#BlackVersion()
    BufExplorer       0                        :call BufExplorer()
    BufExplorerHorizontalSplit 0               :call BufExplorerHorizontalSplit()
    BufExplorerVerticalSplit 0                 :call BufExplorerVerticalSplit()
    Bufferize         *            command     call bufferize#Run(<q-args>, '<mods>')
    BufferizeSystem   *            command     <mods> Bufferize echo system(<q-args>)
    BufferizeTimer    *            command     call bufferize#RunWithTimer(<q-args>, '<mods>')
!|  Buffers           ?            buffer      call fzf#vim#buffers(<q-args>, fzf#vim#with_preview({ "pla
!   Bwipeout          1            customlist  call s:bclose("bwipeout", <bang>0, <f-args>)
!   CSVTable          ?    .                   call <SNR>47_Table(<bang>0, <line1>, <line2>, <q-args>)
    Calendar          *                        call calendar#show(0,<f-args>)
    CalendarH         *                        call calendar#show(1,<f-args>)
    CalendarSearch    *                        call calendar#search("<args>")
    CalendarT         *                        call calendar#show(2,<f-args>)
    CalendarVR        *                        call calendar#show(3,<f-args>)
    CapsLockOff       0                        wa | silent !python $HOME/.vim/XkbLockModifiers.py
!   Cfilter           +                        Qf_filter(true, <q-args>, <q-bang>)
!|  Changes           0                        call fzf#vim#changes(<bang>0)
|   Characterize      ?                        echo <SNR>111_info(<q-args>)
|   ClearAllCtrlPCaches 0                      cal ctrlp#clra()
|   ClearCtrlPCache   0                        cal ctrlp#clr()
!   CloseAllBuffers   0                        echoerr '":CloseAllBuffers" is obsolete. Use ":Bdelete all
!   CloseBuffers      0                        echoerr '":CloseBuffers" is obsolete. Use ":Bdelete menu" 
!   CloseBuffersMenu  0                        echoerr '":CloseBuffersMenu" is obsolete. Use ":Bdelete me
!   CloseHiddenBuffers 0                       echoerr '":CloseHiddenBuffers" is obsolete. Use ":Bdelete 
!   CloseNamelessBuffers 0                     echoerr '":CloseNamelessBuffers" is obsolete. Use ":Bdelet
!   CloseOtherBuffers 0                        echoerr '":CloseOtherBuffers" is obsolete. Use ":Bdelete o
!   CloseSelectedBuffers 0                     echoerr '":CloseSelectedBuffers" is obsolete. Use ":Bdelet
    CloseTagDisableBuffer *        file        let b:closetag_disabled = 1
    CloseTagEnableBuffer *         file        let b:closetag_disabled = 0
    CloseTagToggleBuffer *         file        let b:closetag_disabled = exists('b:closetag_disabled') &&
!   CloseThisBuffer   0                        echoerr '":CloseThisBuffer" is obsolete. Use ":Bdelete thi
!|  Colors            0                        call fzf#vim#colors(<bang>0)
!|  Commands          0                        call fzf#vim#commands(<bang>0)
!|  Commits           *    %       file        let b:fzf_winview = winsaveview() | <line1>,<line2>call fz
|   ContextActivate   0                        call context#activate()
|   ContextDisable    0                        call context#disable(1)
|   ContextDisableWindow 0                     call context#disable(0)
|   ContextEnable     0                        call context#enable(1)
|   ContextEnableWindow 0                      call context#enable(0)
|   ContextPeek       0                        call context#peek()
|   ContextToggle     0                        call context#toggle(1)
|   ContextToggleWindow 0                      call context#toggle(0)
|   ContextUpdate     0                        call context#update('command')
    CtrlP             ?            dir         cal ctrlp#init(0, { 'dir': <q-args> })
|   CtrlPBookmarkDir  0                        cal ctrlp#init(ctrlp#bookmarkdir#id())
!   CtrlPBookmarkDirAdd ?          dir         cal ctrlp#call('ctrlp#bookmarkdir#add', '<bang>', <q-args>
    CtrlPBufTag       ?            buffer      cal ctrlp#init(ctrlp#buffertag#cmd(0, <q-args>))
|   CtrlPBufTagAll    0                        cal ctrlp#init(ctrlp#buffertag#cmd(1))
|   CtrlPBuffer       0                        cal ctrlp#init('buf')
    CtrlPChange       ?            buffer      cal ctrlp#init(ctrlp#changes#cmd('fil', <q-args>))
|   CtrlPChangeAll    0                        cal ctrlp#init(ctrlp#changes#cmd(1))
|   CtrlPClearAllCaches 0                      cal ctrlp#clra()
|   CtrlPClearCache   0                        cal ctrlp#clr()
|   CtrlPCurFile      0                        cal ctrlp#init('fil', { 'mode': 'c' })
|   CtrlPCurWD        0                        cal ctrlp#init('fil', { 'mode': '' })
    CtrlPDir          ?            dir         cal ctrlp#init(ctrlp#dir#id(), { 'dir': <q-args> })
    CtrlPLastMode     ?                        cal ctrlp#init(-1, { 'args': <q-args> })
    CtrlPLine         ?            buffer      cal ctrlp#init(ctrlp#line#cmd('buf', <q-args>))
    CtrlPMRUFiles     ?            dir         cal ctrlp#init('mru', { 'dir': <q-args> })
|   CtrlPMixed        0                        cal ctrlp#init(ctrlp#mixed#id())
|   CtrlPQuickfix     0                        cal ctrlp#init(ctrlp#quickfix#id())
|   CtrlPRTS          0                        cal ctrlp#init(ctrlp#rtscript#id())
|   CtrlPRoot         0                        cal ctrlp#init('fil', { 'mode': 'r' })
|   CtrlPTag          0                        cal ctrlp#init(ctrlp#tag#id())
|   CtrlPUndo         0                        cal ctrlp#init(ctrlp#undo#id())
|   DM                1                        call DestroyMark(<q-args>)
    DiffOrig          0                        vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | w
|   DiffVifm          *    0c ?    dir         :call s:StartVifm('<mods>', <count>, 'vert diffsplit', <f-
|   Dirvish           ?            dir         call dirvish#open(<q-args>)
    DoMatchParen      0                        call matchup#matchparen#toggle(1)
    EMCommandLineMap  *                        call EasyMotion#command_line#cmap([<f-args>])
    EMCommandLineNoreMap *                     call EasyMotion#command_line#cnoremap([<f-args>])
    EMCommandLineUnMap 1                       call EasyMotion#command_line#cunmap(<f-args>)
!   EasyAlign         *    .                   <line1>,<line2>call easy_align#align(<bang>0, 0, 'command'
|   EditVifm          *    0c ?    dir         :call s:StartVifm('<mods>', <count>, 'edit', <f-args>)
    Emmet             1                        call emmet#expandAbbr(4, <q-args>)
|   EmmetInstall      0                        call <SNR>49_install_plugin(get(g:, 'user_emmet_mode', 'a'
!|  Explore           *    0c ?    dir         call netrw#Explore(<count>,0,0+<bang>0,<q-args>)
!   FZF               *            dir         call s:cmd(<bang>0, <f-args>)
    FZFMru            0                        call s:MRU_FZF_Run()
|   Fern              *            customlist  call fern#internal#command#fern#command(<q-mods>, [<f-args
|   FernDo            *            customlist  call fern#internal#command#do#command(<q-mods>, [<f-args>]
!   Files             ?            dir         call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang
!|  Filetypes         0                        call fzf#vim#filetypes(<bang>0)
    Flog              *    0       customlist  call flog#cmd#Flog(flog#cmd#flog#args#GetRangeArgs(<range>
!   Floggit           *    .       customlist  call flog#cmd#Floggit('<mods>', '<args>', '<bang>')
    Flogsplit         *    0       customlist  call flog#cmd#Flog(flog#cmd#flog#args#GetRangeArgs(<range>
!   G                 ?    .       customlist  exe fugitive#Command(<line1>, <count>, +"<range>", <bang>0
!|  GBrowse           *    .       customlist  exe fugitive#BrowseCommand(<line1>, <count>, +"<range>", <
!|  GDelete           0                        exe fugitive#DeleteCommand(<line1>, <count>, +"<range>", <
!   GFiles            ?                        call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(<q-ar
    GLVS              0                        call getscript#GetLatestVimScripts()
!|  GMove             1            customlist  exe fugitive#MoveCommand(  <line1>, <count>, +"<range>", <
!|  GRemove           0                        exe fugitive#RemoveCommand(<line1>, <count>, +"<range>", <
!|  GRename           1            customlist  exe fugitive#RenameCommand(<line1>, <count>, +"<range>", <
!|  GUnlink           0                        exe fugitive#UnlinkCommand(<line1>, <count>, +"<range>", <
!|  Gbrowse           *    .       customlist  echoerr ":Gbrowse has been removed in favor of :GBrowse"
!   GcLog             ?    .       customlist  :exe fugitive#LogCommand(<line1>,<count>,+"<range>",<bang>
!|  Gcd               ?            customlist  exe fugitive#Cd(<q-args>, 0)
!   Gclog             ?    .       customlist  :exe fugitive#LogCommand(<line1>,<count>,+"<range>",<bang>
!|  Gdelete           0                        echoerr ":Gdelete has been removed in favor of :GDelete"
!|  Gdiffsplit        *            customlist  exe fugitive#Diffsplit(1, <bang>0, "<mods>", <q-args>)
!|  Gdrop             *            customlist  exe fugitive#DropCommand(<line1>, <count>, +"<range>", <ba
!|  Ge                *            customlist  exe fugitive#Open("edit<bang>", 0, "<mods>", <q-args>)
!|  Gedit             *            customlist  exe fugitive#Open("edit<bang>", 0, "<mods>", <q-args>)
    GetLatestVimScripts 0                      call getscript#GetLatestVimScripts()
    GetScripts        0                        call getscript#GetLatestVimScripts()
!   Ggrep             ?    .  win  customlist  exe fugitive#GrepCommand(<line1>, <count>, +"<range>", <ba
!|  Ghdiffsplit       *            customlist  exe fugitive#Diffsplit(0, <bang>0, "<mods>", <q-args>)
!   Git               ?    .       customlist  exe fugitive#Command(<line1>, <count>, +"<range>", <bang>0
!   GitFiles          ?                        call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(<q-ar
|   GitGutter         0                        call gitgutter#process_buffer(bufnr(''), 1)
|   GitGutterAll      0                        call gitgutter#all(1)
|   GitGutterBufferDisable 0                   call gitgutter#buffer_disable()
|   GitGutterBufferEnable 0                    call gitgutter#buffer_enable()
|   GitGutterBufferToggle 0                    call gitgutter#buffer_toggle()
|   GitGutterDebug    0                        call gitgutter#debug#debug()
|   GitGutterDiffOrig 0                        call gitgutter#difforig()
|   GitGutterDisable  0                        call gitgutter#disable()
|   GitGutterEnable   0                        call gitgutter#enable()
|   GitGutterFold     0                        call gitgutter#fold#toggle()
|   GitGutterLineHighlightsDisable 0           call gitgutter#highlight#line_disable()
|   GitGutterLineHighlightsEnable 0            call gitgutter#highlight#line_enable()
|   GitGutterLineHighlightsToggle 0            call gitgutter#highlight#line_toggle()
|   GitGutterLineNrHighlightsDisable 0         call gitgutter#highlight#linenr_disable()
|   GitGutterLineNrHighlightsEnable 0          call gitgutter#highlight#linenr_enable()
|   GitGutterLineNrHighlightsToggle 0          call gitgutter#highlight#linenr_toggle()
|   GitGutterNextHunk 0    1c ?                call gitgutter#hunk#next_hunk(<count>)
|   GitGutterPrevHunk 0    1c ?                call gitgutter#hunk#prev_hunk(<count>)
|   GitGutterPreviewHunk 0                     call gitgutter#hunk#preview()
|   GitGutterQuickFix 0                        call gitgutter#quickfix(0)
|   GitGutterQuickFixCurrentFile 0             call gitgutter#quickfix(1)
|   GitGutterSignsDisable 0                    call gitgutter#sign#disable()
|   GitGutterSignsEnable 0                     call gitgutter#sign#enable()
|   GitGutterSignsToggle 0                     call gitgutter#sign#toggle()
|   GitGutterStageHunk 0   %                   call gitgutter#hunk#stage(<line1>,<line2>)
|   GitGutterToggle   0                        call gitgutter#toggle()
|   GitGutterUndoHunk 0                        call gitgutter#hunk#undo()
!   GlLog             ?    .       customlist  :exe fugitive#LogCommand(<line1>,<count>,+"<range>",<bang>
!|  Glcd              ?            customlist  exe fugitive#Cd(<q-args>, 1)
!   Glgrep            ?    .  win  customlist  exe fugitive#GrepCommand(0, <count> > 0 ? <count> : 0, +"<
!   Gllog             ?    .       customlist  :exe fugitive#LogCommand(<line1>,<count>,+"<range>",<bang>
!|  Gmove             ?            customlist  echoerr ":Gmove has been removed in favor of :GMove"
    GoInstallBinaries *            customlist  call s:GoInstallBinaries(-1, <f-args>)
    GoPath            ?            dir         call go#path#GoPath(<f-args>)
    GoUpdateBinaries  *            customlist  call s:GoInstallBinaries(1, <f-args>)
!|  Gpedit            *            customlist  exe fugitive#Open("pedit", <bang>0, "<mods>", <q-args>)
!|  Gr                *    .       customlist  exe fugitive#ReadCommand(<line1>, <count>, +"<range>", <ba
!|  Gread             *    .       customlist  exe fugitive#ReadCommand(<line1>, <count>, +"<range>", <ba
!|  Gremove           0                        echoerr ":Gremove has been removed in favor of :GRemove"
!|  Grename           ?            customlist  echoerr ":Grename has been removed in favor of :GRename"
!|  Gsplit            *    .  ?    customlist  exe fugitive#Open((<count> > 0 ? <count> : "").(<count> ? 
!|  Gtabedit          *    .  tab  customlist  exe fugitive#Open((<count> >= 0 ? <count> : "")."tabedit",
!|  Gvdiffsplit       *            customlist  exe fugitive#Diffsplit(0, <bang>0, "vertical <mods>", <q-a
!|  Gvsplit           *    .  ?    customlist  exe fugitive#Open((<count> > 0 ? <count> : "").(<count> ? 
!|  Gw                *            customlist  exe fugitive#WriteCommand(<line1>, <count>, +"<range>", <b
!|  Gwq               *            customlist  exe fugitive#WqCommand(   <line1>, <count>, +"<range>", <b
!|  Gwrite            *            customlist  exe fugitive#WriteCommand(<line1>, <count>, +"<range>", <b
!|  Helptags          0                        call fzf#vim#helptags(fzf#vim#with_preview({ "placeholder"
!|  Hexplore          *    0c ?    dir         call netrw#Explore(<count>,1,2+<bang>0,<q-args>)
!   History           *                        call s:history(<q-args>, fzf#vim#with_preview(), <bang>0)
!   IlluminationDisable 0                      call illuminate#disable_illumination(<bang>0)
!   IlluminationEnable 0                       call illuminate#enable_illumination(<bang>0)
!   IlluminationToggle 0                       call illuminate#toggle_illumination(<bang>0)
    IncSearchMap      *                        call call('s:key_mapping', map([<f-args>], 's:as_keymappin
    IncSearchNoreMap  *                        call call('s:key_mapping', map([<f-args>], 's:as_keymappin
!|  Jumps             0                        call fzf#vim#jumps(<bang>0)
    LP                *                        call   LogiPat(<q-args>,1)
    LPE               +                        echomsg LogiPat(<q-args>)
    LPF               +                        let  s:LogiPatFlags="<args>"
    LPR               *                        call   LogiPat(<q-args>,1,"r")
    LToggle           0                        call s:LListToggle()
!|  LangTool          0                        silent call langtool#langtool('<bang>')
    LanguageToolCheck 0    %                   :call languagetool#Check(<line1>, <line2>)
    LanguageToolClear 0                        :call languagetool#Clear()
!|  Lexplore          *    0c ?    dir         call netrw#Lexplore(<count>,<bang>0,<q-args>)
!   Lfilter           +                        Qf_filter(false, <q-args>, <q-bang>)
!   Lines             *                        call fzf#vim#lines(<q-args>, <bang>0)
!   LiveEasyAlign     *    .                   <line1>,<line2>call easy_align#align(<bang>0, 1, 'command'
!   Locate            +            dir         call fzf#vim#locate(<q-args>, fzf#vim#with_preview(), <ban
|   LoclistFollowGlobalToggle 0                call s:LoclistFollowGlobalToggle()
|   LoclistFollowTargetToggle 0                call s:LoclistFollowTargetToggle()
|   LoclistFollowToggle 0                      call s:LoclistFollowToggle(bufnr(''))
    LogiPat           *                        call   LogiPat(<q-args>,1)
    LogiPatFlags      +                        let  s:LogiPatFlags="<args>"
    MANPAGER          0                        call s:ManPager()
    MRU               ?    0c ?    customlist  call s:MRU_Cmd(<q-args>, <q-mods>, <count>)
    MRUToggle         ?            customlist  call s:MRU_Toggle(<q-args>, <q-mods>)
!|  Maps              0                        call fzf#vim#maps("n", <bang>0)
!   Mark              ?    0  ?    customlist  if <bang>0 | silent call mark#DoMark(<count>, '') | endif 
|   MarkClear         0                        call mark#ClearAll()
|   MarkLoad          ?            customlist  if ! mark#LoadCommand(1, <f-args>) | echoerr ingo#err#Get(
!|  MarkName          ?    0  ?                if ! mark#SetName(<bang>0, <count>, <q-args>) | echoerr in
|   MarkPalette       1            customlist  call <SNR>158_SetPalette(<q-args>)
|   MarkSave          ?            customlist  if ! mark#SaveCommand(<f-args>) | echoerr ingo#err#Get() |
"|  MarkYankDefinitions 0                      if ! mark#YankDefinitions(0, <q-reg>) | echoerr ingo#err#G
"|  MarkYankDefinitionsOneLiner 0              if ! mark#YankDefinitions(1, <q-reg>) | echoerr ingo#err#G
|   Marks             0                        call mark#List()
    MatchupClearTimes 0                        let g:matchup#perf#times = {}
    MatchupReload     0                        call matchup#misc#reload()
    MatchupShowTimes  0                        call matchup#perf#show_times()
!   MatchupWhereAmI   ?                        call matchup#where#print('<bang>' . <q-args>)
    Minimap           0                        call minimap#vim#MinimapOpen()
    MinimapClose      0                        call minimap#vim#MinimapClose()
    MinimapRefresh    0                        call minimap#vim#MinimapRefresh()
    MinimapRescan     0                        call minimap#vim#MinimapRescan()
    MinimapToggle     0                        call minimap#vim#MinimapToggle()
    MinimapUpdateHighlight 0                   call minimap#vim#MinimapUpdateHighlight()
!   MkVimball         +    .       file        call vimball#MkVimball(<line1>,<line2>,<bang>0,<f-args>)
    Mru               ?    0c ?    customlist  call s:MRU_Cmd(<q-args>, <q-mods>, <count>)
    MruRefresh        0                        call s:MRU_Refresh()
    MtaJumpToOtherTag 0                        call MatchTagAlways#GoToEnclosingTag()
|   NERDTree          ?            dir         :call g:NERDTreeCreator.CreateTabTree('<args>')
|   NERDTreeCWD       0                        call NERDTreeCWD()
|   NERDTreeClose     0                        :call g:NERDTree.Close()
|   NERDTreeExplore   ?            dir         :call g:NERDTreeCreator.CreateExploreTree('<args>')
|   NERDTreeFind      ?            file        call s:findAndRevealPath('<args>')
|   NERDTreeFocus     0                        call NERDTreeFocus()
|   NERDTreeFromBookmark 1         customlist  call g:NERDTreeCreator.CreateTabTree('<args>')
|   NERDTreeMirror    0                        call g:NERDTreeCreator.CreateMirror()
|   NERDTreeRefreshRoot 0                      call s:refreshRoot()
|   NERDTreeToggle    ?            dir         :call g:NERDTreeCreator.ToggleTabTree('<args>')
|   NERDTreeToggleVCS ?            dir         :call <SNR>213_ToggleTabTreeVCS('<args>')
|   NERDTreeVCS       ?            dir         :call <SNR>213_CreateTabTreeVCS('<args>')
    NetUserPass       *                        call NetUserPass(<f-args>)
!   NetrwClean        0                        call netrw#Clean(<bang>0)
    NetrwSettings     0                        call netrwSettings#NetrwSettings()
!|  Nexplore          *                        call netrw#Explore(-1,0,0,<q-args>)
    NoMatchParen      0                        call matchup#matchparen#toggle(0)
    Nread             *    1c ?                let s:svpos= winsaveview()|call netrw#NetRead(<count>,<f-a
    Nsource           *                        let s:svpos= winsaveview()|call netrw#NetSource(<f-args>)|
    Ntree             ?                        call netrw#SetTreetop(1,<q-args>)
    Nwrite            *    %                   let s:svpos= winsaveview()|<line1>,<line2>call netrw#NetWr
    OpenBrowser       +                        call openbrowser#_cmd_open(<q-args>)
    OpenBrowserSearch +            customlist  call openbrowser#_cmd_search(<q-args>)
    OpenBrowserSmartSearch +       customlist  call openbrowser#_cmd_smart_search(<q-args>)
    OpenIn            +            file        call open_url#open_in(<f-args>)
    OpenInChrome      1            file        OpenIn Google\ Chrome <q-args>
    OpenInFirefox     1            file        OpenIn Firefox <q-args>
    OpenSearchURL     +            custom      call open_url#engines#search(<f-args>)
    OpenURL           1                        call open_url#open(<q-args>)
    OpenURLFind       0                        call s:FindAndOpen()
|   PeditVifm         *    0c ?    dir         :call s:StartVifm('<mods>', <count>, 'pedit', <f-args>)
!|  Pexplore          *                        call netrw#Explore(-2,0,0,<q-args>)
|   PickerBuffer      0                        call picker#Buffer()
|   PickerBufferSplit 0                        call picker#BufferSplit()
|   PickerBufferTag   0                        call picker#BufferTag()
|   PickerBufferVsplit 0                       call picker#BufferVsplit()
|   PickerEdit        ?            dir         call picker#Edit(<q-args>)
|   PickerHelp        0                        call picker#Help()
|   PickerSplit       ?            dir         call picker#Split(<q-args>)
|   PickerStag        0                        call picker#Stag()
|   PickerTabdrop     ?            dir         call picker#Tabdrop(<q-args>)
|   PickerTabedit     ?            dir         call picker#Tabedit(<q-args>)
|   PickerTag         0                        call picker#Tag()
|   PickerVsplit      ?            dir         call picker#Vsplit(<q-args>)
    Prettier          ?    %                   call prettier#Prettier(g:prettier#exec_cmd_async, <line1>,
    PrettierAsync     ?    %                   call prettier#Prettier(1, <line1>, <line2>, g:prettier#par
    PrettierCli       ?    %                   call prettier#PrettierCli(<q-args>)
    PrettierCliPath   ?    %                   call prettier#PrettierCliPath()
    PrettierCliVersion ?   %                   call prettier#PrettierCli('--version')
    PrettierFragment  ?    %                   call prettier#Prettier(g:prettier#exec_cmd_async, <line1>,
    PrettierPartial   ?    %                   call prettier#Prettier(g:prettier#exec_cmd_async, <line1>,
    PrettierVersion   ?    %                   echom '1.0.0'
    QToggle           0                        call s:QListToggle()
    QuickScopeToggle  0                        call quick_scope#Toggle()
!   RG                *                        call fzf#vim#grep2("rg --column --line-number --no-heading
|   RM                1                        call RestoreMark(<q-args>)
|   RWP               ?                        call RestoreWinPosn(<args>)
!   Rg                *                        call fzf#vim#grep("rg --column --line-number --no-heading 
    RmVimball         *            dir         call vimball#SaveSettings()|call vimball#RmVimball(<f-args
|   SClose            0                        call startify#session_close()
!|  SDelete           ?            customlist  call startify#session_delete(<bang>0, <f-args>)
!|  SLoad             ?            customlist  call startify#session_load(<bang>0, <f-args>)
|   SM                1                        call SaveMark(<q-args>)
!|  SSave             ?            customlist  call startify#session_save(<bang>0, <f-args>)
|   SWP               0                        call SaveWinPosn()
!|  Sexplore          *    0c ?    dir         call netrw#Explore(<count>,1,0+<bang>0,<q-args>)
!   Shdo              *    .       file        call dirvish#shdo(<bang>0 ? argv() : getline(<line1>, <lin
!|  Snippets          0                        call fzf#vim#snippets(<bang>0)
|   SplitVifm         *    0c ?    dir         :call s:StartVifm('<mods>', <count>, 'split', <f-args>)
|   Startify          0                        call startify#insane_in_the_membrane(0)
|   StartifyDebug     0                        call startify#debug()
    SuperTabHelp      0                        :call <SNR>159_SuperTabHelp()
|   TOhtml            0    %                   :call tohtml#Convert2HTML(<line1>, <line2>)
|   TabVifm           *    0c ?    dir         :call s:StartVifm('<mods>', <count>, s:tab_drop_cmd, <f-ar
    TagalongDeinit    0                        call tagalong#Deinit()
    TagalongInit      0                        call tagalong#Init()
    Tagbar            ?                        call tagbar#ToggleWindow(<f-args>)
    TagbarClose       0                        call tagbar#CloseWindow()
    TagbarCurrentTag  *                        echo tagbar#currenttag('%s', 'No current tag', <f-args>)
    TagbarDebug       ?                        call tagbar#debug#start_debug(<f-args>)
    TagbarDebugEnd    0                        call tagbar#debug#stop_debug()
    TagbarForceUpdate 0                        call tagbar#ForceUpdate()
    TagbarGetTypeConfig 1                      call tagbar#gettypeconfig(<f-args>)
    TagbarJump        0                        call tagbar#jump()
    TagbarJumpNext    0                        call tagbar#jumpToNearbyTag(1)
    TagbarJumpPrev    0                        call tagbar#jumpToNearbyTag(-1)
    TagbarOpen        ?                        call tagbar#OpenWindow(<f-args>)
    TagbarOpenAutoClose 0                      call tagbar#OpenWindow('fcj')
!   TagbarSetFoldlevel 1                       call tagbar#SetFoldLevel(<args>, <bang>0)
    TagbarShowTag     0                        call tagbar#highlighttag(1, 1)
    TagbarToggle      ?                        call tagbar#ToggleWindow(<f-args>)
    TagbarTogglePause 0                        call tagbar#toggle_pause()
!   Tags              *                        call fzf#vim#tags(<q-args>, fzf#vim#with_preview({ "placeh
|   Texplore          *    0c ?    dir         call netrw#Explore(<count>,0,6        ,<q-args>)
    TextmanipToggleIgnoreShiftWidth 0          let g:textmanip_move_ignore_shiftwidth = ! g:textmanip_mov
    TextmanipToggleMode *  .                   call textmanip#mode('toggle')
    Thesaurus         1                        :call thesaurus_query#Thesaurus_Query_Lookup(<q-args>, 0)
    ThesaurusQueryLookupCurrentWord 0          :call thesaurus_query#Thesaurus_Query_Lookup(expand('<cwor
    ThesaurusQueryReplace 1                    :call thesaurus_query#Thesaurus_Query_Lookup(<q-args>, 1)
    ThesaurusQueryReplaceCurrentWord 0         :call thesaurus_query#Thesaurus_Query_Lookup(expand('<cwor
    ThesaurusQueryReset 0                      :call thesaurus_query#Thesaurus_Query_Restore_Handler()
    ToggleBufExplorer 0                        :call ToggleBufExplorer()
    TomorrowOptions   0                        :call s:TomorrowOptions()
    Underline         ?                        call s:Underline(<q-args>)
|   UndotreeFocus     0                        :call undotree#UndotreeFocus()
|   UndotreeHide      0                        :call undotree#UndotreeHide()
|   UndotreePersistUndo 0                      :call undotree#UndotreePersistUndo(1)
|   UndotreeShow      0                        :call undotree#UndotreeShow()
|   UndotreeToggle    0                        :call undotree#UndotreeToggle()
    UseVimball        ?            dir         call vimball#Vimball(1,<f-args>)
!   Vader             *    .       file        <line1>,<line2>call s:vader(<bang>0, <f-args>)
!|  Vexplore          *    0c ?    dir         call netrw#Explore(<count>,1,4+<bang>0,<q-args>)
|   Vifm              *    0c ?    dir         :call s:StartVifm('<mods>', <count>, 'edit', <f-args>)
|   VifmCs            *            color       :call vifm#colorconv#convert(<f-args>)
    VimballList       0                        call vimball#Vimball(0)
    VimtexInverseSearch *                      call call('vimtex#view#inverse_search_cmd', s:parse_args(<
    Vimuntar          ?            file        call tar#Vimuntar(<q-args>)
|   VsplitVifm        *    0c ?    dir         :call s:StartVifm('<mods>', <count>, 'vsplit', <f-args>)
|   WLR               1                        call s:WinLineRestore(<q-args>)
!|  Windows           0                        call fzf#vim#windows(fzf#vim#with_preview({ "placeholder":
    WipeReg           0                        for i in range(98,122) | silent! call setreg(nr2char(i), [
