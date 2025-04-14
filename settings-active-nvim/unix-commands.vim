vim: set nowrap:

put=execute('command') " pastes list of all Vim commands below (with inconsistent columnisation)

    Name              Args Address Complete    Definition
b   VimKeywordPrg     1                        :exe 'help' s:Help(<q-args>)
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
|   ALEGoToImplementation *                    :call ale#definition#GoToCommandHandler('implementation', <f-args>)
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
!   AnsiEsc           0                        :call AnsiEsc#AnsiEsc(<bang>0)
!   BA                0                        :call <SNR>134_GotoBuffer('#',"<bang>")
!   BB                0                        :call <SNR>134_GotoBuffer('bufback',"<bang>")
!   BD                0                        :call <SNR>134_BufKill('bd',"<bang>")
!   BF                0                        :call <SNR>134_GotoBuffer('bufforward',"<bang>")
!   BUN               0                        :call <SNR>134_BufKill('bun',"<bang>")
!   BUNDO             0                        :call <SNR>134_UndoKill()
!   BW                0                        :call <SNR>134_BufKill('bw',"<bang>")
!   Bdelete           1            customlist  call s:bclose("bdelete", <bang>0, <f-args>)
    Boole             1            <Lua function> <Lua 218: ~/.local/share/nvim/lazy/boole.nvim/lua/boole.lua:481>
    BufferLineCloseLeft 0                      <Lua 468: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:163>
    BufferLineCloseOthers 0                    <Lua 469: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:164>
    BufferLineCloseRight 0                     <Lua 467: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:162>
    BufferLineCycleNext 0                      <Lua 465: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:160>
    BufferLineCyclePrev 0                      <Lua 466: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:161>
    BufferLineGoToBuffer 1                     <Lua 476: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:171>
    BufferLineGroupClose 1         <Lua function> <Lua 480: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:174>
    BufferLineGroupToggle 1        <Lua function> <Lua 482: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:178>
    BufferLineMoveNext 0                       <Lua 470: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:165>
    BufferLineMovePrev 0                       <Lua 471: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:166>
    BufferLinePick    0                        <Lua 463: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:158>
    BufferLinePickClose 0                      <Lua 464: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:159>
    BufferLineSortByDirectory 0                <Lua 473: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:168>
    BufferLineSortByExtension 0                <Lua 472: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:167>
    BufferLineSortByRelativeDirectory 0        <Lua 474: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:169>
    BufferLineSortByTabs 0                     <Lua 475: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:170>
    BufferLineTabRename *                      <Lua 478: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:173>
    BufferLineTogglePin 0                      <Lua 477: ~/.local/share/nvim/lazy/bufferline.nvim/lua/bufferline.lua:172>
    Bufferize         *            command     call bufferize#Run(<q-args>, '<mods>')
    BufferizeSystem   *            command     <mods> Bufferize echo system(<q-args>)
    BufferizeTimer    *            command     call bufferize#RunWithTimer(<q-args>, '<mods>')
!   Bwipeout          1            customlist  call s:bclose("bwipeout", <bang>0, <f-args>)
    Calendar          *                        call calendar#show(0,<f-args>)
    CalendarH         *                        call calendar#show(1,<f-args>)
    CalendarSearch    *                        call calendar#search("<args>")
    CalendarT         *                        call calendar#show(2,<f-args>)
    CalendarVR        *                        call calendar#show(3,<f-args>)
    CapsLockOff       0                        wa | silent !python $vimfiles/XkbLockModifiers.py
!   Cfilter           +                        <Lua 569: /usr/share/nvim/runtime/pack/dist/opt/cfilter/plugin/cfilter.lua:98>
|   Characterize      ?                        echo <SNR>33_info(<q-args>)
!   CloseAllBuffers   0                        echoerr '":CloseAllBuffers" is obsolete. Use ":Bdelete all" instead.'
!   CloseBuffers      0                        echoerr '":CloseBuffers" is obsolete. Use ":Bdelete menu" instead.'
!   CloseBuffersMenu  0                        echoerr '":CloseBuffersMenu" is obsolete. Use ":Bdelete menu" instead.'
!   CloseHiddenBuffers 0                       echoerr '":CloseHiddenBuffers" is obsolete. Use ":Bdelete hidden" instead.'
!   CloseNamelessBuffers 0                     echoerr '":CloseNamelessBuffers" is obsolete. Use ":Bdelete nameless" instead.'
!   CloseOtherBuffers 0                        echoerr '":CloseOtherBuffers" is obsolete. Use ":Bdelete other" instead.'
!   CloseSelectedBuffers 0                     echoerr '":CloseSelectedBuffers" is obsolete. Use ":Bdelete select" instead.'
    CloseTagDisableBuffer *        file        let b:closetag_disabled = 1
    CloseTagEnableBuffer *         file        let b:closetag_disabled = 0
    CloseTagToggleBuffer *         file        let b:closetag_disabled = exists('b:closetag_disabled') && b:closetag_disabled ? 0 : 1
