
call GrabAllFunctions() " pastes below (see $vfpl/plugin.vim)

def <SNR>167_Qf_filter(qf: bool, searchpat: string, bang: string)
def <SNR>17_BMAdd()
def <SNR>17_BMCanAdd(name: string, num: number): bool
def <SNR>17_BMFilename(name: string, num: number)
def <SNR>17_BMHash(name: string): number
def <SNR>17_BMHash2(name: string): string
def <SNR>17_BMMunge(fname: string, bnum: number): string
def <SNR>17_BMRemove()
def <SNR>17_BMShow()
def <SNR>17_BMTruncName(fname: string): string
def <SNR>17_EditVimrc()
def <SNR>17_FileFormat()
def <SNR>17_FixFText(): string
def <SNR>17_Helpfind()
def <SNR>17_LoadVimSesn()
def <SNR>17_SaveVimSesn()
def <SNR>17_SearchP()
def <SNR>17_SelectAll()
def <SNR>17_SetupColorSchemes()
def <SNR>17_SetupCompilers()
def <SNR>17_SetupKeymaps()
def <SNR>17_SetupLazyloadMenus()
def <SNR>17_SpellDel()
def <SNR>17_SpellLang(encChanged: unknown = false)
def <SNR>17_SpellPopup()
def <SNR>17_SpellReplace(n: number)
def <SNR>17_SynOnOff()
def <SNR>17_TagFiles()
def <SNR>17_TextWidth()
def <SNR>17_ToggleGuiOption(option: string)
def <SNR>17_XxdBack()
def <SNR>17_XxdConv()
def <SNR>17_XxdFind()
def <SNR>21_LoadFTPlugin()
def <SNR>22_LoadIndent()
def FlogGetVimBinGraph(git_cmd: string): dict<any>
def FlogGetVimInternalGraph(git_cmd: string): dict<any>
def FlogUpdateVimBinGraph(graph: dict<any>): dict<any>
def FlogUpdateVimInternalGraph(graph: dict<any>): dict<any>
def MenuExplOpen()
function <SNR>102_conf(name, default)
function <SNR>102_defs(commands)
function <SNR>102_fzf_restore_colors()
function <SNR>102_fzf_vim_term()
function <SNR>102_history(arg, extra, bang)
function <SNR>105_ChangeCmp(left, right) abort
function <SNR>105_EscapeMenuName(text) abort
function <SNR>105_GetCodeActions(linter, options) abort
function <SNR>105_Setup(enabled) abort
function <SNR>105_UpdateCursor(cursor, start, end, offset) abort
function <SNR>105_UpdateMenu(data, menu_items) abort
function <SNR>10_StarSetf(ft)
function <SNR>110_info(arg) abort
function <SNR>114_HasVisibleBackground(syntaxId) abort
function <SNR>117_FocusGainedHandler(timer)
function <SNR>117_airline_extensions()
function <SNR>117_airline_refresh(...)
function <SNR>117_airline_theme(...)
function <SNR>117_airline_toggle()
function <SNR>117_get_airline_themes(a, l, p)
function <SNR>117_init()
function <SNR>117_on_colorscheme_changed()
function <SNR>117_on_cursor_moved()
function <SNR>117_on_focus_gained()
function <SNR>117_on_window_changed(event)
function <SNR>117_rand(max) abort
function <SNR>117_random_theme() abort
function <SNR>118_check_defined(variable, default)
function <SNR>126_addtomrufs(fname)
function <SNR>126_chop(mrufs)
function <SNR>126_excl(fn)
function <SNR>126_mergelists()
function <SNR>126_record(bufnr)
function <SNR>126_reformat(mrufs, ...)
function <SNR>126_savetofile(mrufs)
function <SNR>127_BufReadCmd() abort
function <SNR>127_SessionLoadPost() abort
function <SNR>127_warn(message) abort
function <SNR>130_auto_buffer_delete(bufutil_paths) abort
function <SNR>130_auto_buffer_rename(bufutil_pairs) abort
function <SNR>130_call(name, ...) abort
function <SNR>130_call_without_guard(name, ...) abort
function <SNR>130_map_cd(helper, command) abort
function <SNR>130_map_copy(helper) abort
function <SNR>130_map_move(helper) abort
function <SNR>130_map_new_dir(helper) abort
function <SNR>130_map_new_file(helper) abort
function <SNR>130_map_new_path(helper) abort
function <SNR>130_map_open_system(helper) abort
function <SNR>130_map_remove(helper) abort
function <SNR>130_map_trash(helper) abort
function <SNR>130_new_dir(helper, name) abort
function <SNR>130_new_file(helper, name) abort
function <SNR>131__dot_to_sharp(name) abort
function <SNR>131__extract_files(pattern, files) abort
function <SNR>131__file2module(file) abort
function <SNR>131__format_throwpoint(throwpoint) abort
function <SNR>131__get_builtin_module(name) abort
function <SNR>131__get_func_info(name) abort
function <SNR>131__get_module(name) abort dict
function <SNR>131__global_vital_files() abort
function <SNR>131__import(name) abort dict
function <SNR>131__import_func_name(plugin_name, module_name) abort
function <SNR>131__module_path(name) abort
function <SNR>131__module_sid(name) abort
function <SNR>131__module_sid_base_dir() abort
function <SNR>131__self_vital_files() abort
function <SNR>131__sfuncname(sid, funcname) abort
function <SNR>131__sid(path, filter_pattern) abort
function <SNR>131__source(path) abort
function <SNR>131__unify_path(path) abort
function <SNR>131_exists(name) abort dict
function <SNR>131_import(name, ...) abort dict
function <SNR>131_load(...) abort dict
function <SNR>131_new(plugin_name) abort
function <SNR>131_plugin_name() abort dict
function <SNR>131_search(pattern) abort dict
function <SNR>131_sid2sfuncs(sid) abort
function <SNR>131_unload() abort dict
function <SNR>131_vital_files() abort
function <SNR>132__all(promises, resolve, reject) abort
function <SNR>132__chain(promise_factories, results) abort
function <SNR>132__fulfill(promise, value) abort
function <SNR>132__handle_thenable(promise, thenable) abort
function <SNR>132__invoke_callback(settled, promise, callback, result, ...) abort
function <SNR>132__next_id() abort
function <SNR>132__notify_done(wg, index, value) abort
function <SNR>132__on_finally(CB, parent, Result) abort
function <SNR>132__promise_catch(...) abort dict
function <SNR>132__promise_finally(...) abort dict
function <SNR>132__promise_then(...) abort dict
function <SNR>132__publish(promise, ...) abort
function <SNR>132__race(promises, resolve, reject) abort
function <SNR>132__reject(promise, ...) abort
function <SNR>132__resolve(promise, ...) abort
function <SNR>132__subscribe(parent, child, on_fulfilled, on_rejected) abort
function <SNR>132__vital_created(module) abort
function <SNR>132__vital_depends() abort
function <SNR>132__vital_loaded(V) abort
function <SNR>132_all(promises) abort
function <SNR>132_chain(promise_factories) abort
function <SNR>132_is_available() abort
function <SNR>132_is_promise(maybe_promise) abort
function <SNR>132_new(resolver) abort
function <SNR>132_noop(...) abort
function <SNR>132_on_unhandled_rejection(on_unhandled_rejection) abort
function <SNR>132_race(promises) abort
function <SNR>132_reject(...) abort
function <SNR>132_resolve(...) abort
function <SNR>132_wait(promise, ...) abort
function <SNR>134__default_error_handler() abort
function <SNR>134__worker(...) abort
function <SNR>134_call(fn, ...) abort
function <SNR>134_get_error_handler() abort
function <SNR>134_get_max_workers() abort
function <SNR>134_set_error_handler(handler) abort
function <SNR>134_set_max_workers(n) abort
function <SNR>137_config(scriptfile, default) abort
function <SNR>137_define(prefix, default) abort
function <SNR>137_translate(scriptfile) abort
function <SNR>138_MRU_AddFile(acmd_bufnr) abort
function <SNR>138_MRU_Cmd(pat, splitdir, winsz) abort
function <SNR>138_MRU_Complete(ArgLead, CmdLine, CursorPos) abort
function <SNR>138_MRU_Delete_From_List()
function <SNR>138_MRU_Edit_File(filename, sanitized, splitdir) abort
function <SNR>138_MRU_FZF_EditFile(fname) abort
function <SNR>138_MRU_FZF_Run() abort
function <SNR>138_MRU_LoadList() abort
function <SNR>138_MRU_Open_File_In_Tab(fname, esc_fname) abort
function <SNR>138_MRU_Open_Window(pat, splitdir, winsz) abort
function <SNR>138_MRU_Refresh()
function <SNR>138_MRU_Refresh_Menu() abort
function <SNR>138_MRU_SaveList() abort
function <SNR>138_MRU_Select_File_Cmd(opt) abort range
function <SNR>138_MRU_Toggle(pat, splitdir) abort
function <SNR>138_MRU_Warn_Msg(msg) abort
function <SNR>138_MRU_Window_Edit_File(fname, multi, edit_type, open_type) abort
function <SNR>138_MRU_add_files_to_menu(prefix, file_list) abort
function <SNR>138_MRU_escape_filename(fname) abort
function <SNR>139_add_menu() abort
function <SNR>140_DetermineTermEnv() abort
function <SNR>140_DisplayVifmHelp() abort
function <SNR>140_DropGoneBuffers(buffer_snapshot) abort
function <SNR>140_GetVifmHelpTopic() abort
function <SNR>140_HandleCwdOut(data) abort
function <SNR>140_HandleRunResults(exitcode, listf, typef, editcmd, bufsnapshot) abort
function <SNR>140_PreparePath(path) abort
function <SNR>140_StartCwdJob() abort
function <SNR>140_StartVifm(mods, count, editcmd, ...) abort
function <SNR>140_TakeBufferSnapshot() abort
function <SNR>140_UniqueBufferName(name) abort
function <SNR>145_isdir(dir)
function <SNR>146_get_git_root(current_dir) abort
function <SNR>146_get_highlight_group(us, them, is_directory) abort
function <SNR>146_get_indicator(us, them) abort
function <SNR>146_get_indicator_name(us, them) abort
function <SNR>146_get_status_list(current_dir) abort
function <SNR>146_highlight_file(dir, file_name, us, them, is_directory) abort
function <SNR>146_is_in_arglist(file) abort
function <SNR>146_set_mappings() abort
function <SNR>146_setup_highlighting() abort
function <SNR>146_unmerged_status_comparator(a, b) abort
function <SNR>147_FindAndOpen() abort
function <SNR>147_SetGlobalOpt(opt, val)
function <SNR>148_on_vimenter()
function <SNR>148_on_vimleavepre()
function <SNR>148_update_oldfiles(file)
function <SNR>150_abs(v)
function <SNR>150_easy_align_op(type, ...)
function <SNR>150_easy_align_repeat()
function <SNR>150_generic_easy_align_op(type, vmode, live)
function <SNR>150_live_easy_align_op(type, ...)
function <SNR>150_remember_visual(mode)
function <SNR>150_repeat_in_visual()
function <SNR>150_repeat_visual()
function <SNR>150_set_repeat()
function <SNR>151_keymap(mode, action, dir)
function <SNR>151_obsolete(what)
function <SNR>151_set_default(dict)
function <SNR>152_as_keymapping(key) abort
function <SNR>152_key_mapping(lhs, rhs, noremap) abort
function <SNR>153_config_fuzzy(...) abort
function <SNR>153_config_fuzzyspell(...) abort
function <SNR>153_config_fuzzyword(...) abort
function <SNR>154_set_highlight_colors()
function <SNR>156_default_mapping(motions, do_mapping)
function <SNR>156_motion_map_helper(motions)
function <SNR>157_DefineHighlightings(palette, isOverride)
function <SNR>157_GetPalette()
function <SNR>157_MarkPaletteComplete(ArgLead, CmdLine, CursorPos)
function <SNR>157_SetPalette(paletteName)
function <SNR>158_CaptureKeyMap(key)
function <SNR>158_CaptureKeyPresses()
function <SNR>158_ClosePreview()
function <SNR>158_CommandLineCompletion()
function <SNR>158_CompletionMode()
function <SNR>158_CompletionReset(char)
function <SNR>158_ContextCompletion()
function <SNR>158_ContextDiscover()
function <SNR>158_ContextText()
function <SNR>158_EnableLongestEnhancement()
function <SNR>158_EnableNoCompleteAfterReset()
function <SNR>158_ExpandMap(map)
function <SNR>158_Init()
function <SNR>158_InitBuffer()
function <SNR>158_IsNoCompleteAfterReset()
function <SNR>158_IsPreviewOpen()
function <SNR>158_ManualCompletionEnter()
function <SNR>158_ReleaseKeyPresses()
function <SNR>158_SetCompletionType()
function <SNR>158_SetDefaultCompletionType()
function <SNR>158_StartCompletionMode()
function <SNR>158_SuperTabHelp()
function <SNR>158_WillComplete(...)
function <SNR>159_addAllMappings()
function <SNR>159_getKeysAsList(keys)
function <SNR>161_beep()
function <SNR>161_changesurround(...)
function <SNR>161_closematch(str)
function <SNR>161_dosurround(...)
function <SNR>161_extractafter(str)
function <SNR>161_extractbefore(str)
function <SNR>161_fixindent(str, spc)
function <SNR>161_getchar()
function <SNR>161_inputreplacement()
function <SNR>161_inputtarget()
function <SNR>161_insert(...)
function <SNR>161_opfunc(type, ...) abort
function <SNR>161_opfunc2(...) abort
function <SNR>161_process(string)
function <SNR>161_redraw()
function <SNR>161_reindent() abort
function <SNR>161_wrap(string, char, type, removed, special)
function <SNR>161_wrapreg(reg, char, removed, special)
function <SNR>162_ActivateBuffer()
function <SNR>162_AddBufToCurrentTab(bufnr)
function <SNR>162_AssociatedTab(bufnr)
function <SNR>162_BuildBufferList()
function <SNR>162_CatalogBuffers()
function <SNR>162_Cleanup()
function <SNR>162_Close()
function <SNR>162_CreateHelp()
function <SNR>162_DeactivateBuffer(remove)
function <SNR>162_DeleteBuffer(buf, mode)
function <SNR>162_DisplayBufferList()
function <SNR>162_Error(msg)
function <SNR>162_GetBufferInfo(bufnr)
function <SNR>162_GetHelpStatus()
function <SNR>162_GetTabNbr(bufNbr)
function <SNR>162_GetWinNbr(tabNbr, bufNbr)
function <SNR>162_Initialize()
function <SNR>162_IsInCurrentTab(bufnr)
function <SNR>162_ListedAndCurrentTab(buf)
function <SNR>162_MRUCmp(line1, line2)
function <SNR>162_MRUListShow()
function <SNR>162_MRUPop(bufnr)
function <SNR>162_MRUPush(buf)
function <SNR>162_MapKeys()
function <SNR>162_ReSortListing()
function <SNR>162_RebuildBufferList(...)
function <SNR>162_RemoveBufFromOtherTabs(bufnr)
function <SNR>162_RemoveBuffer(mode)
function <SNR>162_Reset()
function <SNR>162_ReverseSortSelect()
function <SNR>162_SelectBuffer(...)
function <SNR>162_Set(var, default)
function <SNR>162_SetLocalSettings()
function <SNR>162_Setup()
function <SNR>162_SetupSyntax()
function <SNR>162_ShouldIgnore(buf)
function <SNR>162_SortListing()
function <SNR>162_SortReverse()
function <SNR>162_SortSelect()
function <SNR>162_StringWidth(s)
function <SNR>162_ToggleFindActive()
function <SNR>162_ToggleHelp()
function <SNR>162_ToggleOnlyOneTab()
function <SNR>162_ToggleShowRelativePath()
function <SNR>162_ToggleShowTabBuffer()
function <SNR>162_ToggleShowUnlisted()
function <SNR>162_ToggleSplitOutPathName()
function <SNR>162_UpdateHelpStatus()
function <SNR>162_UpdateTabBufData(bufnr)
function <SNR>162_Warning(msg)
function <SNR>164_append_bang(command, bang)
function <SNR>164_bclose(command, bang, option)
function <SNR>164_bclose_completion_options(ArgLead, CmdLine, CursorPos) abort
function <SNR>164_bclose_menu(command, bang)
function <SNR>164_close_buffers(command, bang, buffer_numbers)
function <SNR>164_get_menu_confirm_string()
function <SNR>164_get_relevant_bufinfo(command)
function <SNR>165_buf(c)
function <SNR>166_BufKill(cmd, bang)
function <SNR>166_CreateUniqueCommand(lhs, rhs)
function <SNR>166_CreateUniqueMapping(lhs, rhs, ...)
function <SNR>166_Debug(level, ...)
function <SNR>166_GotoBuffer(cmd, bang)
function <SNR>166_IsBufferNew(buf)
function <SNR>166_RestoreView()
function <SNR>166_RestoreWindowPos()
function <SNR>166_SaveView()
function <SNR>166_SaveWindowPos()
function <SNR>166_SwitchToNewBuffer(bang)
function <SNR>166_UndoKill()
function <SNR>166_UpdateLastColumn(event)
function <SNR>166_UpdateList(event)
function <SNR>168_BufferCount() abort
function <SNR>168_LListToggle() abort
function <SNR>168_QListToggle() abort
function <SNR>169_BufDeleteHook(bnr, file_) abort
function <SNR>169_BufReadPostHook(bnr, file_) abort
function <SNR>169_LoclistFollow(scope, bnr) abort
function <SNR>169_LoclistFollowGlobalToggle(...)
function <SNR>169_LoclistFollowHookEvents()
function <SNR>169_LoclistFollowPos(scope) abort
function <SNR>169_LoclistFollowSize(scope) abort
function <SNR>169_LoclistFollowTarget()
function <SNR>169_LoclistFollowTargetToggle()
function <SNR>169_LoclistFollowToggle(bnr, ...)
function <SNR>169_LoclistsFollow(bnr) abort
function <SNR>173_border_opt(window)
function <SNR>173_calc_size(max, val, dict)
function <SNR>173_callback(dict, lines) abort
function <SNR>173_cmd(bang, ...) abort
function <SNR>173_collect(temps) abort
function <SNR>173_common_sink(action, lines) abort
function <SNR>173_compare_binary_versions(a, b)
function <SNR>173_compare_versions(a, b)
function <SNR>173_create_popup(opts) abort
function <SNR>173_default_layout()
function <SNR>173_defaults()
function <SNR>173_dopopd()
function <SNR>173_enc_to_cp(str)
function <SNR>173_error(msg)
function <SNR>173_escape(path)
function <SNR>173_evaluate_opts(options)
function <SNR>173_execute(dict, command, use_height, temps) abort
function <SNR>173_execute_term(dict, command, temps) abort
function <SNR>173_execute_tmux(dict, command, temps) abort
function <SNR>173_exit_handler(code, command, ...)
function <SNR>173_extract_option(opts, name)
function <SNR>173_fzf_call(fn, ...)
function <SNR>173_fzf_expand(fmt)
function <SNR>173_fzf_fnamemodify(fname, mods)
function <SNR>173_fzf_getcwd()
function <SNR>173_fzf_tempname()
function <SNR>173_fzf_tmux(dict)
function <SNR>173_get_color(attr, ...)
function <SNR>173_get_version(bin)
function <SNR>173_getpos()
function <SNR>173_handle_ambidouble(dict)
function <SNR>173_has_any(dict, keys)
function <SNR>173_open(cmd, target)
function <SNR>173_popup(opts) abort
function <SNR>173_popup_support()
function <SNR>173_present(dict, ...)
function <SNR>173_pushd(dict)
function <SNR>173_shellesc_cmd(arg)
function <SNR>173_shortpath()
function <SNR>173_split(dict)
function <SNR>173_splittable(dict)
function <SNR>173_tmux_enabled()
function <SNR>173_use_sh()
function <SNR>173_validate_layout(layout)
function <SNR>173_warn(msg)
function <SNR>173_wrap_cmds(cmds)
function <SNR>173_writefile(...)
function <SNR>173_xterm_launcher()
function <SNR>174_CheckArgsRedact()
function <SNR>177_LP_And(pat1, pat2)
function <SNR>177_LP_Execute(preclvl)
function <SNR>177_LP_Not(pat)
function <SNR>177_LP_OpPush(op)
function <SNR>177_LP_Or(pat1, pat2)
function <SNR>177_LP_PatPop(lookup)
function <SNR>177_LP_PatPush(pat)
function <SNR>177_StackLook(description)
function <SNR>177_String(str)
function <SNR>178_ManPager()
function <SNR>179_LocalBrowse(dirname)
function <SNR>179_VimEnter(dirname)
function <SNR>189_CursorHoldUpdate()
function <SNR>189_DevIconsGetArtifactFix()
function <SNR>189_getDistro()
function <SNR>189_hardRefreshNerdTree()
function <SNR>189_initialize()
function <SNR>189_isDarwin()
function <SNR>189_set(var, default) abort
function <SNR>189_setCursorHold()
function <SNR>189_setDictionaries()
function <SNR>189_setSyntax()
function <SNR>189_softRefreshNerdTree()
function <SNR>189_strip(input)
function <SNR>190_invoke_funcrefs(context, funcrefs)
function <SNR>194_reuseWin(dir) abort
function <SNR>209_SID() abort
function <SNR>209_activateAll() abort
function <SNR>209_activateBookmark(bm) abort
function <SNR>209_activateDirNode(directoryNode, ...) abort
function <SNR>209_activateFileNode(node) abort
function <SNR>209_chCwd(node) abort
function <SNR>209_chRoot(node) abort
function <SNR>209_closeChildren(node) abort
function <SNR>209_closeCurrentDir(node) abort
function <SNR>209_closeTreeWindow() abort
function <SNR>209_customOpenBookmark(node) abort
function <SNR>209_customOpenDir(node) abort
function <SNR>209_customOpenFile(node) abort
function <SNR>209_deleteBookmark(bookmark) abort
function <SNR>209_displayHelp() abort
function <SNR>209_findAndRevealPath(pathStr) abort
function <SNR>209_handleLeftClick() abort
function <SNR>209_handleMiddleMouse() abort
function <SNR>209_initCustomOpenArgs() abort
function <SNR>209_jumpToChild(node, last) abort
function <SNR>209_jumpToFirstChild(node) abort
function <SNR>209_jumpToLastChild(node) abort
function <SNR>209_jumpToNextSibling(node) abort
function <SNR>209_jumpToParent(node) abort
function <SNR>209_jumpToPrevSibling(node) abort
function <SNR>209_jumpToRoot() abort
function <SNR>209_jumpToSibling(node, forward) abort
function <SNR>209_openExplorer(node) abort
function <SNR>209_openHSplit(target) abort
function <SNR>209_openHSplitBookmark(bm) abort
function <SNR>209_openInNewTab(target) abort
function <SNR>209_openInNewTabSilent(target) abort
function <SNR>209_openNodeRecursively(node) abort
function <SNR>209_openVSplit(target) abort
function <SNR>209_openVSplitBookmark(bm) abort
function <SNR>209_previewBookmark(bookmark) abort
function <SNR>209_previewNodeCurrent(node) abort
function <SNR>209_previewNodeHSplit(node) abort
function <SNR>209_previewNodeHSplitBookmark(bookmark) abort
function <SNR>209_previewNodeVSplit(node) abort
function <SNR>209_previewNodeVSplitBookmark(bookmark) abort
function <SNR>209_refreshCurrent(node) abort
function <SNR>209_refreshRoot() abort
function <SNR>209_showMenu(node) abort
function <SNR>209_toggleIgnoreFilter() abort
function <SNR>209_toggleShowBookmarks() abort
function <SNR>209_toggleShowFileLines() abort
function <SNR>209_toggleShowFiles() abort
function <SNR>209_toggleShowHidden() abort
function <SNR>209_toggleZoom() abort
function <SNR>209_upDirCurrentRootClosed() abort
function <SNR>209_upDirCurrentRootOpen() abort
function <SNR>211_inputPrompt(action)
function <SNR>211_promptToDelBuffer(bufnum, msg)
function <SNR>211_renameBuffer(bufNum, newNodeName, isDirectory)
function <SNR>212_CreateTabTreeVCS(name)
function <SNR>212_FindParentVCSRoot(path)
function <SNR>212_ToggleTabTreeVCS(name)
function <SNR>213_Refresh()
function <SNR>213_SetupListeners()
function <SNR>214_SID()
function <SNR>214_buildGitStatusCommand(workdir) abort
function <SNR>214_buildGitWorkdirCommand(root) abort
function <SNR>214_deprecated(oldv, newv) abort
function <SNR>214_disableLiveUpdate() abort
function <SNR>214_enableLiveUpdate() abort
function <SNR>214_findHunk(node, direction) abort
function <SNR>214_getGitWorkdir(ntRoot) abort
function <SNR>214_hasPrefix(text, prefix) abort
function <SNR>214_initVariable(var, value) abort
function <SNR>214_jumpToNextHunk(node)
function <SNR>214_jumpToPrevHunk(node)
function <SNR>214_migrateVariable(oldv, newv) abort
function <SNR>214_onCursorHold(fname)
function <SNR>214_onFileUpdate(fname)
function <SNR>214_onGitStatusFailedCB(job) abort
function <SNR>214_onGitStatusSuccessCB(job) abort
function <SNR>214_onGitWorkdirFailedCB(job) abort
function <SNR>214_onGitWorkdirSuccessCB(job) abort
function <SNR>214_onNERDTreeDirChanged(path) abort
function <SNR>214_onNERDTreeInit(path) abort
function <SNR>214_path2str(path) abort
function <SNR>214_refreshGitStatus(name, workdir) abort
function <SNR>214_setupNERDTreeKeyMappings()
function <SNR>214_setupNERDTreeListeners(listener) abort
function <SNR>222_Lint(buffer, should_lint_file, timer_id) abort
function <SNR>223_DeleteMatch()
function <SNR>223_DetectAll()
function <SNR>223_UpdateMatch(isInsertMode)
function <SNR>224_GetFilespec()
function <SNR>224_IsBlacklisted()
function <SNR>224_IsContainedInPersistedBlacklist(filespec)
function <SNR>224_IsContainedInSessionBlacklist(filespec)
function <SNR>224_IsForcedShow()
function <SNR>224_IsScratchBuffer()
function <SNR>225_Canonicalize(filespec, isResolveLinks) abort
function <SNR>229_check_defined_section(name)
function <SNR>229_is_excluded_window()
function <SNR>234_GetAirlineSection()
function <SNR>234_neoterm_id(bufnr) abort
function <SNR>234_termname(bufnr) abort
function <SNR>237_coc_git_enabled() abort
function <SNR>237_get_hunks_changes() abort
function <SNR>237_get_hunks_coc() abort
function <SNR>237_get_hunks_empty() abort
function <SNR>237_get_hunks_gitgutter() abort
function <SNR>237_get_hunks_gitsigns() abort
function <SNR>237_get_hunks_signify() abort
function <SNR>237_parse_hunk_status_decorated(hunks) abort
function <SNR>237_parse_hunk_status_dict(hunks) abort
function <SNR>240_config_fugitive_branch() abort
function <SNR>240_config_gina_branch() abort
function <SNR>240_display_git_branch()
function <SNR>240_display_hg_branch()
function <SNR>240_format_name(name)
function <SNR>240_init_buffer()
function <SNR>240_reset_untracked_cache(shellcmdpost)
function <SNR>240_sh_autocmd_handler()
function <SNR>240_update_branch()
function <SNR>240_update_git_branch()
function <SNR>240_update_hg_branch()
function <SNR>240_update_untracked()
function <SNR>241_sh_autocmd_handler()
function <SNR>242_airline_ale_count(cnt, symbol)
function <SNR>242_airline_ale_get_line_number(cnt, type) abort
function <SNR>242_ale_refresh()
function <SNR>242_legacy_airline_ale_get_line_number(cnt, type) abort
function <SNR>242_new_airline_ale_get_line_number(cnt, type) abort
function <SNR>243_check_mixed_indent()
function <SNR>243_check_mixed_indent_file()
function <SNR>243_conflict_marker()
function <SNR>243_ws_refresh()
function <SNR>244_autocmd_handler()
function <SNR>245_format_wordcount(wordcount)
function <SNR>245_get_wordcount(visual_mode_active)
function <SNR>245_update_wordcount(force_update)
function <SNR>247_buffer_deleted(reason) abort
function <SNR>247_filename_changed_post() abort
function <SNR>247_filename_changed_pre() abort
function <SNR>247_init_buffer() abort
function <SNR>247_init_buffer_bib() abort
function <SNR>247_init_buffer_tex() abort
function <SNR>247_init_default_mappings() abort
function <SNR>247_init_state() abort
function <SNR>247_map(ftype, mode, lhs, rhs, ...) abort
function <SNR>247_map_prefixed(ftype, mode, lhs, rhs) abort
function <SNR>247_quit() abort
function <SNR>248_SetDefault(var, val)
function <SNR>249_search_term()
function <SNR>24_SynSet()
function <SNR>251_create(parts, append)
function <SNR>251_wrap_accent(part, value)
function <SNR>252_CheckDefined(colors) abort
function <SNR>252_GetHiCmd(list) abort
function <SNR>252_exec_separator(dict, from, to, inverse, suffix) abort
function <SNR>252_get_array(guifg, guibg, ctermfg, ctermbg, opts) abort
function <SNR>252_get_syn(group, what, mode) abort
function <SNR>252_group_not_done(list, name) abort
function <SNR>252_gui2cui(rgb, fallback) abort
function <SNR>252_hl_group_exists(group) abort
function <SNR>255_get_accented_line(self, group, contents)
function <SNR>255_get_separator(self, prev_group, group, side)
function <SNR>255_get_transitioned_separator(self, prev_group, group, side)
function <SNR>255_section_is_empty(self, content)
function <SNR>256_add_section(builder, context, key)
function <SNR>256_build_sections(builder, context, keys)
function <SNR>256_get_section(winnr, key, ...)
function <SNR>257_set_enabled(arg, enabled) abort
function <SNR>258_set_fix_strategy(context, message, strategy) abort
function <SNR>259_close(popup) abort
function <SNR>259_open() abort
function <SNR>259_show() abort
function <SNR>259_show_cursor() abort
function <SNR>260_clear(bufnr)
function <SNR>260_has_fresh_changes(bufnr) abort
function <SNR>260_reset_tick(bufnr) abort
function <SNR>260_setup_path(bufnr, continuation)
function <SNR>260_toggle_each_buffer(enable)
function <SNR>261_append_group(title, regs)
function <SNR>261_close()
function <SNR>261_feed(count, mode, reg, rest)
function <SNR>261_getpos()
function <SNR>261_gv(visualmode, visible)
function <SNR>261_is_open()
function <SNR>261_is_visible(pos)
function <SNR>261_open(mode)
function <SNR>261_wait_with_timeout(timeout)
function <SNR>262_handle_error(err) abort
function <SNR>262_on_highlight(...) abort
function <SNR>262_on_redraw(helper) abort
function <SNR>262_on_syntax(...) abort
function <SNR>262_redraw(helper) abort
function <SNR>262_update_node(status_map, node) abort
function <SNR>263__can_be_canceled() abort dict
function <SNR>263__cancellation_requested() abort dict
function <SNR>263__register(callback) abort dict
function <SNR>263__throw_if_cancellation_requested() abort dict
function <SNR>263__unregister() abort dict
function <SNR>263__vital_created(module) abort
function <SNR>263_new(source) abort
function <SNR>265_cd_cmd() abort
function <SNR>265_cd_to_vcs_root(path) abort
function <SNR>265_check_user_options(path) abort
function <SNR>265_close() abort
function <SNR>265_compare_by_index(foo, bar)
function <SNR>265_create_last_session_link(session_path)
function <SNR>265_display_by_path(path_prefix, path_format, use_env) abort
function <SNR>265_filter_oldfiles(path_prefix, path_format, use_env) abort
function <SNR>265_filter_oldfiles_unsafe(path_prefix, path_format, use_env) abort
function <SNR>265_get_index_as_string() abort
function <SNR>265_get_lists() abort
function <SNR>265_hide_endofbuffer_markers()
function <SNR>265_init_env()
function <SNR>265_is_in_skiplist(arg) abort
function <SNR>265_leftmouse()
function <SNR>265_open_buffer(entry)
function <SNR>265_print_section_header() abort
function <SNR>265_register(line, index, type, cmd, path)
function <SNR>265_set_cursor() abort
function <SNR>265_set_custom_section(section) abort
function <SNR>265_set_mappings() abort
function <SNR>265_show_bookmarks() abort
function <SNR>265_show_commands() abort
function <SNR>265_show_dir() abort
function <SNR>265_show_files() abort
function <SNR>265_show_lists(lists) abort
function <SNR>265_show_sessions() abort
function <SNR>265_sort_by_tick(one, two)
function <SNR>265_transform(absolute_path)
function <SNR>265_warn(msg) abort
function <SNR>266_draw_box(lines) abort
function <SNR>266_get_random_offset(max) abort
function <SNR>268_GetEnclosingTagLocations()
function <SNR>268_HighlightEnclosingTags()
function <SNR>268_HighlightEnclosingTagsIfPossible()
function <SNR>269_ApplyPartialTimer(timer_id) abort
function <SNR>269_LoadArgCount(function) abort
function <SNR>26_AddColors(cnames) abort
function <SNR>26_Cleanup()
function <SNR>270_dict_has_key_pat(d, key) abort
function <SNR>270_get_cur_word() abort
function <SNR>270_illuminate(...) abort
function <SNR>270_list_contains_pat(list, val) abort
function <SNR>270_match_word(word) abort
function <SNR>270_remove_illumination() abort
function <SNR>270_should_illuminate_file() abort
function <SNR>270_should_illuminate_word() abort
function <SNR>271_GetAliasedFiletype(original_filetype) abort
function <SNR>271_GetLinterNames(original_filetype) abort
function <SNR>271_IsBoolean(value) abort
function <SNR>271_IsCallback(value) abort
function <SNR>284_foldable(...) abort
function <SNR>284_run_syntax_fold(args) abort
function <SNR>287_Ansi2Gui(code)
function <SNR>287_MultiElementHandler()
function <SNR>288_ObserveOptions()
function <SNR>288_exec(cmd) abort
function <SNR>288_exec_silent(cmd) abort
function <SNR>288_exitIfLast() abort
function <SNR>288_getUniqueID() abort
function <SNR>288_gettime(time) abort
function <SNR>288_log(msg) abort
function <SNR>288_new(obj) abort
function <SNR>288_undotreeAction(action) abort
function <SNR>289_GetALEProjectDir(buffer) abort
function <SNR>28_SetOption(name, default)
function <SNR>28_TomorrowOptions()
function <SNR>28_TormorrowHiTrail()
function <SNR>292_lash(...)
function <SNR>293_AbsoluteVimPath(...) abort
function <SNR>293_AddDiffSection(to, stat, label, files) abort
function <SNR>293_AddHeader(to, key, value) abort
function <SNR>293_AddLogSection(to, label, log) abort
function <SNR>293_AddSection(to, label, lines, ...) abort
function <SNR>293_ArgSplit(string) abort
function <SNR>293_AskPassArgs(dir) abort
function <SNR>293_BlameBufnr(...) abort
function <SNR>293_BlameCommit(cmd, ...) abort
function <SNR>293_BlameCommitFileLnum(...) abort
function <SNR>293_BlameCursorSync(bufnr, line) abort
function <SNR>293_BlameJump(suffix, ...) abort
function <SNR>293_BlameLeave() abort
function <SNR>293_BlameMaps(is_ftplugin) abort
function <SNR>293_BlameQuit() abort
function <SNR>293_BlameRehighlight() abort
function <SNR>293_BlameSubcommand(line1, count, range, bang, mods, options) abort
function <SNR>293_BlobTemp(url) abort
function <SNR>293_BlurStatus() abort
function <SNR>293_BranchCfile(result) abort
function <SNR>293_BrowserOpen(url, mods, echo_copy) abort
function <SNR>293_BufName(var) abort
function <SNR>293_BuildEnvPrefix(env) abort
function <SNR>293_BuildShell(dir, env, git, args) abort
function <SNR>293_CfilePorcelain(...) abort
function <SNR>293_ChompDefault(default, ...) abort
function <SNR>293_ChompStderr(...) abort
function <SNR>293_CommitInteractive(line1, line2, range, bang, mods, options, patch) abort
function <SNR>293_CommitSubcommand(line1, line2, range, bang, mods, options) abort
function <SNR>293_CompletableSubcommands(dir) abort
function <SNR>293_CompleteBisect(A, L, P, ...) abort
function <SNR>293_CompleteHeads(dir) abort
function <SNR>293_CompletePush(A, L, P, ...) abort
function <SNR>293_CompleteRemote(A, L, P, ...) abort
function <SNR>293_CompleteRevision(A, L, P, ...) abort
function <SNR>293_CompleteSub(subcommand, A, L, P, ...) abort
function <SNR>293_ConfigCallback(r, into) abort
function <SNR>293_ConfigLengthSort(i1, i2) abort
function <SNR>293_ConfigTimestamps(dir, dict) abort
function <SNR>293_ContainingCommit() abort
function <SNR>293_CurlResponse(result) abort
function <SNR>293_DiffModifier(count, default) abort
function <SNR>293_DifftoolSubcommand(line1, line2, range, bang, mods, options) abort
function <SNR>293_Dir(...) abort
function <SNR>293_DirCheck(...) abort
function <SNR>293_DirCommitFile(path) abort
function <SNR>293_DirRev(url) abort
function <SNR>293_DirUrlPrefix(dir) abort
function <SNR>293_Do(action, visual) abort
function <SNR>293_DoAutocmd(...) abort
function <SNR>293_DoAutocmdChanged(dir) abort
function <SNR>293_DoStagePushHeader(value) abort
function <SNR>293_DoStageUnpushed(record) abort
function <SNR>293_DoStageUnpushedHeading(heading) abort
function <SNR>293_DoStageUnstaged(record) abort
function <SNR>293_DoStageUnstagedHeading(heading) abort
function <SNR>293_DoStageUntracked(record) abort
function <SNR>293_DoStageUntrackedHeading(heading) abort
function <SNR>293_DoToggleHeadHeader(value) abort
function <SNR>293_DoToggleHelpHeader(value) abort
function <SNR>293_DoTogglePushHeader(value) abort
function <SNR>293_DoToggleStaged(record) abort
function <SNR>293_DoToggleStagedHeading(...) abort
function <SNR>293_DoToggleUnpulled(record) abort
function <SNR>293_DoToggleUnpulledHeading(heading) abort
function <SNR>293_DoToggleUnpushed(record) abort
function <SNR>293_DoToggleUnpushedHeading(heading) abort
function <SNR>293_DoToggleUnstaged(record) abort
function <SNR>293_DoToggleUnstagedHeading(...) abort
function <SNR>293_DoToggleUntracked(record) abort
function <SNR>293_DoToggleUntrackedHeading(...) abort
function <SNR>293_DoUnstageStaged(record) abort
function <SNR>293_DoUnstageStagedHeading(heading) abort
function <SNR>293_DoUnstageUnpulled(record) abort
function <SNR>293_DoUnstageUnpulledHeading(heading) abort
function <SNR>293_DoUnstageUnpushed(record) abort
function <SNR>293_DoUnstageUnstaged(record) abort
function <SNR>293_DotRelative(path, ...) abort
function <SNR>293_ExecPath() abort
function <SNR>293_Expand(rev, ...) abort
function <SNR>293_ExpandVar(other, var, flags, esc, ...) abort
function <SNR>293_ExpireStatus(bufnr) abort
function <SNR>293_FetchSubcommand(...) abort
function <SNR>293_FileIgnoreCase(for_completion) abort
function <SNR>293_FilterEscape(items, ...) abort
function <SNR>293_Format(val) abort
function <SNR>293_FormatFile(dict) abort
function <SNR>293_FormatLog(dict) abort
function <SNR>293_FormatRebase(dict) abort
function <SNR>293_GF(mode) abort
function <SNR>293_Generate(object, ...) abort
function <SNR>293_GitCmd() abort
function <SNR>293_GitDir(...) abort
function <SNR>293_GitIndexFileEnv() abort
function <SNR>293_GitShellCmd() abort
function <SNR>293_GlobComplete(lead, pattern, ...) abort
function <SNR>293_GrepCfile(result) abort
function <SNR>293_GrepOptions(args, dir) abort
function <SNR>293_GrepParseLine(options, quiet, dir, line) abort
function <SNR>293_GrepSubcommand(line1, line2, range, bang, mods, options) abort
function <SNR>293_HasOpt(args, ...) abort
function <SNR>293_HunkPosition(lnum) abort
function <SNR>293_InitializeBuffer(repo) abort
function <SNR>293_IsConflicted() abort
function <SNR>293_JobExecute(argv, jopts, stdin, callback, ...) abort
function <SNR>293_JobNvimCallback(lines, job, data, type) abort
function <SNR>293_JobNvimExit(dict, callback, job, data, type) abort dict
function <SNR>293_JobOpts(cmd, env) abort
function <SNR>293_JobVimExit(dict, callback, temp, job, status) abort
function <SNR>293_JoinChomp(list) abort
function <SNR>293_Keywordprg() abort
function <SNR>293_LinesError(...) abort
function <SNR>293_LogFlushQueue(state, dir) abort
function <SNR>293_LogParse(state, dir, prefix, line) abort
function <SNR>293_Map(mode, lhs, rhs, ...) abort
function <SNR>293_MapGitOps(is_ftplugin) abort
function <SNR>293_MapMotion(lhs, rhs) abort
function <SNR>293_MapStatus() abort
function <SNR>293_MergeHead(dir) abort
function <SNR>293_MergeSubcommand(line1, line2, range, bang, mods, options) abort
function <SNR>293_MergetoolSubcommand(line1, line2, range, bang, mods, options) abort
function <SNR>293_Mods(mods, ...) abort
function <SNR>293_Move(force, rename, destination) abort
function <SNR>293_NavigateUp(count) abort
function <SNR>293_NextExpandedHunk(count) abort
function <SNR>293_NextFile(count) abort
function <SNR>293_NextHunk(count) abort
function <SNR>293_NextItem(count) abort
function <SNR>293_NextSection(count) abort
function <SNR>293_NextSectionEnd(count) abort
function <SNR>293_OpenExpand(dir, file, wants_cmd) abort
function <SNR>293_OpenParse(string, wants_cmd, wants_multiple) abort
function <SNR>293_OriginBufnr(...) abort
function <SNR>293_Owner(path, ...) abort
function <SNR>293_ParseDiffHeader(str) abort
function <SNR>293_PatchSearchExpr(reverse) abort
function <SNR>293_PathInfo(url) abort
function <SNR>293_PathJoin(prefix, str) abort
function <SNR>293_PathUrlEncode(str) abort
function <SNR>293_PlusEscape(string) abort
function <SNR>293_PrepareEnv(env, dir) abort
function <SNR>293_PrepareJob(opts) abort
function <SNR>293_PreparePathArgs(cmd, dir, literal, explicit) abort
function <SNR>293_PreviousFile(count) abort
function <SNR>293_PreviousHunk(count) abort
function <SNR>293_PreviousItem(count) abort
function <SNR>293_PreviousSection(count) abort
function <SNR>293_PreviousSectionEnd(count) abort
function <SNR>293_PushSubcommand(...) abort
function <SNR>293_QueryLog(refspec, limit, dir) abort
function <SNR>293_QueryLogRange(old, new, dir) abort
function <SNR>293_QuickfixCreate(nr, opts) abort
function <SNR>293_QuickfixGet(nr, ...) abort
function <SNR>293_QuickfixOpen(nr, mods) abort
function <SNR>293_QuickfixSet(nr, ...) abort
function <SNR>293_QuickfixStream(nr, event, title, cmd, first, mods, callback, ...) abort
function <SNR>293_Quote(string) abort
function <SNR>293_ReadPrepare(line1, count, range, mods) abort
function <SNR>293_RebaseArgument() abort
function <SNR>293_RebaseSubcommand(line1, line2, range, bang, mods, options) abort
function <SNR>293_Relative(...) abort
function <SNR>293_ReloadStatus() abort
function <SNR>293_ReloadStatusBuffer() abort
function <SNR>293_ReloadTabStatus() abort
function <SNR>293_ReloadWinStatus(...) abort
function <SNR>293_Remote(dir, remote, flags, cb) abort
function <SNR>293_RemoteCallback(config, into, flags, cb) abort
function <SNR>293_RemoteDefault(dir) abort
function <SNR>293_RemoteParseArgs(args) abort
function <SNR>293_RemoteRefToLocalRef(repo, remote_url, ref_path) abort
function <SNR>293_RemoteResolve(url, flags) abort
function <SNR>293_RemoteUrlCallback(remote, callback) abort
function <SNR>293_Remove(after, force) abort
function <SNR>293_ReplaceCmd(cmd) abort
function <SNR>293_Resolve(path) abort
function <SNR>293_ResolveUrl(target, ...) abort
function <SNR>293_RevertSubcommand(line1, line2, range, bang, mods, options) abort
function <SNR>293_RunBufDelete(bufnr) abort
function <SNR>293_RunClose(state, tmp, job, ...) abort
function <SNR>293_RunCloseIn(job) abort
function <SNR>293_RunEcho(tmp) abort
function <SNR>293_RunEdit(state, tmp, job) abort
function <SNR>293_RunExit(state, tmp, job, exit_status) abort
function <SNR>293_RunFinished(state, ...) abort
function <SNR>293_RunReceive(state, tmp, type, job, data, ...) abort
function <SNR>293_RunSave(state) abort
function <SNR>293_RunSend(job, str) abort
function <SNR>293_RunTick(job) abort
function <SNR>293_RunWait(state, tmp, job, ...) abort
function <SNR>293_SameRepo(one, two) abort
function <SNR>293_Selection(arg1, ...) abort
function <SNR>293_Slash(path) abort
function <SNR>293_SplitExpandChain(string, ...) abort
function <SNR>293_SquashArgument(...) abort
function <SNR>293_SshParseConfig(into, root, file) abort
function <SNR>293_SshParseHost(value) abort
function <SNR>293_StageApply(info, reverse, extra) abort
function <SNR>293_StageArgs(visual) abort
function <SNR>293_StageDelete(lnum1, lnum2, count) abort
function <SNR>293_StageDiff(diff) abort
function <SNR>293_StageDiffEdit() abort
function <SNR>293_StageIgnore(lnum1, lnum2, count) abort
function <SNR>293_StageInfo(...) abort
function <SNR>293_StageInline(mode, ...) abort
function <SNR>293_StageInlineGetDiff(diff_section, info) abort
function <SNR>293_StageJump(offset, section, ...) abort
function <SNR>293_StagePatch(lnum1, lnum2) abort
function <SNR>293_StageReveal() abort
function <SNR>293_StageSeek(info, fallback) abort
function <SNR>293_StatusCfile(...) abort
function <SNR>293_StatusCommand(line1, line2, range, count, bang, mods, reg, arg, args, ...) abort
function <SNR>293_StatusSectionFile(heading, filename) abort
function <SNR>293_StdoutToFile(out, cmd, ...) abort
function <SNR>293_SystemError(cmd, ...) abort
function <SNR>293_SystemList(cmd) abort
function <SNR>293_TempDelete(file) abort
function <SNR>293_TempDotMap() abort
function <SNR>293_TempReadPost(file) abort
function <SNR>293_TempReadPre(file) abort
function <SNR>293_TempScript(...) abort
function <SNR>293_TempState(...) abort
function <SNR>293_ToolItems(state, from, to, offsets, text, ...) abort
function <SNR>293_ToolParse(state, line) abort
function <SNR>293_ToolStream(line1, line2, range, bang, mods, options, args, state) abort
function <SNR>293_ToolToFrom(str) abort
function <SNR>293_Tree(...) abort
function <SNR>293_TreeChomp(...) abort
function <SNR>293_TreeInfo(dir, commit) abort
function <SNR>293_Uniq(list) abort
function <SNR>293_UpdateIndex(dir, info) abort
function <SNR>293_UrlEncode(str) abort
function <SNR>293_UrlParse(url) abort
function <SNR>293_UrlPopulate(string, into) abort
function <SNR>293_UsableWin(nr) abort
function <SNR>293_UserCommandCwd(dir) abort
function <SNR>293_UserCommandList(...) abort
function <SNR>293_VersionCheck() abort
function <SNR>293_VimExecPath() abort
function <SNR>293_VimSlash(path) abort
function <SNR>293_WinShellEsc(arg) abort
function <SNR>293_add_methods(namespace, method_names) abort
function <SNR>293_can_diffoff(buf) abort
function <SNR>293_cfile() abort
function <SNR>293_config_Get(name, ...) abort dict
function <SNR>293_config_GetAll(name) abort dict
function <SNR>293_config_GetRegexp(pattern) abort dict
function <SNR>293_cpath(path, ...) abort
function <SNR>293_diff_window_count() abort
function <SNR>293_diffoff() abort
function <SNR>293_diffoff_all(dir) abort
function <SNR>293_diffthis() abort
function <SNR>293_executable(binary) abort
function <SNR>293_fnameescape(file) abort
function <SNR>293_function(name) abort
function <SNR>293_gsub(str, pat, rep) abort
function <SNR>293_linechars(pattern) abort
function <SNR>293_repo_bare() abort dict
function <SNR>293_repo_config(name) abort dict
function <SNR>293_repo_dir(...) abort dict
function <SNR>293_repo_find(object) abort dict
function <SNR>293_repo_git_chomp(...) abort dict
function <SNR>293_repo_git_chomp_in_tree(...) abort dict
function <SNR>293_repo_git_command(...) abort dict
function <SNR>293_repo_head(...) abort dict
function <SNR>293_repo_rev_parse(rev) abort dict
function <SNR>293_repo_translate(rev) abort dict
function <SNR>293_repo_tree(...) abort dict
function <SNR>293_shellesc(arg) abort
function <SNR>293_sub(str, pat, rep) abort
function <SNR>293_throw(string) abort
function <SNR>293_winshell() abort
function <SNR>294_on_exit_clean(...) abort dict
function <SNR>294_on_exit_mq(channel) abort dict
function <SNR>294_on_exit_po(channel) abort dict
function <SNR>294_on_exit_untracked(channel) abort dict
function <SNR>294_on_stdout(channel, msg) abort dict
function <SNR>294_po_output(buf, file)
function <SNR>294_set_clean_jobs_variable(vcs, file, id)
function <SNR>294_set_clean_variables(file, vcs, val)
function <SNR>294_untracked_output(dict, buf)
function <SNR>294_valid_dir(dir)
function <SNR>295_AutoUpdate(fname, force, ...) abort
function <SNR>295_ChangeFoldLevel(diff, force) abort
function <SNR>295_CheckExCtagsVersion(output) abort
function <SNR>295_CheckFTCtags(bin, ftype) abort
function <SNR>295_CheckForExCtags(silent) abort
function <SNR>295_CheckMouseClick() abort
function <SNR>295_CloseFold() abort
function <SNR>295_CloseWindow() abort
function <SNR>295_CorrectFocusOnStartup() abort
function <SNR>295_CreateAutocommands() abort
function <SNR>295_CtagsErrMsg(errmsg, infomsg, silent, ...) abort
function <SNR>295_DetectFiletype(bufnr) abort
function <SNR>295_EscapeCtagsCmd(ctags_bin, args, ...) abort
function <SNR>295_ExecuteCtags(ctags_cmd) abort
function <SNR>295_ExecuteCtagsOnFile(fname, realfname, typeinfo) abort
function <SNR>295_GetFileWinnr(fileinfo) abort
function <SNR>295_GetNearbyTag(request, forcecurrent, ...) abort
function <SNR>295_GetSupportedFiletypes() abort
function <SNR>295_GetTagInfo(linenr, ignorepseudo) abort
function <SNR>295_GotoFileWindow(fileinfo, ...) abort
function <SNR>295_GotoNextFold() abort
function <SNR>295_GotoNextToplevelTag(direction) abort
function <SNR>295_GotoPrevFold() abort
function <SNR>295_HandleBufDelete(bufname, bufnr) abort
function <SNR>295_HandleBufWrite(fname) abort
function <SNR>295_HandleOnlyWindow() abort
function <SNR>295_HasOpenFileWindows() abort
function <SNR>295_HighlightTag(openfolds, ...) abort
function <SNR>295_Init(silent) abort
function <SNR>295_InitTypes() abort
function <SNR>295_InitWindow(autoclose) abort
function <SNR>295_IsLineVisible(line) abort
function <SNR>295_IsValidFile(fname, ftype) abort
function <SNR>295_JumpToNearbyTag(direction, request, flags) abort
function <SNR>295_JumpToTag(stay_in_tagbar, ...) abort
function <SNR>295_LoadUserTypeDefs(...) abort
function <SNR>295_MapKeys() abort
function <SNR>295_MinimizeMaxFoldLevel(fileinfo, tags) abort
function <SNR>295_OpenFold() abort
function <SNR>295_OpenParents(...) abort
function <SNR>295_OpenWindow(flags) abort
function <SNR>295_ParseTagline(part1, part2, typeinfo, fileinfo) abort
function <SNR>295_PrintHelp() abort
function <SNR>295_PrintKinds(typeinfo, fileinfo) abort
function <SNR>295_PrintTag(tag, depth, output, fileinfo, typeinfo) abort
function <SNR>295_ProcessFile(fname, ftype) abort
function <SNR>295_ProcessTag(name, filename, pattern, fields, is_split, typeinfo, fileinfo) abort
function <SNR>295_RenderContent(...) abort
function <SNR>295_RenderKeepView(...) abort
function <SNR>295_ReopenWindow(delbufname) abort
function <SNR>295_RestoreSession() abort
function <SNR>295_SetFoldLevel(level, force) abort
function <SNR>295_SetFoldLevelRecursive(fileinfo, tags, level) abort
function <SNR>295_SetStatusLine() abort
function <SNR>295_ShowInPreviewWin() abort
function <SNR>295_ShowPrototype(short) abort
function <SNR>295_ShrinkIfExpanded() abort
function <SNR>295_TagbarBufName() abort
function <SNR>295_ToggleAutoclose() abort
function <SNR>295_ToggleCaseInsensitive() abort
function <SNR>295_ToggleFold() abort
function <SNR>295_ToggleHelp() abort
function <SNR>295_ToggleHideNonPublicTags() abort
function <SNR>295_TogglePause() abort
function <SNR>295_ToggleSort() abort
function <SNR>295_ToggleWindow(flags) abort
function <SNR>295_TransformUserTypeDef(def) abort
function <SNR>295_ZoomWindow() abort
function <SNR>295_add_tag_recursive(parent, taginfo, pathlist) abort
function <SNR>295_create_pseudotag(name, parent, kind, typeinfo, fileinfo) abort
function <SNR>295_do_delayed_update() abort
function <SNR>295_get_map_str(map) abort
function <SNR>295_goto_markedwin(...) abort
function <SNR>295_goto_tagbar(...) abort
function <SNR>295_goto_win(winnr, ...) abort
function <SNR>295_mark_window() abort
function <SNR>295_run_system(cmd, version) abort
function <SNR>295_warning(msg) abort
function <SNR>296_gettime() abort
function <SNR>298_add_snr(funcname) abort
function <SNR>298_createKinddict() abort dict
function <SNR>298_getKind(kind) abort dict
function <SNR>299_addTag(tag) abort dict
function <SNR>299_add_snr(funcname) abort
function <SNR>299_clearOldFolds() abort dict
function <SNR>299_closeKindFold(kind) abort dict
function <SNR>299_getTags() abort dict
function <SNR>299_getTagsByName(tagname) abort dict
function <SNR>299_openKindFold(kind) abort dict
function <SNR>299_removeTag(tag) abort dict
function <SNR>299_reset() abort dict
function <SNR>299_sortTags(compare_typeinfo) abort dict
function <SNR>29_Underline(chars)
function <SNR>300_add_snr(funcname) abort
function <SNR>300_getDataType() abort dict
function <SNR>300_getPrototype(short) abort dict
function <SNR>300_isNormalTag() abort dict
function <SNR>300_maybe_map_scope(scopestr) abort
function <SNR>300_str(longsig, full) abort dict
function <SNR>300_strfmt() abort dict
function <SNR>301__getPrefix() abort dict
function <SNR>301_addChild(tag) abort dict
function <SNR>301_add_snr(funcname) abort
function <SNR>301_closeFold() abort dict
function <SNR>301_getChildren() abort dict
function <SNR>301_getChildrenByName(tagname) abort dict
function <SNR>301_getClosedParentTline() abort dict
function <SNR>301_getDataType() abort dict
function <SNR>301_getPrototype(short) abort dict
function <SNR>301_initFoldState(known_files) abort dict
function <SNR>301_isFoldable() abort dict
function <SNR>301_isFolded() abort dict
function <SNR>301_isKindheader() abort dict
function <SNR>301_isNormalTag() abort dict
function <SNR>301_isPseudoTag() abort dict
function <SNR>301_isSplitTag() abort dict
function <SNR>301_openFold() abort dict
function <SNR>301_openParents() abort dict
function <SNR>301_removeChild(tag) abort dict
function <SNR>301_setFolded(folded) abort dict
function <SNR>302_add_snr(funcname) abort
function <SNR>302_closeFold() abort dict
function <SNR>302_getPrototype(short) abort dict
function <SNR>302_isFoldable() abort dict
function <SNR>302_isFolded() abort dict
function <SNR>302_isKindheader() abort dict
function <SNR>302_openFold() abort dict
function <SNR>302_toggleFold(fileinfo) abort dict
function <SNR>303_compare_by_kind(tag1, tag2) abort
function <SNR>303_compare_by_line(tag1, tag2) abort
function <SNR>304_get() abort
function <SNR>305_AddProblemsFromOtherBuffers(buffer, linters) abort
function <SNR>305_GetLintFileSlots(buffer, linters) abort
function <SNR>305_GetLintFileValues(slots, Callback) abort
function <SNR>305_HandleExit(job_info, buffer, output, data) abort
function <SNR>305_RemapItemTypes(type_map, loclist) abort
function <SNR>305_RemoveProblemsForDisabledLinters(buffer, linters) abort
function <SNR>305_RunIfExecutable(buffer, linter, lint_file, executable) abort
function <SNR>305_RunJob(command, options) abort
function <SNR>305_RunLinter(buffer, linter, lint_file) abort
function <SNR>305_RunLinters(buffer, linters, slots, should_lint_file, new_buffer) abort
function <SNR>305_StopCurrentJobs(buffer, clear_lint_file_jobs, linter_slots) abort
function <SNR>306_BufferCacheExists(buffer) abort
function <SNR>306_CreateCountDict() abort
function <SNR>306_GetCounts(buffer) abort
function <SNR>306_GetFirstProblems(buffer) abort
function <SNR>306_UpdateCacheIfNecessary(buffer) abort
function <SNR>307_ShowCursorDetailForItem(loc, options) abort
function <SNR>307_StopCursorTimer() abort
function <SNR>308_SetBufferUpdater(bufnr, callback, interval)
function <SNR>30_fern_settings() abort
function <SNR>32_WinLineRestore(swwline)
function <SNR>35_indent(line) abort
function <SNR>36_ChangeNextSurroundingFunctionCall()
function <SNR>36_ChangeSurroundingFunctionCall()
function <SNR>36_Delete(opening_bracket)
function <SNR>36_DeleteNextSurroundingFunctionCall()
function <SNR>36_DeleteSurroundingFunctionCall()
function <SNR>36_FunctionCallTextObject(mode)
function <SNR>40_CeilingDirectories() abort
function <SNR>40_Map(mode, lhs, rhs, flags) abort
function <SNR>40_ProjectionistDetect() abort
function <SNR>40_ReadFile(path, line_count) abort
function <SNR>40_ResolveGitDir(git_dir) abort
function <SNR>40_Slash(path) abort
function <SNR>40_Tree(path) abort
function <SNR>40_VimSlash(path) abort
function <SNR>42_next_tick(cmd)
function <SNR>42_obsolete(var)
function <SNR>42_on_bufenter()
function <SNR>42_on_buffilepost(bufnr)
function <SNR>42_on_buffilepre(bufnr)
function <SNR>43_abs_path(bufnr, shellesc)
function <SNR>43_dir(bufnr) abort
function <SNR>43_dos_shell()
function <SNR>43_exists_file(bufnr) abort
function <SNR>43_is_file_buffer(bufnr) abort
function <SNR>43_not_git_dir(bufnr) abort
function <SNR>43_obtain_file_renames(bufnr, base)
function <SNR>43_restore_shell() abort
function <SNR>43_strip_trailing_new_line(line) abort
function <SNR>43_unc_path(bufnr)
function <SNR>43_use_known_shell() abort
function <SNR>43_winshell()
function <SNR>44_define_sign_line_highlights() abort
function <SNR>44_define_sign_linenr_highlights() abort
function <SNR>44_define_sign_text() abort
function <SNR>44_get_background_colors(group) abort
function <SNR>44_get_foreground_colors(group) abort
function <SNR>44_get_foreground_fallback_colors(type)
function <SNR>44_get_hl(group, what, mode) abort
function <SNR>44_useful_diff_colours()
function <SNR>45_SetUpMessage(filename) abort
function <SNR>46_CSVArrange(arrange)
function <SNR>46_CSVDoBufLoadAutocmd()
function <SNR>46_Table(bang, line1, line2, delim)
function <SNR>48_install_plugin(mode, buffer)
function <SNR>48_setup_styledEmmetAbbreviation() abort
function <SNR>53_InitIfSupportedFiletype(filetype_string)
function <SNR>54_vader(...) range
function <SNR>58_AsEmpty()
function <SNR>58_CloseIt()
function <SNR>58_Declare(var, def)
function <SNR>58_FindTag()
function <SNR>58_Handler(xml_tag, isHtml)
function <SNR>58_HaveAtt()
function <SNR>58_InValidRegion()
function <SNR>58_InitBuf()
function <SNR>58_Initial()
function <SNR>58_SavePos()
function <SNR>58_TagName(from)
function <SNR>60_CheckBinaries()
function <SNR>60_GoInstallBinaries(updateBinaries, ...)
function <SNR>60_checkVersion() abort
function <SNR>60_complete(lead, cmdline, cursor)
function <SNR>60_gofiletype_post()
function <SNR>60_gofiletype_pre()
function <SNR>60_noop(...) abort
function <SNR>60_register()
function <SNR>62_clear_group_from_matches(group) abort
function <SNR>62_echo(msg, hi)
function <SNR>62_exec(cmd, ...) abort
function <SNR>62_matchaddpos(group, pos) abort
function <SNR>62_noop(...) abort dict
function <SNR>62_system(cmd, ...) abort
function <SNR>62_unset(name) abort
function <SNR>63_gomod()
function <SNR>88_parse_args(args) abort
function <SNR>92_CreateMaps(modes, target, desc, combo)
function <SNR>92_InitVariable(var, value)
function <SNR>93_init_var(var, value) abort
function <SNR>93_setup_keymaps() abort
function <SNR>93_setup_options() abort
function <SNR>95_DoMatchParen()
function <SNR>95_Highlight_Matching_Pair()
function <SNR>95_NoMatchParen()
function <SNR>95_Remove_Matches()
function <SNR>96_force(wise)
function <SNR>96_init_default_mappings()
function <SNR>96_init_modules()
function <SNR>96_init_oldstyle_ops()
function <SNR>96_init_option(option, default)
function <SNR>96_init_options()
function <SNR>96_make_oldstyle_omaps(lhs, rhs)
function <SNR>96_map(mode, lhs, rhs, ...)
function <SNR>96_misc_init_module()
function <SNR>96_motion_init_module()
function <SNR>96_omap(mode, lhs, rhs, ...)
function <SNR>96_snr()
function <SNR>96_surround_init_module()
function <SNR>96_text_obj_init_module()
function <SNR>96_treesitter_init_module()
function <SNR>96_where_init_module()
function <SNR>97_sort_by_last(a, b)
function <SNR>98_Nsort_func(a, b) abort
function <SNR>98_capture_group_sort(a, b) abort dict
function <SNR>98_init_delim_lists(no_words, filter_words) abort
function <SNR>98_init_delim_lists_fast(mps) abort
function <SNR>98_init_delim_regexes() abort
function <SNR>98_init_delim_regexes_generator(list_name) abort
function <SNR>98_init_delim_skip() abort
function <SNR>98_matchstrpos(expr, pat, start) abort
function <SNR>99_add_background_matches_1(line1, col1, line2, col2)
function <SNR>99_add_matches(corrlist, ...)
function <SNR>99_close_floating_win()
function <SNR>99_do_offscreen(current, method)
function <SNR>99_do_offscreen_popup(offscreen) abort
function <SNR>99_do_offscreen_popup_nvim(offscreen) abort
function <SNR>99_do_offscreen_statusline(offscreen, manual)
function <SNR>99_do_popup_autocmd_enter(win_context) abort
function <SNR>99_do_popup_autocmd_leave(win_context) abort
function <SNR>99_ensure_match_popup() abort
function <SNR>99_ensure_scroll_timer()
function <SNR>99_fade_timer_callback(win_id, timer_id) abort
function <SNR>99_format_gutter(lnum, ...)
function <SNR>99_highlight_background(corrlist)
function <SNR>99_highlight_surrounding(insertmode, current)
function <SNR>99_pi_paren_sid()
function <SNR>99_populate_floating_win(offscreen, text_method) abort
function <SNR>99_pumvisible() abort
function <SNR>99_set_popup_text(lnum, adjust, offscreen) abort
function <SNR>99_set_popup_text_2(lnum, adjust, offscreen) abort
function <SNR>99_synID(lnum, col, trans)
function <SNR>99_timer_callback(win_id, timer_id) abort
function <SNR>99_wordish(delim)
function ALEToggleBufferShow()
function AirlineWebDevIcons(...)
function AnsiEsc#AnsiEsc(rebuild)
function AnsiEsc#BufReadPost()
function BackupQuit()
function BlackComplete(ArgLead, CmdLine, CursorPos)
function BmmFn()
function BufExplorer()
function BufExplorerHorizontalSplit()
function BufExplorerVerticalSplit()
function BufExplorer_IsValid()
function BufExplorer_ReSize()
function BufExplorer_Refresh()
function BufExplorer_Start()
function ClearFancyGlyphs()
function ClearMAS()
function ColorLightDark()
function CompiledPDF()
function ConvertSearchForVisualSelection()
function CustomFoldText(...)
function DateFr()
function DestroyMark(markname)
function DoRemoteReply(id, cnt, group, file)
function EasyMotionSearchToggle()
function EightyTwoColumns()
function FirmComment(c)
function FirmUnComment(c)
function FugitiveActualDir(...) abort
function FugitiveCommonDir(...) abort
function FugitiveConfig(...) abort
function FugitiveConfigGet(name, ...) abort
function FugitiveConfigGetAll(name, ...) abort
function FugitiveConfigGetRegexp(pattern, ...) abort
function FugitiveDetect(...) abort
function FugitiveDidChange(...) abort
function FugitiveExecute(args, ...) abort
function FugitiveExtractGitDir(path) abort
function FugitiveFind(...) abort
function FugitiveGitDir(...) abort
function FugitiveGitPath(path) abort
function FugitiveGitVersion(...) abort
function FugitiveHead(...) abort
function FugitiveIsGitDir(...) abort
function FugitiveParse(...) abort
function FugitivePath(...) abort
function FugitiveReal(...) abort
function FugitiveRemote(...) abort
function FugitiveRemoteUrl(...) abort
function FugitiveResult(...) abort
function FugitiveShellCommand(...) abort
function FugitiveStatusline(...) abort
function FugitiveVimPath(path) abort
function FugitiveWorkTree(...) abort
function GitGutterFocus()
function GitGutterGetHunkSummary()
function GitGutterGetHunks()
function GoWinbufnr(bufnum)
function GrabAllCommands()
function GrabAllFunctions()
function GrabMK()
function GrabScriptnames()
function GrabSimpleMaps()
function IlluminateMoreToggle()
function IncSearchToggle()
function LanguageTool_lopen()
function LogiPat(pat, ...)
function MatchTagAlways#GoToEnclosingTag()
function MatchTagAlways#Setup()
function MatchupStatusOffscreen()
function MruGetFiles(...)
function NERDComment(mode, type) range
function NERDCommentIsCharCommented(line, col)
function NERDCommentIsLineCommented(lineNo)
function NERDTreeAddKeyMap(options)
function NERDTreeAddMenuItem(options)
function NERDTreeAddMenuSeparator(...)
function NERDTreeAddNode()
function NERDTreeAddPathFilter(callback)
function NERDTreeAddSubmenu(options)
function NERDTreeCWD()
function NERDTreeChangePermissions()
function NERDTreeCopyNode()
function NERDTreeCopyPath()
function NERDTreeDeleteNode()
function NERDTreeExecFile()
function NERDTreeExecFileActive()
function NERDTreeExecuteFile()
function NERDTreeExecuteFileLinux()
function NERDTreeExecuteFileWindows()
function NERDTreeFocus()
function NERDTreeListNode()
function NERDTreeListNodeWin32()
function NERDTreeMoveNode()
function NERDTreeQuickLook()
function NERDTreeRender()
function NERDTreeRevealFileLinux()
function NERDTreeRevealInExplorer()
function NERDTreeRevealInFinder()
function NERDTreeSystemCommand()
function NERDTreeWebDevIconsRefreshListener(event)
function NetUserPass(...)
function NetrwStatusLine()
function OpenBrowser(...) abort
function OpenBrowserSearch(...) abort
function OpenInEmacs()
function ParenthsToggle()
function PercentUnicode()
function QArgSplitter(qarg)
function RestoreMark(markname)
function RestoreUserMaps(suffix)
function RestoreWinPosn(...)
function SaveMark(markname)
function SaveUserMaps(mapmode, maplead, mapchx, suffix)
function SaveWinPosn(...)
function SetupRemoteReplies()
function ShowTrailingWhitespace#Color#EnsureVisibleBackgroundColor() abort
function ShowTrailingWhitespace#Detect(isInsertMode)
function ShowTrailingWhitespace#Filter#BlacklistFile(isPermanent)
function ShowTrailingWhitespace#Filter#Default()
function ShowTrailingWhitespace#Filter#RemoveFileFromBlacklist()
function ShowTrailingWhitespace#IsSet()
function ShowTrailingWhitespace#NotFiltered()
function ShowTrailingWhitespace#Pattern(isInsertMode)
function ShowTrailingWhitespace#Reset()
function ShowTrailingWhitespace#Set(isTurnOn, isGlobal)
function ShowTrailingWhitespace#SetLocalExtraPattern(pattern)
function ShowTrailingWhitespace#Toggle(isGlobal)
function SplitHtoggle()
function SplitVtoggle()
function StartifyEntryFormat() abort
function StripStoreCurSel()
function SuperTab(command)
function SuperTabAlternateCompletion(type)
function SuperTabChain(completefunc, completekeys, ...)
function SuperTabCodeComplete(findstart, base)
function SuperTabLongestHighlight(dir)
function SuperTabSetCompletionType(type)
function SuperTabSetDefaultCompletionType(type)
function TWSDark()
function TagbarBalloonExpr() abort
function TbCsv()
function TestFiletypeFuncs(testlist)
function TestSuperTabCodeComplete(findstart, base)
function ToggleBufExplorer()
function TomorrowMenu()
function TweakLS()
function TwiddleCase(str)
function UnComment()
function UnicodePercent()
function VifmExitCb(data, job, code) abort
function VimFolds()
function VimFtpluginUndo()
function VimgrepQRs()
function VimgrepSelection()
function WebDevIconsGetFileFormatSymbol(...)
function WebDevIconsGetFileTypeSymbol(...) abort
function WebDevIconsNERDTreeChangeRootHandler(node)
function WebDevIconsNERDTreeDirClose(node)
function WebDevIconsNERDTreeDirCloseChildren(node)
function WebDevIconsNERDTreeDirCloseRecursively(node)
function WebDevIconsNERDTreeDirOpen(node)
function WebDevIconsNERDTreeDirOpenRecursively(node)
function WebDevIconsNERDTreeDirUpdateFlags(node, glyph)
function WebDevIconsNERDTreeMapActivateNode(node)
function WebDevIconsNERDTreeMapActivateNodeSingleMode(node)
function WebDevIconsNERDTreeMapCloseChildren(node)
function WebDevIconsNERDTreeMapCloseDir(node)
function WebDevIconsNERDTreeMapOpenRecursively(node)
function WebDevIconsNERDTreeMapUpdirKeepOpen()
function WebDevIconsNERDTreeUpDirCurrentRootClosedHandler()
function airline#add_inactive_statusline_func(name, ...)
function airline#add_inactive_statusline_funcref(function, ...)
function airline#add_statusline_func(name, ...)
function airline#add_statusline_funcref(function, ...)
function airline#async#get_mq_async(cmd, file)
function airline#async#get_msgfmt_stat(cmd, file)
function airline#async#mq_output(buf, file)
function airline#async#nvim_vcs_untracked(cfg, file, vcs)
function airline#async#vcs_clean(cmd, file, vcs)
function airline#async#vcs_untracked(config, file, vcs)
function airline#async#vim7_vcs_clean(cmd, file, vcs)
function airline#async#vim_vcs_clean(cmd, file, vcs)
function airline#async#vim_vcs_untracked(config, file)
function airline#builder#get_next_group(sections, i)
function airline#builder#get_prev_group(sections, i)
function airline#builder#new(context)
function airline#builder#should_change_group(group1, group2)
function airline#check_mode(winnr)
function airline#cmdwinenter(...)
function airline#extensions#ale#get(type)
function airline#extensions#ale#get_error()
function airline#extensions#ale#get_warning()
function airline#extensions#ale#init(ext)
function airline#extensions#append_to_section(name, value)
function airline#extensions#apply(...)
function airline#extensions#apply_left_override(section1, section2)
function airline#extensions#branch#get_head()
function airline#extensions#branch#head()
function airline#extensions#branch#init(ext)
function airline#extensions#branch#update_untracked_config(file, vcs)
function airline#extensions#csv#apply(...)
function airline#extensions#csv#get_column()
function airline#extensions#csv#init(ext)
function airline#extensions#ctrlp#apply(...)
function airline#extensions#ctrlp#ctrlp_airline(...)
function airline#extensions#ctrlp#ctrlp_airline_status(...)
function airline#extensions#ctrlp#generate_color_map(dark, light, white)
function airline#extensions#ctrlp#init(ext)
function airline#extensions#ctrlp#load_theme(palette)
function airline#extensions#default#apply(builder, context) abort
function airline#extensions#dirvish#apply(...) abort
function airline#extensions#dirvish#init(ext) abort
function airline#extensions#fern#apply(...) abort
function airline#extensions#fern#init(ext) abort
function airline#extensions#fugitiveline#bufname() abort
function airline#extensions#fugitiveline#init(ext) abort
function airline#extensions#fzf#apply(...) abort
function airline#extensions#fzf#inactive_apply(...) abort
function airline#extensions#fzf#init(ext) abort
function airline#extensions#fzf#statusline(...) abort
function airline#extensions#get_loaded_extensions()
function airline#extensions#hunks#get_hunks() abort
function airline#extensions#hunks#get_raw_hunks() abort
function airline#extensions#hunks#init(ext) abort
function airline#extensions#keymap#init(ext)
function airline#extensions#keymap#status()
function airline#extensions#load()
function airline#extensions#load_theme()
function airline#extensions#netrw#apply(...)
function airline#extensions#netrw#init(ext)
function airline#extensions#netrw#sortstring()
function airline#extensions#po#apply(...)
function airline#extensions#po#init(ext)
function airline#extensions#po#on_winenter()
function airline#extensions#po#shorten()
function airline#extensions#po#stats()
function airline#extensions#prepend_to_section(name, value)
function airline#extensions#quickfix#apply(...)
function airline#extensions#quickfix#get_type()
function airline#extensions#quickfix#inactive_qf_window(...)
function airline#extensions#quickfix#init(ext)
function airline#extensions#searchcount#apply(...) abort
function airline#extensions#searchcount#init(ext) abort
function airline#extensions#searchcount#status() abort
function airline#extensions#tagbar#currenttag()
function airline#extensions#tagbar#get_status(...)
function airline#extensions#tagbar#inactive_apply(...)
function airline#extensions#tagbar#init(ext)
function airline#extensions#term#apply(...) abort
function airline#extensions#term#inactive_apply(...) abort
function airline#extensions#term#init(ext) abort
function airline#extensions#term#termmode() abort
function airline#extensions#undotree#apply(...)
function airline#extensions#undotree#init(ext)
function airline#extensions#vimtex#apply(...)
function airline#extensions#vimtex#get_scope()
function airline#extensions#vimtex#init(ext)
function airline#extensions#whitespace#check()
function airline#extensions#whitespace#disable()
function airline#extensions#whitespace#init(...)
function airline#extensions#whitespace#toggle()
function airline#extensions#wordcount#apply(...)
function airline#extensions#wordcount#get()
function airline#extensions#wordcount#init(ext)
function airline#formatter#short_path#format(val) abort
function airline#highlighter#add_accent(accent) abort
function airline#highlighter#add_separator(from, to, inverse) abort
function airline#highlighter#exec(group, colors) abort
function airline#highlighter#get_highlight(group, ...) abort
function airline#highlighter#get_highlight2(fg, bg, ...) abort
function airline#highlighter#highlight(modes, ...) abort
function airline#highlighter#highlight_modified_inactive(bufnr) abort
function airline#highlighter#load_theme() abort
function airline#highlighter#reset_hlcache() abort
function airline#init#bootstrap()
function airline#init#sections()
function airline#load_theme()
function airline#mode_changed()
function airline#parts#crypt()
function airline#parts#define(key, config)
function airline#parts#define_accent(key, accent)
function airline#parts#define_condition(key, predicate)
function airline#parts#define_empty(keys)
function airline#parts#define_function(key, name)
function airline#parts#define_minwidth(key, width)
function airline#parts#define_raw(key, raw)
function airline#parts#define_text(key, text)
function airline#parts#ffenc()
function airline#parts#filetype()
function airline#parts#get(key)
function airline#parts#iminsert()
function airline#parts#mode()
function airline#parts#paste()
function airline#parts#readonly()
function airline#parts#spell()
function airline#remove_statusline_func(name)
function airline#section#create(parts)
function airline#section#create_left(parts)
function airline#section#create_right(parts)
function airline#statusline(winnr)
function airline#switch_matching_theme()
function airline#switch_theme(name, ...)
function airline#themes#generate_color_map(sect1, sect2, sect3, ...)
function airline#themes#get_highlight(group, ...)
function airline#themes#get_highlight2(fg, bg, ...)
function airline#themes#patch(palette)
function airline#themes#tomorrow#refresh()
function airline#update_statusline()
function airline#update_statusline_focuslost()
function airline#update_statusline_inactive(range)
function airline#update_tabline()
function airline#util#append(text, minwidth)
function airline#util#doautocmd(event)
function airline#util#exec_funcrefs(list, ...)
function airline#util#getbufvar(bufnr, key, def)
function airline#util#getwinvar(winnr, key, def)
function airline#util#has_custom_scm()
function airline#util#has_fugitive()
function airline#util#has_gina()
function airline#util#has_lawrencium()
function airline#util#has_vcscommand()
function airline#util#has_vim9_script()
function airline#util#ignore_buf(name)
function airline#util#ignore_next_focusgain()
function airline#util#is_popup_window(winnr)
function airline#util#prepend(text, minwidth)
function airline#util#shorten(text, winwidth, minwidth, ...)
function airline#util#stl_disabled(winnr)
function airline#util#strcharpart(...)
function airline#util#strchars(str)
function airline#util#themes(match)
function airline#util#try_focusgained()
function airline#util#warning(msg)
function airline#util#winwidth(...) abort
function airline#util#wrap(text, minwidth)
function ale#Env(variable_name, value) abort
function ale#Escape(str) abort
function ale#FileTooLarge(buffer) abort
function ale#GetFilenameMappings(buffer, name) abort
function ale#GetLocItemMessage(item, format_string) abort
function ale#Has(feature) abort
function ale#Pad(string) abort
function ale#Queue(delay, ...) abort
function ale#Set(variable_name, default) abort
function ale#ShouldDoNothing(buffer) abort
function ale#Var(buffer, variable_name) abort
function ale#balloon#Disable() abort
function ale#balloon#Enable() abort
function ale#balloon#Expr() abort
function ale#balloon#MessageForPos(bufnr, lnum, col) abort
function ale#code_action#ApplyChanges(filename, changes, options) abort
function ale#code_action#BuildChangesList(changes_map) abort
function ale#code_action#DisablePopUpMenu() abort
function ale#code_action#EnablePopUpMenu() abort
function ale#code_action#GetChanges(workspace_edit) abort
function ale#code_action#GetCodeActions(options) abort
function ale#code_action#HandleCodeAction(code_action, options) abort
function ale#code_action#ReloadBuffer() abort
function ale#cursor#EchoCursorWarning(...) abort
function ale#cursor#EchoCursorWarningWithDelay() abort
function ale#cursor#Echom(message) abort
function ale#cursor#ShowCursorDetail() abort
function ale#cursor#TruncatedEcho(original_message) abort
function ale#engine#Cleanup(buffer) abort
function ale#engine#CleanupEveryBuffer() abort
function ale#engine#EscapeCommandPart(command_part) abort
function ale#engine#FixLocList(buffer, linter_name, from_other_source, loclist) abort
function ale#engine#GetLoclist(buffer) abort
function ale#engine#HandleLoclist(linter_name, buffer, loclist, from_other_source) abort
function ale#engine#InitBufferInfo(buffer) abort
function ale#engine#IsCheckingBuffer(buffer) abort
function ale#engine#IsExecutable(buffer, executable) abort
function ale#engine#MarkLinterActive(info, linter) abort
function ale#engine#MarkLinterInactive(info, linter_name) abort
function ale#engine#ResetExecutableCache() abort
function ale#engine#RunLinters(buffer, linters, should_lint_file) abort
function ale#engine#SendResultsToNeovimDiagnostics(buffer, loclist) abort
function ale#engine#SetResults(buffer, loclist) abort
function ale#engine#Stop(buffer) abort
function ale#events#ClockMilliseconds() abort
function ale#events#EmulateInsertLeave(buffer) abort
function ale#events#FileChangedEvent(buffer) abort
function ale#events#FileTypeEvent(buffer, new_filetype) abort
function ale#events#Init() abort
function ale#events#InsertEnterEvent(buffer) abort
function ale#events#InsertLeaveEvent(buffer) abort
function ale#events#LintOnEnter(buffer) abort
function ale#events#QuitEvent(buffer) abort
function ale#events#QuitRecently(buffer) abort
function ale#events#ReadOrEnterEvent(buffer) abort
function ale#events#SaveEvent(buffer) abort
function ale#linter#Define(filetype, linter) abort
function ale#linter#Get(original_filetypes) abort
function ale#linter#GetAddress(buffer, linter) abort
function ale#linter#GetAll(filetypes) abort
function ale#linter#GetCommand(buffer, linter) abort
function ale#linter#GetCwd(buffer, linter) abort
function ale#linter#GetExecutable(buffer, linter) abort
function ale#linter#GetLanguage(buffer, linter) abort
function ale#linter#GetLintersLoaded() abort
function ale#linter#PreProcess(filetype, linter) abort
function ale#linter#PreventLoading(filetype) abort
function ale#linter#Reset() abort
function ale#linter#ResolveFiletype(original_filetype) abort
function ale#statusline#Count(buffer) abort
function ale#statusline#FirstProblem(buffer, type) abort
function ale#statusline#Update(buffer, loclist) abort
function ale#util#BinarySearch(loclist, buffer, line, column) abort
function ale#util#Col(str, chr) abort
function ale#util#EscapePCRE(unsafe_string) abort
function ale#util#EscapeVim(unsafe_string) abort
function ale#util#Execute(expr) abort
function ale#util#FeedKeys(...) abort
function ale#util#FindItemAtCursor(buffer) abort
function ale#util#FunctionArgCount(function) abort
function ale#util#FuzzyJSONDecode(data, default) abort
function ale#util#GetBufferContents(buffer) abort
function ale#util#GetFunction(string_or_ref) abort
function ale#util#GetItemPriority(item) abort
function ale#util#GetLineCount(buffer) abort
function ale#util#GetMatches(lines, patterns) abort
function ale#util#HasBuflineApi() abort
function ale#util#InSandbox() abort
function ale#util#Input(message, value, ...) abort
function ale#util#JoinNeovimOutput(job, last_line, data, mode, callback) abort
function ale#util#LocItemCompare(left, right) abort
function ale#util#LocItemCompareWithText(left, right) abort
function ale#util#MapMatches(lines, patterns, Callback) abort
function ale#util#Mode(...) abort
function ale#util#Open(filename, line, column, options) abort
function ale#util#SetBufferContents(buffer, lines) abort
function ale#util#ShowMessage(string, ...) abort
function ale#util#StartPartialTimer(delay, callback, args) abort
function ale#util#StopPartialTimer(timer_id) abort
function ale#util#Tempname() abort
function ale#util#ToResource(uri) abort
function ale#util#ToURI(resource) abort
function ale#util#Writefile(buffer, lines, filename) abort
function ale_linters#vim#ale_custom_linting_rules#GetCommand(buffer) abort
function ale_linters#vim#ale_custom_linting_rules#GetCwd(buffer) abort
function ale_linters#vim#ale_custom_linting_rules#GetExecutable(buffer) abort
function ale_linters#vim#ale_custom_linting_rules#Handle(buffer, lines) abort
function ale_linters#vim#vimls#GetProjectRoot(buffer) abort
function ale_linters#vim#vint#GetCommand(buffer, version) abort
function ale_linters#vim#vint#Handle(buffer, lines) abort
function bufferize#Bufnr(command)
function bufferize#Run(cmd, mods)
function bufferize#RunWithTimer(args, mods)
function context#activate() abort
function context#disable(all) abort
function context#enable(all) abort
function context#peek() abort
function context#popup#clear() abort
function context#popup#close() abort
function context#popup#get_context() abort
function context#popup#layout() abort
function context#popup#redraw(winid) abort
function context#popup#update_context() abort
function context#settings#parse() abort
function context#toggle(all) abort
function context#update(...) abort
function context#util#active() abort
function context#util#echof(...) abort
function context#util#filter(context, line_number, consider_height) abort
function context#util#get_border_line(lines, level, indent, winid) abort
function context#util#limit_join_parts(lines) abort
function context#util#log_indent(amount) abort
function context#util#map(arg) abort
function context#util#map_H() abort
function context#util#map_zt() abort
function context#util#update_line_state() abort
function context#util#update_state() abort
function context#util#update_window_state(winid) abort
function ctrlp#mrufiles#add(fn)
function ctrlp#mrufiles#bufs()
function ctrlp#mrufiles#cachefile()
function ctrlp#mrufiles#init()
function ctrlp#mrufiles#list(...)
function ctrlp#mrufiles#opts()
function ctrlp#mrufiles#refresh(...)
function ctrlp#mrufiles#remove(files)
function ctrlp#mrufiles#tgrel()
function ctrlp#utils#cachedir()
function ctrlp#utils#cachefile(...)
function ctrlp#utils#fnesc(path, type, ...)
function ctrlp#utils#glob(...)
function ctrlp#utils#globpath(...)
function ctrlp#utils#lash()
function ctrlp#utils#mkdir(dir)
function ctrlp#utils#opts()
function ctrlp#utils#readfile(file)
function ctrlp#utils#writecache(lines, ...)
function devicons#plugins#ctrlp#init() abort
function devicons#plugins#startify#init() abort
function dirvish_git#init() abort
function dirvish_git#jump_to_next_file() abort
function dirvish_git#jump_to_prev_file() abort
function dirvish_git#reload() abort
function fern#hook#add(name, callback, ...) abort
function fern#hook#emit(name, ...) abort
function fern#hook#promise(name) abort
function fern#hook#remove(name, ...) abort
function fern#scheme#file#mapping#init(disable_default_mappings) abort
function fern#version() abort
function fern_git_status#init() abort
function fugitive#Autowrite() abort
function fugitive#BisectComplete(A, L, P, ...) abort
function fugitive#BlameComplete(A, L, P) abort
function fugitive#BlameFileType() abort
function fugitive#BlameSyntax() abort
function fugitive#BrowseCommand(line1, count, range, bang, mods, arg, ...) abort
function fugitive#BufReadCmd(...) abort
function fugitive#BufReadStatus(cmdbang) abort
function fugitive#BufWriteCmd(...) abort
function fugitive#CanDiffoff(buf) abort
function fugitive#CanPty() abort
function fugitive#Cd(path, ...) abort
function fugitive#CdComplete(A, L, P) abort
function fugitive#Cfile() abort
function fugitive#Command(line1, line2, range, bang, mods, arg, ...) abort
function fugitive#CommitComplete(A, L, P, ...) abort
function fugitive#Complete(lead, ...) abort
function fugitive#CompleteForWorkingDir(A, L, P, ...) abort
function fugitive#CompleteObject(base, ...) abort
function fugitive#CompletePath(base, ...) abort
function fugitive#Config(...) abort
function fugitive#ConfigGetAll(name, ...) abort
function fugitive#ConfigGetRegexp(pattern, ...) abort
function fugitive#Cwindow() abort
function fugitive#DeleteCommand(line1, line2, range, bang, mods, arg, ...) abort
function fugitive#DidChange(...) abort
function fugitive#DiffClose() abort
function fugitive#Diffsplit(autodir, keepfocus, mods, arg, ...) abort
function fugitive#DropCommand(line1, count, range, bang, mods, arg, ...) abort
function fugitive#EditComplete(A, L, P) abort
function fugitive#EfmDir(...) abort
function fugitive#Execute(...) abort
function fugitive#Expand(object) abort
function fugitive#ExpireConfig(...) abort
function fugitive#FetchComplete(A, L, P, ...) abort
function fugitive#FileReadCmd(...) abort
function fugitive#FileWriteCmd(...) abort
function fugitive#Find(object, ...) abort
function fugitive#Foldtext() abort
function fugitive#GX() abort
function fugitive#GitVersion(...) abort
function fugitive#GrepCommand(line1, line2, range, bang, mods, arg) abort
function fugitive#GrepComplete(A, L, P) abort
function fugitive#Head(...) abort
function fugitive#LogCommand(line1, count, range, bang, mods, args, type) abort
function fugitive#LogComplete(A, L, P) abort
function fugitive#MapCfile(...) abort
function fugitive#MapJumps(...) abort
function fugitive#MergeComplete(A, L, P, ...) abort
function fugitive#MessageCfile() abort
function fugitive#MoveCommand(line1, line2, range, bang, mods, arg, ...) abort
function fugitive#Object(...) abort
function fugitive#Open(cmd, bang, mods, arg, ...) abort
function fugitive#PagerFor(argv, ...) abort
function fugitive#Parse(url) abort
function fugitive#Path(url, ...) abort
function fugitive#PathComplete(...) abort
function fugitive#PorcelainCfile() abort
function fugitive#PrepareDirEnvGitFlagsArgs(...) abort
function fugitive#PrepareJob(...) abort
function fugitive#PullComplete(A, L, P, ...) abort
function fugitive#PushComplete(A, L, P, ...) abort
function fugitive#ReadCommand(line1, count, range, bang, mods, arg, ...) abort
function fugitive#ReadComplete(A, L, P) abort
function fugitive#Real(url) abort
function fugitive#RebaseComplete(A, L, P, ...) abort
function fugitive#ReloadStatus(...) abort
function fugitive#Remote(...) abort
function fugitive#RemoteHttpHeaders(remote) abort
function fugitive#RemoteUrl(...) abort
function fugitive#RemoveCommand(line1, line2, range, bang, mods, arg, ...) abort
function fugitive#RenameCommand(line1, line2, range, bang, mods, arg, ...) abort
function fugitive#RenameComplete(A, L, P) abort
function fugitive#ResolveUrl(target, ...) abort
function fugitive#Result(...) abort
function fugitive#Resume() abort
function fugitive#RevParse(rev, ...) abort
function fugitive#RevertComplete(A, L, P, ...) abort
function fugitive#ShellCommand(...) abort
function fugitive#SourceCmd(...) abort
function fugitive#SshConfig(host, ...) abort
function fugitive#SshHostAlias(authority) abort
function fugitive#Statusline(...) abort
function fugitive#UnlinkCommand(line1, line2, range, bang, mods, arg, ...) abort
function fugitive#Unquote(string) abort
function fugitive#UrlDecode(str) abort
function fugitive#Wait(job_or_jobs, ...) abort
function fugitive#WqCommand(...) abort
function fugitive#WriteCommand(line1, line2, range, bang, mods, arg, ...) abort
function fugitive#delete(url, ...) abort
function fugitive#filereadable(url) abort
function fugitive#filewritable(url) abort
function fugitive#foldtext() abort
function fugitive#getfperm(url) abort
function fugitive#getfsize(url) abort
function fugitive#getftime(url) abort
function fugitive#getftype(url) abort
function fugitive#glob(url, ...) abort
function fugitive#isdirectory(url) abort
function fugitive#readfile(url, ...) abort
function fugitive#repo(...) abort
function fugitive#resolve(url) abort
function fugitive#setfperm(url, perm) abort
function fugitive#simplify(url) abort
function fugitive#statusline(...) abort
function fugitive#writefile(lines, url, ...) abort
function fzf#complete(...)
function fzf#exec(...)
function fzf#install()
function fzf#run(...) abort
function fzf#shellescape(arg, ...)
function fzf#wrap(...)
function gitgutter#all(force) abort
function gitgutter#buffer_disable(...) abort
function gitgutter#buffer_enable(...) abort
function gitgutter#buffer_toggle(...) abort
function gitgutter#difforig()
function gitgutter#disable() abort
function gitgutter#enable() abort
function gitgutter#git()
function gitgutter#highlight#define_highlights() abort
function gitgutter#highlight#define_sign_text_highlights() abort
function gitgutter#highlight#define_signs() abort
function gitgutter#highlight#line_disable() abort
function gitgutter#highlight#line_enable() abort
function gitgutter#highlight#line_toggle() abort
function gitgutter#highlight#linenr_disable() abort
function gitgutter#highlight#linenr_enable() abort
function gitgutter#highlight#linenr_toggle() abort
function gitgutter#process_buffer(bufnr, force) abort
function gitgutter#quickfix(current_file)
function gitgutter#setup_maps()
function gitgutter#toggle() abort
function gitgutter#utility#base_path(bufnr)
function gitgutter#utility#cd_cmd(bufnr, cmd) abort
function gitgutter#utility#clean_smudge_filter_applies(bufnr)
function gitgutter#utility#extension(bufnr) abort
function gitgutter#utility#file(bufnr)
function gitgutter#utility#filename(bufnr) abort
function gitgutter#utility#get_diff_base(bufnr)
function gitgutter#utility#getbufvar(buffer, varname, ...)
function gitgutter#utility#git_supports_command_line_config_override() abort
function gitgutter#utility#has_repo_path(bufnr)
function gitgutter#utility#is_active(bufnr) abort
function gitgutter#utility#repo_path(bufnr, shellesc) abort
function gitgutter#utility#set_repo_path(bufnr, continuation) abort
function gitgutter#utility#setbufvar(buffer, varname, val)
function gitgutter#utility#shellescape(arg) abort
function gitgutter#utility#supports_overscore_sign()
function gitgutter#utility#system(cmd, ...) abort
function gitgutter#utility#warn(message) abort
function gitgutter#utility#warn_once(bufnr, message, key) abort
function gitgutter#utility#windows()
function gitstatus#getIndicator(status) abort
function gitstatus#isWin() abort
function gitstatus#listener#New(opts) abort
function gitstatus#log#NewLogger(level) abort
function gitstatus#shouldConceal() abort
function go#config#AddtagsSkipUnexported() abort
function go#config#AddtagsTransform() abort
function go#config#AlternateMode() abort
function go#config#AsmfmtAutosave() abort
function go#config#AutoSameids() abort
function go#config#AutoTypeInfo() abort
function go#config#BinPath() abort
function go#config#BuildTags() abort
function go#config#CodeCompletionEnabled() abort
function go#config#CodeCompletionIcase() abort
function go#config#Debug() abort
function go#config#DebugAddress() abort
function go#config#DebugBreakpointSignText() abort
function go#config#DebugCommands() abort
function go#config#DebugLogDelay() abort
function go#config#DebugLogOutput() abort
function go#config#DebugMappings() abort
function go#config#DebugPreserveLayout() abort
function go#config#DebugSubstitutePaths() abort
function go#config#DebugWindows() abort
function go#config#DeclsIncludes() abort
function go#config#DeclsMode() abort
function go#config#DefMode() abort
function go#config#DefReuseBuffer() abort
function go#config#DiagnosticsEnabled() abort
function go#config#DiagnosticsLevel() abort
function go#config#DocBalloon() abort
function go#config#DocMaxHeight() abort
function go#config#DocPopupWindow() abort
function go#config#DocUrl() abort
function go#config#EchoCommandInfo() abort
function go#config#EchoGoInfo() abort
function go#config#ErrcheckBin() abort
function go#config#FillStructMode() abort
function go#config#FmtAutosave() abort
function go#config#FmtCommand() abort
function go#config#FmtExperimental() abort
function go#config#FmtFailSilently() abort
function go#config#FmtOptions() abort
function go#config#FoldEnable(...) abort
function go#config#GolintBin() abort
function go#config#GoplsAnalyses() abort
function go#config#GoplsCompleteUnimported() abort
function go#config#GoplsDeepCompletion() abort
function go#config#GoplsEnabled() abort
function go#config#GoplsGofumpt() abort
function go#config#GoplsLocal() abort
function go#config#GoplsMatcher() abort
function go#config#GoplsOptions() abort
function go#config#GoplsSettings() abort
function go#config#GoplsStaticCheck() abort
function go#config#GoplsTempModfile() abort
function go#config#GoplsUsePlaceholders() abort
function go#config#GorenameBin() abort
function go#config#GorenamePrefill() abort
function go#config#HighlightArrayWhitespaceError() abort
function go#config#HighlightBuildConstraints() abort
function go#config#HighlightChanWhitespaceError() abort
function go#config#HighlightDebug() abort
function go#config#HighlightDiagnosticErrors() abort
function go#config#HighlightDiagnosticWarnings() abort
function go#config#HighlightExtraTypes() abort
function go#config#HighlightFields() abort
function go#config#HighlightFormatStrings() abort
function go#config#HighlightFunctionCalls() abort
function go#config#HighlightFunctionParameters() abort
function go#config#HighlightFunctions() abort
function go#config#HighlightGenerateTags() abort
function go#config#HighlightOperators() abort
function go#config#HighlightSpaceTabError() abort
function go#config#HighlightStringSpellcheck() abort
function go#config#HighlightTrailingWhitespaceError() abort
function go#config#HighlightTypes() abort
function go#config#HighlightVariableAssignments() abort
function go#config#HighlightVariableDeclarations() abort
function go#config#ImplementsMode() abort
function go#config#ImportsAutosave() abort
function go#config#ImportsMode() abort
function go#config#ListAutoclose() abort
function go#config#ListHeight() abort
function go#config#ListType() abort
function go#config#ListTypeCommands() abort
function go#config#LspLog() abort
function go#config#MetalinterAutosave() abort
function go#config#MetalinterAutosaveEnabled() abort
function go#config#MetalinterCommand() abort
function go#config#MetalinterDeadline() abort
function go#config#MetalinterEnabled() abort
function go#config#ModFmtAutosave() abort
function go#config#PlayBrowserCommand() abort
function go#config#PlayOpenBrowser() abort
function go#config#ReferrersMode() abort
function go#config#RenameCommand() abort
function go#config#SearchBinPathFirst() abort
function go#config#SetAsmfmtAutosave(value) abort
function go#config#SetAutoSameids(value) abort
function go#config#SetAutoTypeInfo(value) abort
function go#config#SetBuildTags(value) abort
function go#config#SetDebugDiag(value) abort
function go#config#SetFmtAutosave(value) abort
function go#config#SetMetalinterAutosave(value) abort
function go#config#SetModFmtAutosave(value) abort
function go#config#SetTemplateAutocreate(value) abort
function go#config#SetTermCloseOnExit(value) abort
function go#config#SetTermEnabled(value) abort
function go#config#SnippetEngine() abort
function go#config#StatuslineDuration() abort
function go#config#TemplateAutocreate() abort
function go#config#TemplateFile() abort
function go#config#TemplateTestFile() abort
function go#config#TemplateUsePkg() abort
function go#config#TermCloseOnExit() abort
function go#config#TermEnabled() abort
function go#config#TermHeight() abort
function go#config#TermMode() abort
function go#config#TermReuse() abort
function go#config#TermWidth() abort
function go#config#TestShowName() abort
function go#config#TestTimeout() abort
function go#config#TextobjIncludeFunctionDoc() abort
function go#config#TextobjIncludeVariable() abort
function go#config#Updatetime() abort
function go#config#VersionWarning() abort
function go#util#Chdir(dir) abort
function go#util#ClearHighlights(group) abort
function go#util#EchoError(msg)
function go#util#EchoInfo(msg)
function go#util#EchoProgress(msg)
function go#util#EchoSuccess(msg)
function go#util#EchoWarning(msg)
function go#util#Exec(cmd, ...) abort
function go#util#ExecInDir(cmd, ...) abort
function go#util#ExecInWorkDir(cmd, wd, ...) abort
function go#util#ExpandPattern(...) abort
function go#util#GetLines()
function go#util#HasDebug(flag)
function go#util#HighlightPositions(group, pos) abort
function go#util#IsMac() abort
function go#util#IsUsingCygwinShell()
function go#util#IsWin() abort
function go#util#Join(...) abort
function go#util#LineEnding() abort
function go#util#ModuleRoot(...) abort
function go#util#Offset(line, col) abort
function go#util#OffsetCursor() abort
function go#util#OpenBrowser(url) abort
function go#util#ParseErrors(lines) abort
function go#util#PathListSep() abort
function go#util#PathSep() abort
function go#util#SetEnv(name, value) abort
function go#util#ShellError() abort
function go#util#Shelljoin(arglist, ...) abort
function go#util#Shelllist(arglist, ...) abort
function go#util#ShowInfo(info)
function go#util#StripPathSep(path) abort
function go#util#StripTrailingSlash(paths) abort
function go#util#System(str, ...) abort
function go#util#TestName() abort
function go#util#TestNamesInFile() abort
function go#util#Windo(command) abort
function go#util#archive()
function go#util#camelcase(word) abort
function go#util#env(key) abort
function go#util#goarch() abort
function go#util#gobin() abort
function go#util#gomod() abort
function go#util#gomodcache() abort
function go#util#goos() abort
function go#util#gopath() abort
function go#util#goroot() abort
function go#util#has_job(...) abort
function go#util#hostosarch() abort
function go#util#pascalcase(word) abort
function go#util#snakecase(word) abort
function go#util#snippetcase(word) abort
function go#util#tempdir(prefix) abort
function go#util#testLine() abort
function illuminate#disable_illumination(bufonly) abort
function illuminate#enable_illumination(bufonly) abort
function illuminate#on_cursor_moved() abort
function illuminate#on_cursor_moved_i() abort
function illuminate#on_insert_entered() abort
function illuminate#on_leaving_autocmds() abort
function illuminate#toggle_illumination(bufonly) abort
function ingo#buffer#ExistOtherBuffers(targetBufNr)
function ingo#buffer#ExistOtherLoadedBuffers(targetBufNr)
function ingo#buffer#IsBlank(...)
function ingo#buffer#IsEmpty(...)
function ingo#buffer#IsEmptyVim()
function ingo#buffer#IsPersisted(...)
function ingo#buffer#IsScratch(...)
function ingo#buffer#IsWritable(...)
function ingo#buffer#NameOrDefault(bufName) abort
function ingo#buffer#VisibleList(...)
function ingo#fs#path#Canonicalize(filespec, ...)
function ingo#fs#path#Combine(first, ...)
function ingo#fs#path#Equals(p1, p2, ...)
function ingo#fs#path#Exists(filespec)
function ingo#fs#path#GetRootDir(filespec)
function ingo#fs#path#IsAbsolute(filespec)
function ingo#fs#path#IsCaseInsensitive(...)
function ingo#fs#path#IsPath(filespec) abort
function ingo#fs#path#IsUncPathRoot(filespec)
function ingo#fs#path#IsUpwards(filespec)
function ingo#fs#path#Normalize(filespec, ...)
function ingo#fs#path#Separator()
function ingo#hlgroup#GetApplicableColorModes() abort
function ingo#hlgroup#GetBackgroundColor(syntaxId, ...) abort
function ingo#hlgroup#GetColor(isBackground, syntaxId, ...) abort
function ingo#hlgroup#GetForegroundColor(syntaxId, ...) abort
function ingo#hlgroup#LinksTo(name)
function ingo#os#IsCygwin()
function ingo#os#IsWinOrDos()
function ingo#os#IsWindows()
function ingo#os#IsWindowsShell()
function ingo#os#PathSeparator()
function ingo#str#Contains(string, part, ...)
function ingo#str#EndsWith(string, substring, ...)
function ingo#str#Equals(string1, string2, ...)
function ingo#str#GetVirtCols(string, virtcol, width, isAllowSmaller)
function ingo#str#Reverse(string)
function ingo#str#StartsWith(string, substring, ...)
function ingo#str#Trim(string)
function ingo#str#TrimPattern(string, pattern, ...)
function ingo#str#TrimTrailing(string)
function ingo#str#Wrap(string, commonOrPrefix, ...) abort
function ingo#str#trcd(src, fromstr)
function ingo#str#trd(src, fromstr)
function matchup#init() abort
function matchup#loader#_treesitter_may_be_supported() abort
function matchup#loader#bufwinenter() abort
function matchup#loader#capture_group_replacement_order(cg) abort
function matchup#loader#get_capture_groups(str, ...) abort
function matchup#loader#init_buffer() abort
function matchup#loader#init_module() abort
function matchup#loader#refresh_match_words() abort
function matchup#loader#remove_capture_groups(re) abort
function matchup#loader#sidedict() abort
function matchup#matchparen#disable()
function matchup#matchparen#enable()
function matchup#matchparen#highlight_surrounding() abort
function matchup#matchparen#init_module() abort
function matchup#matchparen#reload()
function matchup#matchparen#scroll_callback(tid) abort
function matchup#matchparen#scroll_update(lnum) abort
function matchup#matchparen#scroll_update_float(lnum, position) abort
function matchup#matchparen#status_str(offscreen, ...) abort
function matchup#matchparen#toggle(...)
function matchup#matchparen#update()
function matchup#motion_force() abort
function matchup#motion_sid() abort
function matchup#perf#show_times()
function matchup#perf#tic(context)
function matchup#perf#timeout()
function matchup#perf#timeout_check()
function matchup#perf#timeout_start(timeout)
function matchup#perf#toc(context, state)
function matchup#util#append_match_words(str) abort
function matchup#util#check_match_words(sha256) abort
function matchup#util#command(cmd)
function matchup#util#has_duplicate_str(list)
function matchup#util#in_comment(...)
function matchup#util#in_comment_or_string(...)
function matchup#util#in_indent(...)
function matchup#util#in_string(...)
function matchup#util#in_synstack(name, ...) abort
function matchup#util#in_syntax(name, ...)
function matchup#util#in_whitespace(...)
function matchup#util#matchpref(id, default) abort
function matchup#util#patch_match_words(from, to, ...) abort
function matchup#util#standard_html(...) abort
function matchup#util#standard_xml(...) abort
function nerdtree#caseSensitiveFS() abort
function nerdtree#checkForBrowse(dir) abort
function nerdtree#closeBookmarksOnOpen() abort
function nerdtree#closeTreeOnOpen() abort
function nerdtree#compareNodePaths(p1, p2) abort
function nerdtree#compareNodes(n1, n2) abort
function nerdtree#completeBookmarks(A, L, P) abort
function nerdtree#deprecated(func, ...) abort
function nerdtree#echo(msg) abort
function nerdtree#echoError(msg) abort
function nerdtree#echoWarning(msg) abort
function nerdtree#exec(cmd, ignoreAll) abort
function nerdtree#has_opt(options, name) abort
function nerdtree#loadClassFiles() abort
function nerdtree#onBufLeave() abort
function nerdtree#osDefaultCaseSensitiveFS() abort
function nerdtree#pathEquals(lhs, rhs) abort
function nerdtree#postSourceActions() abort
function nerdtree#renderView() abort
function nerdtree#runningCygwin() abort
function nerdtree#runningMac() abort
function nerdtree#runningWindows() abort
function nerdtree#slash() abort
function nerdtree#ui_glue#bookmarkNode(...) abort
function nerdtree#ui_glue#chRootCwd() abort
function nerdtree#ui_glue#clearBookmarks(bookmarks) abort
function nerdtree#ui_glue#createDefaultBindings() abort
function nerdtree#ui_glue#invokeKeyMap(key) abort
function nerdtree#ui_glue#openBookmark(name) abort
function nerdtree#ui_glue#revealBookmark(name) abort
function nerdtree#ui_glue#setupCommands() abort
function nerdtree#ui_glue#upDir(preserveState) abort
function nerdtree#version(...) abort
function paste#Paste()
function peekaboo#aboo()
function peekaboo#off()
function peekaboo#on()
function peekaboo#peek(count, mode, visualmode)
function picker#IsNumber(variable) abort
function picker#IsString(variable) abort
function startify#center(lines) abort
function startify#debug()
function startify#fortune#boxed(...) abort
function startify#fortune#cowsay(...) abort
function startify#fortune#predefined_quotes() abort
function startify#fortune#quote() abort
function startify#get_lastline() abort
function startify#get_separator() abort
function startify#get_session_path() abort
function startify#insane_in_the_membrane(on_vimenter) abort
function startify#open_buffers(...) abort
function startify#pad(lines) abort
function startify#session_close() abort
function startify#session_delete(bang, ...) abort
function startify#session_delete_buffers()
function startify#session_list(lead, ...) abort
function startify#session_list_as_string(lead, ...) abort
function startify#session_load(source_last_session, ...) abort
function startify#session_save(bang, ...) abort
function startify#session_write(session_path)
function startify#set_batchmode(batchmode) abort
function startify#set_mark(type, ...) abort
function tagbar#CloseWindow() abort
function tagbar#ForceUpdate() abort
function tagbar#GetTagNearLine(lnum, ...) abort
function tagbar#IsOpen() abort
function tagbar#OpenWindow(...) abort
function tagbar#RestoreSession() abort
function tagbar#SetFoldLevel(level, force) abort
function tagbar#StopAutoUpdate() abort
function tagbar#ToggleWindow(...) abort
function tagbar#Update() abort
function tagbar#autoopen(...) abort
function tagbar#currentfile() abort
function tagbar#currenttag(fmt, default, ...) abort
function tagbar#currenttagtype(fmt, default) abort
function tagbar#debug#enabled() abort
function tagbar#debug#log(msg) abort
function tagbar#debug#log_ctags_output(output) abort
function tagbar#debug#start_debug(...) abort
function tagbar#debug#stop_debug() abort
function tagbar#gettypeconfig(type) abort
function tagbar#getusertypes() abort
function tagbar#highlighttag(openfolds, force) abort
function tagbar#inspect(var) abort
function tagbar#is_paused() abort
function tagbar#jump() abort
function tagbar#jumpToNearbyTag(direction, ...) abort
function tagbar#printfileinfo() abort
function tagbar#prototypes#basetag#new(name) abort
function tagbar#prototypes#fileinfo#new(fname, ftype, typeinfo) abort
function tagbar#prototypes#kindheadertag#new(name) abort
function tagbar#prototypes#normaltag#new(name) abort
function tagbar#prototypes#typeinfo#new(...) abort
function tagbar#sorting#sort(tags, compareby, compare_typeinfo) abort
function tagbar#state#get_current_file(force_current) abort
function tagbar#state#set_current_file(fileinfo) abort
function tagbar#state#set_paused() abort
function tagbar#toggle_pause() abort
function tagbar#types#uctags#init(supported_types) abort
function undotree#UndotreeFocus() abort
function undotree#UndotreeHide() abort
function undotree#UndotreeIsVisible() abort
function undotree#UndotreePersistUndo(goSetUndofile) abort
function undotree#UndotreeShow() abort
function undotree#UndotreeToggle() abort
function undotree#UndotreeUpdate() abort
function vifm#globals#Init()
function vifm#synnames(...) abort
function vimtex#init() abort
function vital#_fern#Async#CancellationToken#import() abort
function vital#_fern#Async#Later#import() abort
function vital#_fern#Async#Promise#import() abort
function vital#_fern#Config#import() abort
function vital#_fern#function(funcname) abort
function vital#_fern#new() abort
function vital#fern#import(...) abort
function vital#fern#new() abort
function webdevicons#hardRefresh()
function webdevicons#pluginHome()
function webdevicons#refresh()
function webdevicons#softRefresh()
function webdevicons#version()