!   CloseThisBuffer   0                        echoerr '":CloseThisBuffer" is obsolete. Use ":Bdelete this" instead.'
    CmpStatus         0                        <Lua 650: ~/.local/share/nvim/lazy/nvim-cmp/plugin/cmp.lua:57>
                                               Check status of cmp sources
|   ContextActivate   0                        call context#activate()
|   ContextDisable    0                        call context#disable(1)
|   ContextDisableWindow 0                     call context#disable(0)
|   ContextEnable     0                        call context#enable(1)
|   ContextEnableWindow 0                      call context#enable(0)
|   ContextPeek       0                        call context#peek()
|   ContextToggle     0                        call context#toggle(1)
|   ContextToggleWindow 0                      call context#toggle(0)
|   ContextUpdate     0                        call context#update('command')
    CurrentLineWhitespaceOff *                 echoerr 'E492: Deprecated command CurrentLineWhitespaceOff: '.s:errmsg
    CurrentLineWhitespaceOn 0                  echoerr 'E492: Deprecated command CurrentLineWhitespaceOn: '.s:errmsg
|   DM                1                        call DestroyMark(<q-args>)
    DiffOrig          0                        vert new | set buftype=nofile | read ++edit # | 0d_ | diffthis | wincmd p | diffthis
!   DiffviewClose     0                        <Lua 425: ~/.local/share/nvim/lazy/diffview.nvim/plugin/diffview.lua:37>
    DiffviewFileHistory *  .       <Lua function> <Lua 424: ~/.local/share/nvim/lazy/diffview.nvim/plugin/diffview.lua:27>
!   DiffviewFocusFiles 0                       <Lua 426: ~/.local/share/nvim/lazy/diffview.nvim/plugin/diffview.lua:41>
!   DiffviewLog       0                        <Lua 429: ~/.local/share/nvim/lazy/diffview.nvim/plugin/diffview.lua:53>
    DiffviewOpen      *            <Lua function> <Lua 422: ~/.local/share/nvim/lazy/diffview.nvim/plugin/diffview.lua:23>
!   DiffviewRefresh   0                        <Lua 428: ~/.local/share/nvim/lazy/diffview.nvim/plugin/diffview.lua:49>
!   DiffviewToggleFiles 0                      <Lua 427: ~/.local/share/nvim/lazy/diffview.nvim/plugin/diffview.lua:45>
    DigraphNew        1                        call unicode#MkDigraphNew(<f-args>)
!   Digraphs          ?                        call unicode#PrintDigraphs(<q-args>, <q-bang>)
    DisableStripWhitespaceOnSave 0             call <SNR>118_DisableStripWhitespaceOnSave()
    DisableWhitespace 0                        call <SNR>118_DisableWhitespace()
    DoMatchParen      0                        call matchup#matchparen#toggle(1)
    DownloadUnicode   0                        call unicode#Download(1)
!   EasyAlign         *    .                   <line1>,<line2>call easy_align#align(<bang>0, 0, 'command', <q-args>)
    EditQuery         ?                        <Lua 76: vim/_defaults.lua:0>
                                               Edit treesitter query
    Emmet             1                        call emmet#expandAbbr(4, <q-args>)
|   EmmetInstall      0                        call <SNR>53_install_plugin(get(g:, 'user_emmet_mode', 'a'), 1)
    EnableStripWhitespaceOnSave 0              call <SNR>118_EnableStripWhitespaceOnSave()
    EnableWhitespace  0                        call <SNR>118_EnableWhitespace()
!   FZFMru            0                        call s:MRU_FZF_Run(<bang>0)
    Flog              *    0       customlist  call flog#cmd#Flog(flog#cmd#flog#args#GetRangeArgs(<range>, <line1>, <line2>) + [<f-args>])
!   Floggit           *    .       customlist  call flog#cmd#Floggit('<mods>', <q-args>, '<bang>')
    Flogsplit         *    0       customlist  call flog#cmd#Flog(flog#cmd#flog#args#GetRangeArgs(<range>, <line1>, <line2>) + ['-open-cmd=<mods> split', <f-args>])
    FrecencyDelete    ?            file        <Lua 282: ~/.local/share/nvim/lazy/telescope-frecency.nvim/lua/frecency/init.lua:72>
                                               Delete entry from telescope-frecency
!   FrecencyValidate  0                        <Lua 281: ~/.local/share/nvim/lazy/telescope-frecency.nvim/lua/frecency/init.lua:67>
                                               Clean up DB for telescope-frecency
    FzfLua            *    .       <Lua function> <Lua 227: ~/.local/share/nvim/lazy/fzf-lua/plugin/fzf-lua.lua:9>
!   G                 ?    .       customlist  exe fugitive#Command(<line1>, <count>, +"<range>", <bang>0, "<mods>", <q-args>)
!|  GBrowse           *    .       customlist  exe fugitive#BrowseCommand(<line1>, <count>, +"<range>", <bang>0, "<mods>", <q-args>)
!|  GDelete           0                        exe fugitive#DeleteCommand(<line1>, <count>, +"<range>", <bang>0, "<mods>", <q-args>)
!|  GMove             1            customlist  exe fugitive#MoveCommand(  <line1>, <count>, +"<range>", <bang>0, "<mods>", <q-args>)
!|  GRemove           0                        exe fugitive#RemoveCommand(<line1>, <count>, +"<range>", <bang>0, "<mods>", <q-args>)
!|  GRename           1            customlist  exe fugitive#RenameCommand(<line1>, <count>, +"<range>", <bang>0, "<mods>", <q-args>)
!|  GUnlink           0                        exe fugitive#UnlinkCommand(<line1>, <count>, +"<range>", <bang>0, "<mods>", <q-args>)
!|  Gbrowse           *    .       customlist  echoerr ":Gbrowse has been removed in favor of :GBrowse"
!   GcLog             ?    .       customlist  :exe fugitive#LogCommand(<line1>,<count>,+"<range>",<bang>0,"<mods>",<q-args>, "c")
!|  Gcd               ?            customlist  exe fugitive#Cd(<q-args>, 0)
!   Gclog             ?    .       customlist  :exe fugitive#LogCommand(<line1>,<count>,+"<range>",<bang>0,"<mods>",<q-args>, "c")
!|  Gdelete           0                        echoerr ":Gdelete has been removed in favor of :GDelete"
!|  Gdiffsplit        *            customlist  exe fugitive#Diffsplit(1, <bang>0, "<mods>", <q-args>)
!|  Gdrop             *            customlist  exe fugitive#DropCommand(<line1>, <count>, +"<range>", <bang>0, "<mods>", <q-args>)
!|  Ge                *            customlist  exe fugitive#Open("edit<bang>", 0, "<mods>", <q-args>)
!|  Gedit             *            customlist  exe fugitive#Open("edit<bang>", 0, "<mods>", <q-args>)
!   Ggrep             ?    .  win  customlist  exe fugitive#GrepCommand(<line1>, <count>, +"<range>", <bang>0, "<mods>", <q-args>)
!|  Ghdiffsplit       *            customlist  exe fugitive#Diffsplit(0, <bang>0, "<mods>", <q-args>)
!   Git               ?    .       customlist  exe fugitive#Command(<line1>, <count>, +"<range>", <bang>0, "<mods>", <q-args>)
    Gitsigns          *    .       <Lua function> <Lua 494: ~/.local/share/nvim/lazy/gitsigns.nvim/lua/gitsigns.lua:119>
!   GlLog             ?    .       customlist  :exe fugitive#LogCommand(<line1>,<count>,+"<range>",<bang>0,"<mods>",<q-args>, "l")
!|  Glcd              ?            customlist  exe fugitive#Cd(<q-args>, 1)
!   Glgrep            ?    .  win  customlist  exe fugitive#GrepCommand(0, <count> > 0 ? <count> : 0, +"<range>", <bang>0, "<mods>", <q-args>)
!   Gllog             ?    .       customlist  :exe fugitive#LogCommand(<line1>,<count>,+"<range>",<bang>0,"<mods>",<q-args>, "l")
!|  Gmove             ?            customlist  echoerr ":Gmove has been removed in favor of :GMove"
    GoInstallBinaries *            customlist  call s:GoInstallBinaries(-1, <f-args>)
    GoPath            ?            dir         call go#path#GoPath(<f-args>)
    GoUpdateBinaries  *            customlist  call s:GoInstallBinaries(1, <f-args>)
!|  Gpedit            *            customlist  exe fugitive#Open("pedit", <bang>0, "<mods>", <q-args>)
!|  Gr                *    .       customlist  exe fugitive#ReadCommand(<line1>, <count>, +"<range>", <bang>0, "<mods>", <q-args>)
    GrammalecteCheck  0    %                   :call grammalecte#Check(<line1>, <line2>)
    GrammalecteClear  0                        :call grammalecte#Clear()
!|  Gread             *    .       customlist  exe fugitive#ReadCommand(<line1>, <count>, +"<range>", <bang>0, "<mods>", <q-args>)
!|  Gremove           0                        echoerr ":Gremove has been removed in favor of :GRemove"
!|  Grename           ?            customlist  echoerr ":Grename has been removed in favor of :GRename"
    GrugFar           ?    .       custom      <Lua 541: ~/.local/share/nvim/lazy/grug-far.nvim/plugin/grug-far.lua:13>
    GrugFarWithin     ?    .       custom      <Lua 542: ~/.local/share/nvim/lazy/grug-far.nvim/plugin/grug-far.lua:36>
!|  Gsplit            *    .  ?    customlist  exe fugitive#Open((<count> > 0 ? <count> : "").(<count> ? "split" : "edit"), <bang>0, "<mods>", <q-args>)
!|  Gtabedit          *    .  tab  customlist  exe fugitive#Open((<count> >= 0 ? <count> : "")."tabedit", <bang>0, "<mods>", <q-args>)
!|  Gvdiffsplit       *            customlist  exe fugitive#Diffsplit(0, <bang>0, "vertical <mods>", <q-args>)
!|  Gvsplit           *    .  ?    customlist  exe fugitive#Open((<count> > 0 ? <count> : "").(<count> ? "vsplit" : "edit!"), <bang>0, "<mods>", <q-args>)
!|  Gw                *            customlist  exe fugitive#WriteCommand(<line1>, <count>, +"<range>", <bang>0, "<mods>", <q-args>)
!|  Gwq               *            customlist  exe fugitive#WqCommand(   <line1>, <count>, +"<range>", <bang>0, "<mods>", <q-args>)
!|  Gwrite            *            customlist  exe fugitive#WriteCommand(<line1>, <count>, +"<range>", <bang>0, "<mods>", <q-args>)
    H                 ?            <Lua function> <Lua 303: ~/.local/share/nvim/lazy/helpview.nvim/plugin/helpview.lua:778>
                                               Fancy :help
    Help              ?            <Lua function> <Lua 301: ~/.local/share/nvim/lazy/helpview.nvim/plugin/helpview.lua:749>
                                               Fancy :help
    Helpview          *            <Lua function> <Lua 305: ~/.local/share/nvim/lazy/helpview.nvim/plugin/helpview.lua:808>
                                               User command for `helpview.nvim`
!   IlluminateDebug   0                        <Lua 409: ~/.local/share/nvim/lazy/vim-illuminate/lua/illuminate.lua:305>
!   IlluminatePause   0                        <Lua 359: ~/.local/share/nvim/lazy/vim-illuminate/lua/illuminate.lua:235>
!   IlluminatePauseBuf 0                       <Lua 362: ~/.local/share/nvim/lazy/vim-illuminate/lua/illuminate.lua:251>
!   IlluminateResume  0                        <Lua 360: ~/.local/share/nvim/lazy/vim-illuminate/lua/illuminate.lua:239>
!   IlluminateResumeBuf 0                      <Lua 369: ~/.local/share/nvim/lazy/vim-illuminate/lua/illuminate.lua:259>
!   IlluminateToggle  0                        <Lua 361: ~/.local/share/nvim/lazy/vim-illuminate/lua/illuminate.lua:243>
!   IlluminateToggleBuf 0                      <Lua 408: ~/.local/share/nvim/lazy/vim-illuminate/lua/illuminate.lua:247>
    IncSearchMap      *                        call call('s:key_mapping', map([<f-args>], 's:as_keymapping(v:val)') + [0])
    IncSearchNoreMap  *                        call call('s:key_mapping', map([<f-args>], 's:as_keymapping(v:val)') + [1])
!   Inspect           0                        <Lua 74: vim/_defaults.lua:0>
                                               Inspect highlights and extmarks at the cursor
    InspectTree       ?    0c ?                <Lua 75: vim/_defaults.lua:0>
                                               Inspect treesitter language tree for buffer
    LToggle           0                        call s:LListToggle()
!|  LangTool          0                        silent call langtool#langtool('<bang>')
    LanguageToolCheck 0    %                   :call languagetool#Check(<line1>, <line2>)
    LanguageToolClear 0                        :call languagetool#Clear()
!|  Lazy              ?            <Lua function> <Lua 591: ~/.local/share/nvim/lazy/lazy.nvim/lua/lazy/view/commands.lua:113>
                                               Lazy
    LazyDev           *            <Lua function> <Lua 668: ~/.local/share/nvim/lazy/lazydev.nvim/lua/lazydev/config.lua:94>
                                               lazydev.nvim
!   Lfilter           +                        <Lua 570: /usr/share/nvim/runtime/pack/dist/opt/cfilter/plugin/cfilter.lua:106>
!   LiveEasyAlign     *    .                   <line1>,<line2>call easy_align#align(<bang>0, 1, 'command', <q-args>)
|   LoclistFollowGlobalToggle 0                call s:LoclistFollowGlobalToggle()
|   LoclistFollowTargetToggle 0                call s:LoclistFollowTargetToggle()
|   LoclistFollowToggle 0                      call s:LoclistFollowToggle(bufnr(''))
    LspInfo           0                        :checkhealth vim.lsp
    LspInstall        *            custom      <Lua 406: ~/.local/share/nvim/lazy/mason-lspconfig.nvim/lua/mason-lspconfig/api/command.lua:107>
                                               Install one or more LSP servers.
    LspLog            0                        <Lua 371: ~/.local/share/nvim/lazy/nvim-lspconfig/plugin/lspconfig.lua:157>
                                               Opens the Nvim LSP client log.
    LspRestart        ?            <Lua function> <Lua 368: ~/.local/share/nvim/lazy/nvim-lspconfig/plugin/lspconfig.lua:90>
                                               Manually restart the given language client(s)
    LspStart          ?            <Lua function> <Lua 366: ~/.local/share/nvim/lazy/nvim-lspconfig/plugin/lspconfig.lua:70>
                                               Manually launches a language server
    LspStop           ?            <Lua function> <Lua 370: ~/.local/share/nvim/lazy/nvim-lspconfig/plugin/lspconfig.lua:128>
                                               Manually stops the given language client(s)
    LspUninstall      +            custom      <Lua 407: ~/.local/share/nvim/lazy/mason-lspconfig.nvim/lua/mason-lspconfig/api/command.lua:123>
                                               Uninstall one or more LSP servers.
    Lspsaga           +    .       <Lua function> <Lua 628: ~/.local/share/nvim/lazy/lspsaga.nvim/plugin/lspsaga.lua:7>
    LuaSnipListAvailable 0                     <Lua 613: ~/.local/share/nvim/lazy/LuaSnip/plugin/luasnip.lua:66>
    LuaSnipUnlinkCurrent 0                     <Lua 612: ~/.local/share/nvim/lazy/LuaSnip/plugin/luasnip.lua:61>
    MRU               ?    0c ?    customlist  call s:MRU_Cmd(<q-args>, <q-mods>, <count>)
    MRUToggle         ?            customlist  call s:MRU_Toggle(<q-args>, <q-mods>)
!|  Man               *    .  ?    <Lua function> <Lua 578: /usr/share/nvim/runtime/plugin/man.lua:6>
!   Mark              ?    0  ?    customlist  if <bang>0 | silent call mark#DoMark(<count>, '') | endif | if ! mark#SetMark(<count>, <f-args>)[0] | echoerr ingo#err#Get() | endif
|   MarkClear         0                        call mark#ClearAll()
|   MarkLoad          ?            customlist  if ! mark#LoadCommand(1, <f-args>) | echoerr ingo#err#Get() | endif
!|  MarkName          ?    0  ?                if ! mark#SetName(<bang>0, <count>, <q-args>) | echoerr ingo#err#Get() | endif
|   MarkPalette       1            customlist  call <SNR>131_SetPalette(<q-args>)
|   MarkSave          ?            customlist  if ! mark#SaveCommand(<f-args>) | echoerr ingo#err#Get() | endif
"|  MarkYankDefinitions 0                      if ! mark#YankDefinitions(0, <q-reg>) | echoerr ingo#err#Get()| endif
"|  MarkYankDefinitionsOneLiner 0              if ! mark#YankDefinitions(1, <q-reg>) | echoerr ingo#err#Get()| endif
|   Marks             0                        call mark#List()
    Mason             0                        <Lua 349: ~/.local/share/nvim/lazy/mason.nvim/lua/mason/api/command.lua:4>
                                               Opens mason's UI window.
    MasonInstall      +            <Lua function> <Lua 351: ~/.local/share/nvim/lazy/mason.nvim/lua/mason/api/command.lua:143>
                                               Install one or more packages.
    MasonLog          0                        <Lua 356: ~/.local/share/nvim/lazy/mason.nvim/lua/mason/api/command.lua:266>
                                               Opens the mason.nvim log.
    MasonUninstall    +            <Lua function> <Lua 353: ~/.local/share/nvim/lazy/mason.nvim/lua/mason/api/command.lua:210>
                                               Uninstall one or more packages.
    MasonUninstallAll 0                        <Lua 354: ~/.local/share/nvim/lazy/mason.nvim/lua/mason/api/command.lua:222>
                                               Uninstall all packages.
    MasonUpdate       0                        <Lua 355: ~/.local/share/nvim/lazy/mason.nvim/lua/mason/api/command.lua:234>
                                               Update Mason registries.
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
    Mru               ?    0c ?    customlist  call s:MRU_Cmd(<q-args>, <q-mods>, <count>)
    MruRefresh        0                        call s:MRU_Refresh()
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
|   NERDTreeToggleVCS ?            dir         :call <SNR>176_ToggleTabTreeVCS('<args>')
|   NERDTreeVCS       ?            dir         :call <SNR>176_CreateTabTreeVCS('<args>')
    Neogit            *            <Lua function> <Lua 434: ~/.local/share/nvim/lazy/neogit/plugin/neogit.lua:3>
                                               Open Neogit
    NeogitCommit      ?                        <Lua 437: ~/.local/share/nvim/lazy/neogit/plugin/neogit.lua:35>
                                               Open git commit view for specified commit, or HEAD
    NeogitLogCurrent  ?    %       file        <Lua 436: ~/.local/share/nvim/lazy/neogit/plugin/neogit.lua:19>
                                               Open git log (current) for specified file, or current file if unspecified. Optionally accepts a range.
    NeogitResetState  *                        <Lua 435: ~/.local/share/nvim/lazy/neogit/plugin/neogit.lua:15>
                                               Reset any saved flags
    NeovideFocus      0                        <Lua 11>
    NextTrailingWhitespace 0 %                 call <SNR>118_GotoTrailingWhitespace(0, <line1>, <line2>)
    NoMatchParen      0                        call matchup#matchparen#toggle(0)
    Notifications     0                        :lua require("notify")._print_history()<CR>
    NotificationsClear 0                       :lua require("notify").clear_history()<CR>
|   NvimTreeClipboard 0                        <Lua 520: ~/.local/share/nvim/lazy/nvim-tree.lua/lua/nvim-tree/commands.lua:70>
                                               nvim-tree: print clipboard
|   NvimTreeClose     0                        <Lua 516: ~/.local/share/nvim/lazy/nvim-tree.lua/lua/nvim-tree/commands.lua:24>
                                               nvim-tree: close
|   NvimTreeCollapse  0                        <Lua 524: ~/.local/share/nvim/lazy/nvim-tree.lua/lua/nvim-tree/commands.lua:123>
                                               nvim-tree: collapse
|   NvimTreeCollapseKeepBuffers 0              <Lua 525: ~/.local/share/nvim/lazy/nvim-tree.lua/lua/nvim-tree/commands.lua:133>
                                               nvim-tree: collapse, keep directories open
!|  NvimTreeFindFile  0                        <Lua 521: ~/.local/share/nvim/lazy/nvim-tree.lua/lua/nvim-tree/commands.lua:81>
                                               nvim-tree: find file
!   NvimTreeFindFileToggle ?       dir         <Lua 522: ~/.local/share/nvim/lazy/nvim-tree.lua/lua/nvim-tree/commands.lua:97>
                                               nvim-tree: find file, toggle
|   NvimTreeFocus     0                        <Lua 518: ~/.local/share/nvim/lazy/nvim-tree.lua/lua/nvim-tree/commands.lua:50>
                                               nvim-tree: focus
    NvimTreeHiTest    0                        <Lua 526: ~/.local/share/nvim/lazy/nvim-tree.lua/lua/nvim-tree/api.lua:51>
                                               nvim-tree: highlight test
    NvimTreeOpen      ?            dir         <Lua 515: ~/.local/share/nvim/lazy/nvim-tree.lua/lua/nvim-tree/commands.lua:14>
                                               nvim-tree: open
|   NvimTreeRefresh   0                        <Lua 519: ~/.local/share/nvim/lazy/nvim-tree.lua/lua/nvim-tree/commands.lua:60>
                                               nvim-tree: refresh
|   NvimTreeResize    1                        <Lua 523: ~/.local/share/nvim/lazy/nvim-tree.lua/lua/nvim-tree/commands.lua:113>
                                               nvim-tree: resize
    NvimTreeToggle    ?            dir         <Lua 517: ~/.local/share/nvim/lazy/nvim-tree.lua/lua/nvim-tree/commands.lua:35>
                                               nvim-tree: toggle
    NvimWebDeviconsHiTest 0                    <Lua 511: ~/.local/share/nvim/lazy/nvim-web-devicons/lua/nvim-web-devicons.lua:305>
                                               nvim-web-devicons: highlight test
    Oil               *            dir         <Lua 441: ~/.local/share/nvim/lazy/oil.nvim/lua/oil/init.lua:1119>
                                               Open oil file browser on a directory
    Open              1            file        <Lua 77: vim/_defaults.lua:0>
                                               Open file with system default handler. See :help vim.ui.open()
    OpenBrowser       +                        call openbrowser#_cmd_open(<q-args>)
    OpenBrowserSearch +            customlist  call openbrowser#_cmd_search(<q-args>)
    OpenBrowserSmartSearch +       customlist  call openbrowser#_cmd_smart_search(<q-args>)
    OpenIn            +            file        call open_url#open_in(<f-args>)
    OpenInChrome      1            file        OpenIn Google\ Chrome <q-args>
    OpenInFirefox     1            file        OpenIn Firefox <q-args>
    OpenSearchURL     +            custom      call open_url#engines#search(<f-args>)
    OpenURL           1                        call open_url#open(<q-args>)
    OpenURLFind       0                        call s:FindAndOpen()
    PaperColor        0                        :call g:PaperColor()
    PlenaryBustedDirectory +       file        lua require('plenary.test_harness').test_directory_command([[<args>]])
    PlenaryBustedFile 1            file        lua require('plenary.test_harness').test_file([[<args>]])
    Prettier          ?    %                   call prettier#Prettier(g:prettier#exec_cmd_async, <line1>, <line2>, g:prettier#partial_format)
    PrettierAsync     ?    %                   call prettier#Prettier(1, <line1>, <line2>, g:prettier#partial_format)
    PrettierCli       ?    %                   call prettier#PrettierCli(<q-args>)
    PrettierCliPath   ?    %                   call prettier#PrettierCliPath()
    PrettierCliVersion ?   %                   call prettier#PrettierCli('--version')
    PrettierFragment  ?    %                   call prettier#Prettier(g:prettier#exec_cmd_async, <line1>, <line2>, 0)
    PrettierPartial   ?    %                   call prettier#Prettier(g:prettier#exec_cmd_async, <line1>, <line2>, 1)
    PrettierVersion   ?    %                   echom '1.0.0'
    PrevTrailingWhitespace 0 %                 call <SNR>118_GotoTrailingWhitespace(1, <line1>, <line2>)
    QToggle           0                        call s:QListToggle()
    QuickScopeToggle  0                        call quick_scope#Toggle()
|   RM                1                        call RestoreMark(<q-args>)
|   RWP               ?                        call RestoreWinPosn(<args>)
    RenderMarkdown    *            <Lua function> <Lua 229: ~/.local/share/nvim/lazy/render-markdown.nvim/lua/render-markdown/command.lua:31>
                                               render-markdown.nvim commands
|   Rooter            0                        call <SNR>126_rooter()
|   RooterToggle      0                        call <SNR>126_toggle()
|   SClose            0                        call startify#session_close()
!|  SDelete           ?            customlist  call startify#session_delete(<bang>0, <f-args>)
!|  SLoad             ?            customlist  call startify#session_load(<bang>0, <f-args>)
|   SM                1                        call SaveMark(<q-args>)
!|  SSave             ?            customlist  call startify#session_save(<bang>0, <f-args>)
|   SWP               0                        call SaveWinPosn()
|   ScrollViewDisable *            custom      call s:DispatchStateCommand(v:false, <f-args>)
|   ScrollViewEnable  *            custom      call s:DispatchStateCommand(v:true, <f-args>)
|   ScrollViewFirst   *            custom      lua require('scrollview').first(   #{<f-args>} > 0 and {<f-args>} or nil)
|   ScrollViewLast    *            custom      lua require('scrollview').last(   #{<f-args>} > 0 and {<f-args>} or nil)
!|  ScrollViewLegend  *            custom      lua require('scrollview').legend(   #{<f-args>} > 0 and {<f-args>} or nil, '<bang>' == '!')
|   ScrollViewNext    *    1c ?    custom      lua require('scrollview').next(   #{<f-args>} > 0 and {<f-args>} or nil, <count>)
|   ScrollViewPrev    *    1c ?    custom      lua require('scrollview').prev(   #{<f-args>} > 0 and {<f-args>} or nil, <count>)
|   ScrollViewRefresh 0                        lua require('scrollview').refresh()
|   ScrollViewToggle  *            custom      call s:DispatchStateCommand(v:null, <f-args>)
    SearchUnicode     1                        call unicode#PrintUnicode(<q-args>, '')
|   Startify          0                        call startify#insane_in_the_membrane(0)
|   StartifyDebug     0                        call startify#debug()
!   StripWhitespace   0    %                   call <SNR>118_StripWhitespaceCommand(<line1>, <line2>, <bang>0)
!   StripWhitespaceOnChangedLines 0 %          call <SNR>118_StripWhitespaceOnChangedLinesCommand(<line1>, <line2>, <bang>0)
|   TOhtml            ?    %                   <Lua 582: /usr/share/nvim/runtime/plugin/tohtml.lua:6>
|   TSBufDisable      1            custom      lua require'nvim-treesitter.configs'.commands.TSBufDisable['run<bang>'](<f-args>)
|   TSBufEnable       1            custom      lua require'nvim-treesitter.configs'.commands.TSBufEnable['run<bang>'](<f-args>)
|   TSBufToggle       1            custom      lua require'nvim-treesitter.configs'.commands.TSBufToggle['run<bang>'](<f-args>)
|   TSConfigInfo      0                        lua require'nvim-treesitter.configs'.commands.TSConfigInfo['run<bang>'](<f-args>)
    TSContextDisable  0                        <Lua 342: ~/.local/share/nvim/lazy/nvim-treesitter-context/lua/treesitter-context.lua:254>
    TSContextEnable   0                        <Lua 341: ~/.local/share/nvim/lazy/nvim-treesitter-context/lua/treesitter-context.lua:196>
    TSContextToggle   0                        <Lua 343: ~/.local/share/nvim/lazy/nvim-treesitter-context/lua/treesitter-context.lua:264>
|   TSDisable         +            custom      lua require'nvim-treesitter.configs'.commands.TSDisable['run<bang>'](<f-args>)
|   TSEditQuery       +            custom      lua require'nvim-treesitter.configs'.commands.TSEditQuery['run<bang>'](<f-args>)
|   TSEditQueryUserAfter +         custom      lua require'nvim-treesitter.configs'.commands.TSEditQueryUserAfter['run<bang>'](<f-args>)
|   TSEnable          +            custom      lua require'nvim-treesitter.configs'.commands.TSEnable['run<bang>'](<f-args>)
!|  TSInstall         +            custom      lua require'nvim-treesitter.install'.commands.TSInstall['run<bang>'](<f-args>)
!|  TSInstallFromGrammar +         custom      lua require'nvim-treesitter.install'.commands.TSInstallFromGrammar['run<bang>'](<f-args>)
|   TSInstallInfo     0                        lua require'nvim-treesitter.info'.commands.TSInstallInfo['run<bang>'](<f-args>)
!|  TSInstallSync     +            custom      lua require'nvim-treesitter.install'.commands.TSInstallSync['run<bang>'](<f-args>)
|   TSModuleInfo      ?            custom      lua require'nvim-treesitter.info'.commands.TSModuleInfo['run<bang>'](<f-args>)
|   TSToggle          +            custom      lua require'nvim-treesitter.configs'.commands.TSToggle['run<bang>'](<f-args>)
|   TSUninstall       +            custom      lua require'nvim-treesitter.install'.commands.TSUninstall['run<bang>'](<f-args>)
|   TSUpdate          *            custom      lua require'nvim-treesitter.install'.commands.TSUpdate['run<bang>'](<f-args>)
|   TSUpdateSync      *            custom      lua require'nvim-treesitter.install'.commands.TSUpdateSync['run<bang>'](<f-args>)
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
    Telescope         *            <Lua function> <Lua 268: ~/.local/share/nvim/lazy/telescope.nvim/plugin/telescope.lua:107>
    TextmanipToggleIgnoreShiftWidth 0          let g:textmanip_move_ignore_shiftwidth = ! g:textmanip_move_ignore_shiftwidth | echo g:textmanip_move_ignore_shiftwidth
    TextmanipToggleMode *  .                   call textmanip#mode('toggle')
    Thesaurus         1                        :call thesaurus_query#Thesaurus_Query_Lookup(<q-args>, 0)
    ThesaurusQueryLookupCurrentWord 0          :call thesaurus_query#Thesaurus_Query_Lookup(expand('<cword>'), 0)
    ThesaurusQueryReplace 1                    :call thesaurus_query#Thesaurus_Query_Lookup(<q-args>, 1)
    ThesaurusQueryReplaceCurrentWord 0         :call thesaurus_query#Thesaurus_Query_Lookup(expand('<cword>'), 1)
    ThesaurusQueryReset 0                      :call thesaurus_query#Thesaurus_Query_Restore_Handler()
    ToggleStripWhitespaceOnSave 0              call <SNR>118_ToggleStripWhitespaceOnSave()
    ToggleWhitespace  0                        call <SNR>118_ToggleWhitespace()
!   Trouble           *    .       <Lua function> <Lua 152: ~/.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/handler/cmd.lua:16>
    Tutor             ?            custom      call tutor#TutorCmd(<q-args>)
    Underline         ?                        call s:Underline(<q-args>)
|   UndotreeFocus     0                        :call undotree#UndotreeFocus()
|   UndotreeHide      0                        :call undotree#UndotreeHide()
|   UndotreePersistUndo 0                      :call undotree#UndotreePersistUndo(1)
|   UndotreeShow      0                        :call undotree#UndotreeShow()
|   UndotreeToggle    0                        :call undotree#UndotreeToggle()
    UnicodeCache      0                        call unicode#MkCache()
!   UnicodeDownload   0                        call unicode#Download(1, <q-bang>=='!')
    UnicodeName       *            customlist  call unicode#GetUniChar(<f-args>)
!   UnicodeSearch     1                        call unicode#PrintUnicode(<q-args>, <q-bang>=='!')
!|  UnicodeTable      0                        call unicode#PrintUnicodeTable(<q-bang>=='!')
|   UpdateRemotePlugins 0                      call remote#host#UpdateRemotePlugins()
!   Vader             *    .       file        <line1>,<line2>call s:vader(<bang>0, <f-args>)
    VimtexInverseSearch *                      call call('vimtex#view#inverse_search_cmd', s:parse_args(<q-args>))
!   VsnipOpen         *                        call s:open_command(<bang>0, 'vsplit', <q-args>)
!   VsnipOpenEdit     *                        call s:open_command(<bang>0, 'edit', <q-args>)
!   VsnipOpenSplit    *                        call s:open_command(<bang>0, 'split', <q-args>)
!   VsnipOpenVsplit   *                        call s:open_command(<bang>0, 'vsplit', <q-args>)
|   VsnipYank         ?    .                   call s:add_command(<line1>, <line2>, <q-args>)
|   WLR               1                        call s:WinLineRestore(<q-args>)
    WipeReg           0                        for i in range(98,122) | silent! call setreg(nr2char(i), []) | endfor
