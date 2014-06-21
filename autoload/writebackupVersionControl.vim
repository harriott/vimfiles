" writebackupVersionControl.vim: Version control functions (diff, restore,
" history navigation) for backups made with the writebackup plugin, which have a
" date file extension in the format '.YYYYMMDD[a-z]'.
"
" DEPENDENCIES:
"   - escapings.vim autoload script
"   - ingobuffer.vim autoload script
"   - ingodate.vim autoload script
"   - ingoplugin.vim autoload script
"   - External copy command "cp" (Unix), "copy" and "xcopy" (Windows)
"
" Copyright: (C) 2007-2012 Ingo Karkat
"   The VIM LICENSE applies to this script; see ':help copyright'.
"
" Maintainer:	Ingo Karkat <ingo@karkat.de>
"
" REVISION	DATE		REMARKS
"   3.20.035	10-Dec-2012	ENH: Allow to override
"				g:WriteBackup_DiffCreateAlwaysArguments and
"				g:WriteBackup_DiffCreateDefaultArguments with
"				buffer-local variables; e.g. to provide a
"				filetype-specific "--show-function-list" diff
"				argument.
"				ENH: When the current window is in diff mode,
"				"inherit" the participation in the diff to the
"				next backup file on :WriteBackupGo* commands, as
"				the user probably wants to continue comparing
"				them.
"				BUG: On Windows, when file backups exist in
"				different upper-/lowercase versions, the
"				ordering of :WriteBackupListVersions and
"				:WriteBackupGoPrev/Next are broken. Culprit is
"				the mostly superfluous sort() that was meant to
"				make things more robust. Use a custom sort
"				function that only considers the version
"				extension. Also, keep the case of the version
"				extension, but always list the versions in
"				lowercase.
"   3.10.034	20-Feb-2012	ENH: Add :WriteBackupDiffDaysChanges and
"				:WriteBackupViewDaysChanges.
"				Expose s:GetRelativeBackup() for use in Funcref.
"   3.00.020	14-Feb-2012	Change return value of
"				writebackupVersionControl#IsIdenticalWithPredecessor()
"				from predecessor version to full filespec.
"   			    	ENH: New "redate" option for
"				g:WriteBackup_AvoidIdenticalBackups that renames
"				an identical backup from an earlier date to be
"				the first backup of today. Adapted
"				implementation of
"				writebackupVersionControl#WriteBackupOfSavedOriginal()
"				to match new behavior of writebackup.vim 3.00;
"				this also uses its new functionality.
"   2.30.019	13-Feb-2012	All autoload functions behind the various
"				commands now also indicate their success via a
"				boolean / numeric return value, so that
"				integrations can delegate to these commands and
"				find out whether the function succeeded.
"				(Without doing convoluted stuff like redirecting
"				and parsing the function's output.)
"   2.30.018	10-Feb-2012	ENH: On Windows, :WriteBackupOfSavedOriginal now
"				updates the modification date (via a "copy"
"				trick), and on Unix,
"				:WriteBackupRestoreThisBackup /
"				:WriteBackupRestoreFromPred now keep the
"				backup's modification date. Correct the
"				(opposite default behaviors) and select the
"				desired behavior via a flag passed to s:Copy().
"				Expose many internal functions for the
"				writebackupAutomator plugin.
"   2.25.017	07-Oct-2011	Use ingodate#HumanReltime() for a more human
"				output of elapsed time since last backup.
"   2.24.016	12-Feb-2010	BUG: :WriteBackupViewDiffWithPred can cause
"				E121: Undefined variable: l:predecessor. Similar
"				issue with a:filespec showing scratch buffer
"				name in place of the original file name. Now
"				using l:oldFile and l:newFile instead.
"				ENH: Define a local 'du' mapping to quickly
"				update the diff (of the same version and with
"				the same options as this time), unless [count]
"				is given, which sets a different version).
"   2.24.015	09-Feb-2010	:WriteBackupViewDiffWithPred not just checks
"				for empty scratch buffer, but also considers the
"				diff command exit code.
"				BUG: WriteBackupViewDiffWithPred didn't always
"				go back to the original window when no
"				differences, but fell back to the next one.
"   2.23.014	26-Oct-2009	ENH: :WriteBackupRestoreFromPred now takes an
"				optional [count] to restore an earlier
"				predecessor.
"   2.21.013	16-Jul-2009	Added
"				g:WriteBackup_ScratchBufferCommandModifiers
"				configuration.
"				ENH: Now issuing a warning that there are no
"				differences and closing the useless diff scratch
"				buffer if it is empty.
"   2.21.012	14-Jul-2009	BF: Forgot {special} in shellescape() call for
"				writebackupVersionControl#ViewDiffWithPred();
"				the scratch buffer uses the ! command.
"   2.21.011	10-Jul-2009	The creation / update of the scratch buffer
"				positions the cursor on the first line. In case
"				of a simple refresh within the diff scratch
"				buffer, the former cursor position should be
"				kept.
"				Now checking for empty
"				g:WriteBackup_DiffShellCommand and printing
"				error.
"				Using escapings#shellescape() for system() calls
"				instead of simply enclosing in double quotes.
"   2.20.010	09-Jul-2009	The diff files are now saved in
"				b:WriteBackup_DiffSettings so that the diff can
"				be updated from within the diff scratch buffer.
"   2.20.009	08-Jul-2009	ENH: Added
"				writebackupVersionControl#ViewDiffWithPred() for
"				the implemation of the
"				:WriteBackupViewDiffWithPred command
"				to show the diff output in a scratch buffer.
"   2.11.008	24-Jun-2009	ENH: :WriteBackupDiffWithPred now takes an
"				optional [count] to diff with an earlier
"				predecessor.
"   2.10.007	27-May-2009	Replaced simple filespec escaping with
"				built-in fnameescape() function (or emulation
"				for Vim 7.0 / 7.1) via escapings.vim wrapper.
"				Now reducing the filespec to shortest possible
"				(:~:.) before opening a file. This avoids ugly
"				long buffer names when :set noautochdir.
"				For the diffsplit, do not expand the
"				predecessor's filespec to an absolute
"				path any more; this is not necessary.
"   2.01.006	11-May-2009	Backup versions are now opened read-only
"				(through :WriteBackupGoPrev/Next and
"				:WriteBackupDiffWithPred commands) to prevent
"				the user from accidentally editing the backup
"				instead of the original.
"   2.00.005	22-Feb-2009	Added a:isForced argument to all functions that
"				implement commands which now support forcing via !.
"				writebackupVersionControl#WriteBackupOfSavedOriginal()
"				now also observes
"				g:WriteBackup_AvoidIdenticalBackups and avoid
"				backup of the saved version if it is identical
"				to the last backup version.
"   2.00.004	21-Feb-2009	Factored error reporting out of
"				s:GetRelativeBackup() to allow the silent usage
"				by the writebackup plugin.
"				Replaced s:DualDigit() with printf('%02d')
"				formatting.
"				Factored out s:VimExceptionMsg() and added catch
"				block for Vim errors in missing places.
"				Factored s:AreIdentical() out of
"				writebackupVersionControl#IsBackedUp() and added
"				public function
"				writebackupVersionControl#IsIdenticalWithPredecessor()
"				for the writebackup plugin so that it can avoid
"				backup if an identical backup already exists.
"				Implemented
"				writebackupVersionControl#DeleteBackup() to
"				enable the writebackup plugin to remove an
"				identical backup after the fact.
"				Implemented
"				writebackupVersionControl#DeleteBackupLastBackup()
"				for the :WriteBackupDeleteLastBackup command, as
"				the actual delete functionality is now already
"				there.
"				Refactored variables names and documentation.
"   2.00.003	19-Feb-2009	ENH: Now using compare shell command configured
"				in g:WriteBackup_CompareShellCommand.
"   2.00.002	18-Feb-2009	BF: :WriteBackupListVersions now handles (and
"				reports) backup files with a future date. (This
"				can happen when writing on a Samba share that
"				has a different clock setting.)
"				Exposed
"				writebackupVersionControl#IsOriginalFile()
"				function for writebackup plugin so that it can
"				disallow backup of backup file.
"				BF: Didn't correctly catch writebackup.vim
"				exceptions. This could happen when running out
"				of backup names in :WriteBackupOfSavedOriginal.
"				Added '--' argument to Unix 'cp' command so that
"				files starting with '-' are copied correctly.
"   2.00.001	17-Feb-2009	Moved functions from plugin to separate autoload
"				script.
"				writebackup.vim has replaced its global
"				WriteBackup_...() functions with autoload
"				functions writebackup#...(). This is an
"				incompatible change that also requires the
"				corresponding changes in here.
"				file creation
let s:save_cpo = &cpo
set cpo&vim

let s:versionRegexp = '\.[12]\d\d\d\d\d\d\d[a-z]$'
let s:versionFileGlob = '.[12][0-9][0-9][0-9][0-9][0-9][0-9][0-9][a-z]'
let s:versionLength = 10 " 1 dot + 4 year + 2 month + 2 day + 1 letter

"- utility functions ----------------------------------------------------------
function! s:ErrorMsg( text )
    echohl ErrorMsg
    let v:errmsg = a:text
    echomsg v:errmsg
    echohl None
endfunction
function! s:WarningMsg( text )
    echohl WarningMsg
    let v:warningmsg = a:text
    echomsg v:warningmsg
    echohl None
endfunction
function! s:ExceptionMsg( exception )
    call s:ErrorMsg(substitute(v:exception, '^WriteBackup\%(VersionControl\)\?:\s*', '', ''))
endfunction
function! s:VimExceptionMsg( exception )
    " v:exception contains what is normally in v:errmsg, but with extra
    " exception source info prepended, which we cut away.
    call s:ErrorMsg(substitute(v:exception, '^Vim\%((\a\+)\)\=:', '', ''))
endfunction

function! s:IsFileReadonly( filespec )
    return filereadable(a:filespec) && ! filewritable(a:filespec)
endfunction

function! s:FnameShortenAndEscape( filespec )
"*******************************************************************************
"* PURPOSE:
"   Escapes the passed a:filespec for use in an ex command. In addition, the
"   filespec is reduced to its shortest possible representation to avoid ugly
"   long buffer names when :set noautochdir.
"
"* ASSUMPTIONS / PRECONDITIONS:
"	? List of any external variable, control, or other element whose state affects this procedure.
"* EFFECTS / POSTCONDITIONS:
"	? List of the procedure's effect on each external variable, control, or other element.
"* INPUTS:
"   a:filespec	File.
"* RETURN VALUES:
"   Shortened filespec suitable for immediate (no more commands that may change
"   the CWD!) consumption in an ex command.
"*******************************************************************************
    return escapings#fnameescape(fnamemodify(a:filespec, ':~:.'))
endfunction

"- conversion functions -------------------------------------------------------
function! writebackupVersionControl#IsOriginalFile( filespec )
    return a:filespec !~? s:versionRegexp
endfunction

function! writebackupVersionControl#GetOriginalFilespec( filespec, isForDisplayingOnly )
"*******************************************************************************
"* PURPOSE:
"   The passed a:filespec may be any ordinary file, an original file that has
"   backups, or a backup file. In the last case, it is tried to determine the
"   original filespec. This is only guaranteed to work when backups are
"   created in the same directory as the original file.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   None.
"* INPUTS:
"   a:filespec	Backup or original file.
"   a:isForDisplayingOnly   If true, returns an approximation of the original
"	file for use in a user message in case it cannot be resolved. If false,
"	return an empty string in that case.
"* RETURN VALUES:
"   Original filespec, or empty string, or approximation.
"*******************************************************************************
    if writebackupVersionControl#IsOriginalFile( a:filespec )
	return a:filespec
    else
	" Since a:filespec is no original file, it thusly ends with the backup
	" date file extension, and we can simply cut it off.
	let l:adjustedBackupFilespec = strpart( a:filespec, 0, len( a:filespec ) - s:versionLength )

	let l:backupDirspec = ''
	try
	    let l:backupDirspec = writebackup#GetBackupDir(l:adjustedBackupFilespec, 1)
	catch
	    " Ignore exceptions, they just signal that the backup dir could not
	    " be determined or that a backup should not be written. We're just
	    " interested in the backup dir here, but we can live with the fact
	    " that the backup dir is unknown.
	endtry
	if  l:backupDirspec == '.' && filereadable(l:adjustedBackupFilespec)
	    " If backups are created in the same directory, we can get the original
	    " file by stripping off the date file extension.
	    " A buffer-local backup directory configuration which only exists for
	    " the original file buffer, but not the backup file buffer may fool us
	    " here into believing that backups are created in the same directory, so
	    " we explicitly check that the original file exists there as well.
	    return l:adjustedBackupFilespec
	else
	    " If backups are created in a different directory, the complete filespec
	    " of the original file can not be derived from the adjusted backup
	    " filespec, as writebackup#AdjustFilespecForBackupDir() (potentially) is
	    " a one-way transformation from multiple directories to one backup
	    " directory.
	    "
	    " TODO: Look for original file candidates in all Vim buffers via bufname().
	    "
	    " When we fail, return an empty string to indicate that the original
	    " filespec could not be resolved. However, if the filespec is only
	    " needed for a user message, we can generate an approximation, which is
	    " better than nothing.
	    if a:isForDisplayingOnly
		return '???/' . fnamemodify( l:adjustedBackupFilespec, ':t' )
	    else
		return ''
	    endif
	endif
    endif
endfunction

function! writebackupVersionControl#GetVersion( filespec )
    if ! writebackupVersionControl#IsOriginalFile( a:filespec )
	return strpart( a:filespec, len( a:filespec ) - s:versionLength + 1 )
    else
	return ''
    endif
endfunction

function! writebackupVersionControl#GetAdjustedBackupFilespec( filespec )
"*******************************************************************************
"* PURPOSE:
"   The adjustedBackupFilespec is an imaginary file in the backup directory. By
"   appending a backup version, a valid backup filespec is created.
"   In case the backup is done in the same directory as the original file, the
"   adjustedBackupFilespec is equal to the original file.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   None.
"* INPUTS:
"   a:filespec	Backup or original file.
"* RETURN VALUES:
"   adjustedBackupFilespec; the backup directory may not yet exist when no
"   backups have yet been made.
"   Throws 'WriteBackup:' or any exception resulting from query for backup dir.
"*******************************************************************************
    if writebackupVersionControl#IsOriginalFile( a:filespec )
	return writebackup#AdjustFilespecForBackupDir( a:filespec, 1 )
    else
	return strpart( a:filespec, 0, len( a:filespec ) - s:versionLength )
    endif
endfunction

"------------------------------------------------------------------------------
function! s:VerifyIsOriginalFileAndHasPredecessor( originalFilespec, notOriginalMessage, count )
"*******************************************************************************
"* PURPOSE:
"   Checks that a:filespec is not a backup file and that at least one backup for
"   this file exists. If not, an error message is echoed; in the first case,
"   the passed a:notOriginalMessage is used.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Prints error message.
"* INPUTS:
"   a:originalFilespec	Backup or original file (but backup file results in
"			error message).
"   a:notOriginalMessage
"   a:count	Number of predecessors to go back.
"* RETURN VALUES:
"   Empty string if verification failed; filespec of a:count'th predecessor
"   otherwise.
"*******************************************************************************
    if ! writebackupVersionControl#IsOriginalFile( a:originalFilespec )
	call s:ErrorMsg(a:notOriginalMessage)
	return ''
    endif

    let [l:predecessor, l:errorMessage] = writebackupVersionControl#GetRelativeBackup( a:originalFilespec, -1 * a:count )
    if ! empty(l:errorMessage)
	call s:ErrorMsg(l:errorMessage)
    endif
    return l:predecessor
endfunction

"------------------------------------------------------------------------------
function! s:SortByBackupVersion( file1, file2 )
    let l:version1 = writebackupVersionControl#GetVersion(a:file1)
    let l:version2 = writebackupVersionControl#GetVersion(a:file2)

    return (l:version1 ==? l:version2 ? 0 : l:version1 >? l:version2 ? 1 : -1)
endfunction
function! writebackupVersionControl#GetAllBackupsForFile( filespec )
"*******************************************************************************
"* PURPOSE:
"   Retrieves a list of all filespecs of backup files for a:filespec.
"   The list is sorted from oldest to newest backup. The original filespec is
"   not part of the list.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   None.
"* INPUTS:
"   a:filespec	Backup or original file.
"* RETURN VALUES:
"   Sorted list of backup filespecs.
"*******************************************************************************
    " glob() filters out file patterns defined in 'wildignore'. If someone wants
    " to ignore backup files for command mode file name completion and puts the
    " backup file pattern into 'wildignore', this function will break.
    " Thus, the 'wildignore' option is temporarily reset here.
    if has('wildignore')
	let l:save_wildignore = &wildignore
	set wildignore=
    endif
    try
	" For globbing, we need the filespec of an imaginary file in the backup
	" directory, to which we can append our file version glob. (The backup
	" files may reside in a directory different from the original file;
	" that's why we cannot simply use the original filespec for globbing.)
	let l:adjustedBackupFilespec = writebackupVersionControl#GetAdjustedBackupFilespec(a:filespec)

	" glob() will do the right thing and return an empty list if
	" l:adjustedBackupFilespec doesn't yet exist, because no backup has yet been
	" made.
	let l:backupFiles = split(glob(l:adjustedBackupFilespec . s:versionFileGlob), "\n")

	" Although the glob should already be sorted alphabetically in ascending
	" order, we'd better be sure and sort the list on our own, too.
	let l:backupFiles = sort(l:backupFiles, 's:SortByBackupVersion')
"****D echo '**** backupfiles: ' . l:backupFiles
	return l:backupFiles
    finally
	if has('wildignore')
	    let &wildignore = l:save_wildignore
	endif
    endtry

endfunction

function! s:GetIndexOfVersion( backupFiles, currentVersion )
"*******************************************************************************
"* PURPOSE:
"   Determine the index of the backup version a:currentVersion in the passed
"   list of backup files.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   None.
"* INPUTS:
"   a:backupFiles: List of backup filespecs.
"   a:currentVersion: Version number of the backup filespec to be found.
"* RETURN VALUES:
"   Index into a:backupFiles or -1 if a:currentVersion isn't contained in
"   a:backupFiles.
"*******************************************************************************
    let l:fileCnt = 0
    while l:fileCnt < len( a:backupFiles )
	if writebackupVersionControl#GetVersion( a:backupFiles[ l:fileCnt ] ) == a:currentVersion
	    return l:fileCnt
	endif
	let l:fileCnt += 1
    endwhile
    return -1
endfunction
function! writebackupVersionControl#GetRelativeBackup( filespec, relativeIndex )
"*******************************************************************************
"* PURPOSE:
"   Gets the filespec of a predecessor or later version of the passed
"   filespec, regardless of whether the passed filespec is the current file
"   (without a version extension), or a versioned backup.
"   If the index is out of bounds, the first / last available backup version
"   is returned. If a:filespec is the first / last backup version / original
"   file, an error is printed and an empty string is returned.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   None.
"* INPUTS:
"   a:filespec	Backup or original file.
"   a:relativeIndex Negative numbers select predecessors, positive numbers
"		    later versions.
"* RETURN VALUES:
"   List of
"   - Filespec of the backup version, or empty string if no such version exists.
"   - Error message if no such version exists.
"   Either the first or the second list element is an empty string.
"*******************************************************************************
    let l:backupFiles = writebackupVersionControl#GetAllBackupsForFile(a:filespec)
    let l:lastBackupIndex = len(l:backupFiles) - 1
    let l:currentIndex = (writebackupVersionControl#IsOriginalFile(a:filespec) ? l:lastBackupIndex + 1 : s:GetIndexOfVersion( l:backupFiles, writebackupVersionControl#GetVersion(a:filespec) ))

    if l:currentIndex < 0
	return ['', "Couldn't locate this backup: " . a:filespec]
    elseif l:lastBackupIndex < 0
	return ['', 'No backups exist for this file.']
    elseif a:relativeIndex > 0 && l:currentIndex == l:lastBackupIndex
	return ['', "This is the latest backup: " . a:filespec]
    elseif a:relativeIndex > 0 && l:currentIndex > l:lastBackupIndex
	return ['', 'Cannot go beyond original file.']
    elseif a:relativeIndex < 0 && l:currentIndex == 0
	return ['', 'This is the earliest backup: ' . a:filespec]
    endif

    let l:newIndex = min([max([l:currentIndex + a:relativeIndex, 0]), l:lastBackupIndex])
    return [get( l:backupFiles, l:newIndex, '' ), '']
endfunction
function! writebackupVersionControl#GetDaysBackup( filespec, daysIndex )
"*******************************************************************************
"* PURPOSE:
"   Gets the filespec of the day's first backup of the passed filespec,
"   regardless of whether the passed filespec is the current file (without a
"   version extension), or a versioned backup.
"   If there is no backup at the particular day, the first later backup is
"   returned.
"   If a:filespec is the first / last backup version / original
"   file, an error is printed and an empty string is returned.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   None.
"* INPUTS:
"   a:filespec	Backup or original file.
"   a:daysIndex	Number of days (including today) that shall be covered. Must be
"		negative so that it points to the past.
"* RETURN VALUES:
"   List of
"   - Filespec of the backup version, or empty string if no such version exists.
"   - Error message if no such version exists.
"   Either the first or the second list element is an empty string.
"*******************************************************************************
    if a:daysIndex >= 0 | throw 'ASSERT: daysIndex must be negative' | endif
    let l:daysPast = -1 * a:daysIndex - 1

    if writebackupVersionControl#IsOriginalFile(a:filespec)
	let l:epochTime = localtime()
	" Do the date arithmethic by subtracting the seconds for a day, and
	" reconverting back.
	let l:predecessorEpochTime = l:epochTime - 86400 * l:daysPast
	let l:predecessorDate = strftime('%Y%m%d', l:predecessorEpochTime)
    else
	" We cannot do the date arithmetic via strftime(), because it cannot
	" convert our date string into the Epoch time. So we can just do some
	" clumsy calculations on our own.
	let l:currentDate = writebackupVersionControl#GetVersion(a:filespec)[0:-2]
	let l:currentDay = str2nr(l:currentDate[-2:])
	let l:predecessorDay = l:currentDay - l:daysPast
	if l:predecessorDay < 1
	    return ['', 'Sorry, cannot go beyond first day of month for backups.']
	endif
	let l:predecessorDate = l:currentDate[0:5] . printf('%02d', l:predecessorDay)
    endif
"****D echomsg '****' l:predecessorDate

    let l:backupFiles = writebackupVersionControl#GetAllBackupsForFile(a:filespec)
    for l:backupFile in l:backupFiles
	if writebackupVersionControl#GetVersion(l:backupFile)[0:-2] >=# l:predecessorDate
	    break
	endif
	let l:backupFile = ''
    endfor

    if len(l:backupFiles) == 0
	return ['', 'No backups exist for this file.']
    elseif a:filespec ==# l:backupFiles[0]
	return ['', 'This is the earliest backup: ' . a:filespec]
    elseif l:backupFile ==# a:filespec
	return ['', "This is the day's earliest backup: " . l:backupFile]
    elseif empty(l:backupFile)
	if l:daysPast > 0
	    return ['', printf("Couldn't locate a backup from up to %d day%s ago: %s", l:daysPast, (l:daysPast == 1 ? '' : 's'), a:filespec)]
	else
	    return ['', "Couldn't locate a backup from today: " . a:filespec]
	endif
    endif

    return [l:backupFile, '']
endfunction

function! s:EditFile( filespec, isBang, isReadonly )
"*******************************************************************************
"* PURPOSE:
"   Edit a:filespec in the current window (via :edit).
"   When the current window is in diff mode, "inherit" the participation in the
"   diff to the next backup file, as the user probably wants to continue
"   comparing them.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Prints Vim error message if the file cannot be edited.
"* INPUTS:
"   a:filespec	Backup or original file.
"   a:isBang	Flag whether any changes to the current buffer should be
"		discarded.
"   a:isReadonly    Flag whether the file should be opened read-only.
"* RETURN VALUES:
"   0 if an error occurred.
"   1 if successful.
"*******************************************************************************
    try
	let l:participatedInDiff = &l:diff
	execute (a:isReadonly ? 'view' : 'edit') . (a:isBang ? '!' : '') s:FnameShortenAndEscape(a:filespec)
	if l:participatedInDiff
	    diffthis
	endif

	return 1
    catch /^Vim\%((\a\+)\)\=:E/
	call s:VimExceptionMsg(v:exception)
	return 0
    endtry
endfunction
function! writebackupVersionControl#WriteBackupGoOriginal( filespec, isBang )
"*******************************************************************************
"* PURPOSE:
"   Edit the original file of the passed backup file a:filespec.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Edits the original file in the current window, or:
"   Prints (error) message.
"* INPUTS:
"   a:filespec	Backup or original file.
"   a:isBang	Flag whether any changes to the current buffer should be
"		discarded.
"* RETURN VALUES:
"   0 if an error occurred.
"   1 if successful.
"   2 if this is the original file.
"*******************************************************************************
    try
	if writebackupVersionControl#IsOriginalFile( a:filespec )
	    echomsg 'This is the original file.'
	    return 2
	endif

	let l:originalFilespec = writebackupVersionControl#GetOriginalFilespec( a:filespec, 0 )
	if empty( l:originalFilespec )
	    call s:ErrorMsg('Unable to determine the location of the original file.')
	    return 0
	else
	    return s:EditFile(l:originalFilespec, a:isBang, 0)
	endif
    catch /^WriteBackup\%(VersionControl\)\?:/
	call s:ExceptionMsg(v:exception)
	return 0
    endtry
endfunction
function! writebackupVersionControl#WriteBackupGoBackup( filespec, isBang, relativeIndex )
"*******************************************************************************
"* PURPOSE:
"   Edit a backup file version relative to the current file.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Edits the backup file in the current window, or:
"   Prints error message.
"* INPUTS:
"   a:filespec	Backup or original file.
"   a:isBang	Flag whether any changes to the current buffer should be
"		discarded.
"   a:relativeIndex
"* RETURN VALUES:
"   0 if an error occurred.
"   1 if successful.
"*******************************************************************************
    try
	let [l:backupFilespec, l:errorMessage] = writebackupVersionControl#GetRelativeBackup(a:filespec, a:relativeIndex)
	if empty(l:errorMessage)
	    return s:EditFile(l:backupFilespec, a:isBang, 1)
	else
	    call s:ErrorMsg(l:errorMessage)
	    return 0
	endif
    catch /^WriteBackup\%(VersionControl\)\?:/
	call s:ExceptionMsg(v:exception)
	return 0
    endtry
endfunction

function! s:DiffFile( filespec )
"******************************************************************************
"* PURPOSE:
"   Diff the current buffer with passed a:filespec in a split window.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Open a:filespec in split window.
"* INPUTS:
"   a:filespec	Existing file.
"* RETURN VALUES:
"   None.
"******************************************************************************
    " Close all folds before the diffsplit; this avoids that a previous (open)
    " fold status at the cursor position is remembered and obscures the actual
    " differences.
    if has('folding') | setlocal foldlevel=0 | endif

    " The :diffsplit command doesn't allow to open the file read-only; using
    " ':setlocal readonly' afterwards leaves an unnecessary swapfile. Thus, we
    " use :sview to open the file and use :diffthis on both windows.
    diffthis

    let l:splittype = (g:WriteBackup_DiffVertSplit ? 'vertical ' : '') . 'sview'
    execute l:splittype s:FnameShortenAndEscape(a:filespec)
    diffthis
    " Note: We're assuming here that the ':sview a:filespec' cannot fail. If we
    " were not so sure, we would need to check and undo the :diffthis on the
    " current window in case of failure here.

    " Return to original window.
    wincmd p
endfunction
function! writebackupVersionControl#DiffWithPred( filespec, count )
"*******************************************************************************
"* PURPOSE:
"   Creates a diff with the a:count'th predecessor of the passed a:filespec.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Opens a diffsplit with the predecessor, or:
"   Prints error message.
"   Prints Vim error message if the split cannot be created.
"* INPUTS:
"   a:filespec	Backup or original file.
"   a:count	Number of predecessors to go back.
"* RETURN VALUES:
"   0 if an error occurred.
"   1 if successful.
"*******************************************************************************
    try
	let [l:predecessor, l:errorMessage] = writebackupVersionControl#GetRelativeBackup( a:filespec, -1 * a:count )
	if ! empty(l:errorMessage)
	    call s:ErrorMsg(l:errorMessage)
	else
	    " Note: l:predecessor does exist, since we've just determined the
	    " predecessor via a file glob.
	    call s:DiffFile(l:predecessor)
	    return 1
	endif
    catch /^Vim\%((\a\+)\)\=:E/
	call s:VimExceptionMsg(v:exception)
    catch /^WriteBackup\%(VersionControl\)\?:/
	call s:ExceptionMsg(v:exception)
    endtry
    return 0
endfunction
function! writebackupVersionControl#DiffDaysChanges( filespec, count )
"*******************************************************************************
"* PURPOSE:
"   Creates a diff with the first backup made a:count - 1 days ago of the passed
"   a:filespec.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Opens a diffsplit with the day's first backup, or:
"   Prints error message.
"   Prints Vim error message if the split cannot be created.
"* INPUTS:
"   a:filespec	Backup or original file.
"   a:count	Number of days to go back.
"* RETURN VALUES:
"   0 if an error occurred.
"   1 if successful.
"*******************************************************************************
    try
	let [l:predecessor, l:errorMessage] = writebackupVersionControl#GetDaysBackup( a:filespec, -1 * a:count )
	if ! empty(l:errorMessage)
	    call s:ErrorMsg(l:errorMessage)
	else
	    " Note: l:predecessor does exist, since we've just determined the
	    " predecessor via a file glob.
	    call s:DiffFile(l:predecessor)
	    return 1
	endif
    catch /^Vim\%((\a\+)\)\=:E/
	call s:VimExceptionMsg(v:exception)
    catch /^WriteBackup\%(VersionControl\)\?:/
	call s:ExceptionMsg(v:exception)
    endtry
    return 0
endfunction
function! s:GetDiffOptions( diffOptions )
    let l:vimDiffOptions = split(&diffopt, ',')
    let l:diffOptions = [
    \	ingoplugin#GetBufferLocalSetting('WriteBackup_DiffCreateAlwaysArguments'),
    \	(empty(a:diffOptions) ? ingoplugin#GetBufferLocalSetting('WriteBackup_DiffCreateDefaultArguments') : a:diffOptions),
    \	(index(l:vimDiffOptions, 'icase') == -1 ? '' : '-i'),
    \	(index(l:vimDiffOptions, 'iwhite') == -1 ? '' : '-b')
    \]
    return join( filter(l:diffOptions, '! empty(v:val)'), ' ')
endfunction
function! s:NoDifferencesMessage( filespec, predecessor )
    let l:savedMsg = (&l:modified ? 'saved ' : '')
    return printf("No differences reported between %s and backup '%s' of '%s'.",
    \	(writebackupVersionControl#IsOriginalFile(a:filespec) ?
    \	    'the current ' . l:savedMsg . 'version' :
    \	    l:savedMsg . "backup '" . writebackupVersionControl#GetVersion(a:filespec) . "'"
    \	),
    \	writebackupVersionControl#GetVersion(a:predecessor),
    \	writebackupVersionControl#GetOriginalFilespec(a:filespec, 1)
    \)
endfunction
function! writebackupVersionControl#ViewDiff( filespec, count, diffOptions, GetVersionFuncref )
"*******************************************************************************
"* PURPOSE:
"   Shows the output of the diff with another version of the passed
"   a:filespec (as determined by s:GetVersionFuncref) or of the files associated
"   with the current diff scratch buffer in a scratch buffer.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Opens / updates the scratch buffer with the diff output, or:
"   Prints error message.
"   Prints Vim error message if the split cannot be created.
"* INPUTS:
"   a:filespec	Backup or original file.
"   a:count	Number to go back, 0 if no count was given.
"   a:diffOptions   Optional command-line arguments passed to the diff command.
"   a:GetVersionFuncref	Funcref to the function that determines the predecessor
"			filespec; is passed a:filespec and the count.
"* RETURN VALUES:
"   0 if an error occurred.
"   1 if successful.
"   2 if no differences were detected.
"*******************************************************************************
    try
	if empty(g:WriteBackup_DiffShellCommand)
	    throw 'WriteBackupVersionControl: No diff shell command configured. Unable to show differences to predecessor.'
	endif

	let l:save_cursor = []
	if exists('b:WriteBackup_DiffSettings')
	    " We're in a diff scratch buffer; reuse the files that were used
	    " when creating this diff.
	    let l:scratchFilename = b:WriteBackup_DiffSettings.scratchFilename
	    let l:rootDirspec = b:WriteBackup_DiffSettings.rootDirspec
	    let l:newFile = b:WriteBackup_DiffSettings.newFile
	    if a:count
		" Another predecessor version is selected via the given [count].
		let [l:predecessor, l:errorMessage] = call(a:GetVersionFuncref, [l:newFile, -1 * a:count])
		if ! empty(l:errorMessage)
		    call s:ErrorMsg(l:errorMessage)
		    return 0
		endif
		let l:oldFile = fnamemodify(l:predecessor, ':.')
	    else
		" No [count] was given; keep the previously used predecessor.
		let l:oldFile = b:WriteBackup_DiffSettings.oldFile

		" Keep the current cursor position on a simple refresh of the
		" differences.
		let l:save_cursor = getpos('.')
	    endif
	else
	    let [l:predecessor, l:errorMessage] = call(a:GetVersionFuncref, [a:filespec, -1 * (a:count ? a:count : 1)])
	    if ! empty(l:errorMessage)
		call s:ErrorMsg(l:errorMessage)
		return 0
	    endif

	    " Base the diff working directory on the current window's CWD.
	    " This way, one can set the diff root through:
	    " :lcd {diff-root} | WriteBackupViewDiffWithPred | lcd -
	    let l:rootDirspec = getcwd()

	    " The scratch file is created in the diff root, using the original file name
	    " with an appended '.diff' extension. To that, also append
	    " ' [Scratch]', to signal that this buffer doesn't persist.
	    " Note: Because we only need the filename, not the filespec, we use
	    " writebackupVersionControl#GetAdjustedBackupFilespec(), not
	    " writebackupVersionControl#GetOriginalFilespec(); the latter one
	    " may fail when backups aren't created in the same directory as the
	    " original file.
	    let l:scratchFilename = fnamemodify(writebackupVersionControl#GetAdjustedBackupFilespec(a:filespec), ':t') . '.diff [Scratch]'

	    let l:oldFile = fnamemodify(l:predecessor, ':.')
	    let l:newFile = fnamemodify(a:filespec, ':.')
	endif

	" Note: For the :! command, the '!' character must be escaped (cp.
	" shellescape() with {special}); we assume that in the diff options,
	" the normal escaping for ex commands has been done by the user.
	" Note: Specify filespecs relative to the diff root, i.e. the
	" current window's CWD.
	let l:diffCmd = printf('%s %s %s %s', g:WriteBackup_DiffShellCommand,
	\	escape(s:GetDiffOptions(a:diffOptions), '!'),
	\	escapings#shellescape(l:oldFile, 1),
	\	escapings#shellescape(l:newFile, 1)
	\)

	if ! ingobuffer#MakeScratchBuffer(
	\	l:rootDirspec,
	\	l:scratchFilename,
	\	1,
	\	'silent 1read !' . l:diffCmd,
	\	g:WriteBackup_ScratchBufferCommandModifiers . ' new'
	\)
	    return 0
	endif

	if v:shell_error < 0 || v:shell_error > 1
	    let l:save_cursor = [] " Do not restore cursor position.

	    " The diff command exited with an error. The error message is
	    " probably shown in the scratch buffer, so don't close it. Alert
	    " the user with an extra error message.
	    redraw
	    " Always show the actual diff command; this may be useful for
	    " troubleshooting.
	    echo l:diffCmd
	    call s:ErrorMsg('Diff command failed; shell returned ' . v:shell_error)

	    " By continuing with the execution, the user is able to re-try
	    " the diff from the diff scratch buffer via the
	    " :WriteBackupViewDiffWithPred command or "du" mapping, as the diff
	    " settings will be saved.
	elseif line('$') == 1 && empty(getline(1))
	    " The diff scratch buffer is empty: There are no differences, so
	    " discard the useless window, go back to the original window and
	    " show a warning instead.
	    bdelete
	    wincmd p

	    redraw
	    " Only show the actual diff command if it doesn't cause the
	    " Hit-Enter prompt.
	    if &cmdheight > 1 | echo l:diffCmd | endif
	    call s:WarningMsg(s:NoDifferencesMessage(l:newFile, l:oldFile))
	    return 2
	elseif v:shell_error == 0
	    " The diff buffer is not empty, but the diff command reported no
	    " differences. (Probably, a unusual diff format like
	    " --side-by-side has been used.) Keep the buffer, and print a
	    " simple message.
	    setlocal filetype=diff

	    redraw
	    " Only show the actual diff command if it doesn't cause the
	    " Hit-Enter prompt.
	    if &cmdheight > 1 | echo l:diffCmd | endif
	    echomsg s:NoDifferencesMessage(l:newFile, l:oldFile)
	else
	    setlocal filetype=diff

	    redraw
	    echo l:diffCmd
	endif


	" Save the files that participate in the diff so that the diff can be
	" updated from within the diff scratch buffer by re-executing
	" :WriteBackupViewDiffWithPred.
	" Also save the actual scratch buffer name to correctly handle renamings
	" of the diff scratch buffer via :saveas or :file.
	let b:WriteBackup_DiffSettings = {
	\   'rootDirspec': l:rootDirspec,
	\   'oldFile': l:oldFile,
	\   'newFile': l:newFile,
	\   'scratchFilename': fnamemodify(bufname(''), ':t'),
	\   'count': a:count,
	\   'diffOptions': a:diffOptions
	\}

	" Define a local 'du' mapping to quickly update the diff (of the same
	" version and with the same options as this time, unless [count] is
	" given, which sets a different version).
	" Note: Instead of escaping a:diffOptions for the mapping, we simply
	" store them in the b:WriteBackup_DiffSettings and reference that
	" variable in the mapping.
	execute
	\   "nnoremap <silent> <buffer> du " .
	\   ":<C-u>call writebackupVersionControl#ViewDiff("
	\   "'', (v:count ? v:count : b:WriteBackup_DiffSettings.count), " .
	\   "b:WriteBackup_DiffSettings.diffOptions, " .
	\   string(a:GetVersionFuncref) .
	\   ")" .
	\   "<CR>"

	" The creation / update of the scratch buffer positions the cursor on
	" the first line. In case of a simple refresh within the diff scratch
	" buffer, the former cursor position should be kept.
	if ! empty(l:save_cursor)
	    call setpos('.', l:save_cursor)
	endif

	return (v:shell_error == 0)
    catch /^Vim\%((\a\+)\)\=:E/
	call s:VimExceptionMsg(v:exception)
    catch /^WriteBackup\%(VersionControl\)\?:/
	call s:ExceptionMsg(v:exception)
    endtry
    return 0
endfunction
function! writebackupVersionControl#ViewDiffWithPred( filespec, count, diffOptions )
"*******************************************************************************
"* PURPOSE:
"   Shows the output of the diff with the a:count'th predecessor of the passed
"   a:filespec or of the files associated with the current diff scratch buffer
"   in a scratch buffer.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Opens / updates the scratch buffer with the diff output, or:
"   Prints error message.
"   Prints Vim error message if the split cannot be created.
"* INPUTS:
"   a:filespec	Backup or original file.
"   a:count	Number of predecessors to go back, 0 if no count was given.
"   a:diffOptions   Optional command-line arguments passed to the diff command.
"* RETURN VALUES:
"   0 if an error occurred.
"   1 if successful.
"   2 if no differences were detected.
"*******************************************************************************
    return writebackupVersionControl#ViewDiff(a:filespec, a:count, a:diffOptions,
    \	function('writebackupVersionControl#GetRelativeBackup'))
endfunction
function! writebackupVersionControl#ViewDiffDaysChanges( filespec, count, diffOptions )
"*******************************************************************************
"* PURPOSE:
"   Shows the output of the diff with the first backup made a:count - 1 days ago
"   of the passed a:filespec or of the files associated with the current diff
"   scratch buffer in a scratch buffer.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Opens / updates the scratch buffer with the diff output, or:
"   Prints error message.
"   Prints Vim error message if the split cannot be created.
"* INPUTS:
"   a:filespec	Backup or original file.
"   a:count	Number of days to go back, 0 if no count was given.
"   a:diffOptions   Optional command-line arguments passed to the diff command.
"* RETURN VALUES:
"   0 if an error occurred.
"   1 if successful.
"   2 if no differences were detected.
"*******************************************************************************
    return writebackupVersionControl#ViewDiff(a:filespec, a:count, a:diffOptions,
    \	function('writebackupVersionControl#GetDaysBackup'))
endfunction

function! s:EchoElapsedTimeSinceVersion( backupFilespec )
"*******************************************************************************
"* PURPOSE:
"   Informs the user about the elapsed time since the passed a:backupFilespec has
"   been modified.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Prints message.
"* INPUTS:
"   a:backupFilespec	Backup file.
"
"* RETURN VALUES:
"   None.
"*******************************************************************************
    let l:timeElapsed = localtime() - getftime( a:backupFilespec )
    let l:isBackupInFuture = (l:timeElapsed < 0)

    echomsg 'The last backup was done ' . ingodate#HumanReltime(l:timeElapsed) . (l:isBackupInFuture ? '?!' : '.')
endfunction
function! s:GetBackupDir( originalFilespec )
"*******************************************************************************
"* PURPOSE:
"   Resolves the directory that contains the backup files.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   None.
"* INPUTS:
"   a:originalFilespec
"* RETURN VALUES:
"   Dirspec representing the backup directory, '.' if equal to the original
"   file's directory.
"   Throws 'WriteBackup:' or any exception resulting from query for backup dir.
"*******************************************************************************
    let l:backupDirspec = writebackup#GetBackupDir(a:originalFilespec, 1)
    if l:backupDirspec ==# '.'
	return l:backupDirspec
    endif

    " Convert both original file's directory and backup directory to absolute
    " paths in order to compare for equality.
    let l:originalDirspec = fnamemodify(a:originalFilespec, ':p:h')
    " Note: Must use :p:h modifier on dirspec to remove trailing path separator
    " left by :p.
    let l:absoluteBackupDirspec = fnamemodify(l:backupDirspec, ':p:h')
    if l:absoluteBackupDirspec ==# l:originalDirspec
	return '.'
    endif

    " The backup dir is (or at least, looks) different from the original file's.
    " Return either full absolute path or relative to home directory, if
    " possible.
    return fnamemodify(l:absoluteBackupDirspec, ':~')
endfunction
function! writebackupVersionControl#ListVersions( filespec )
"*******************************************************************************
"* PURPOSE:
"   Shows the user a list of all available versions for a:filespec.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Prints list of versions, or:
"   Prints error message.
"* INPUTS:
"   a:filespec	Backup or original file.
"* RETURN VALUES:
"   0 if an error occurred.
"   1 if successful.
"*******************************************************************************
    try
	let l:originalFilespec = writebackupVersionControl#GetOriginalFilespec( a:filespec, 1 )
	let l:currentVersion = writebackupVersionControl#GetVersion( a:filespec )
	let l:backupDirspec = s:GetBackupDir(l:originalFilespec)
	let l:backupFiles = writebackupVersionControl#GetAllBackupsForFile(a:filespec)
	if empty( l:backupFiles )
	    echomsg "No backups exist for this file."
	    return 0
	endif

	let l:versionMessageHeader = printf("These backups exist for file '%s'%s:%s",
	\   l:originalFilespec,
	\   (l:backupDirspec =~# '^\.\?$' ? '' : ' in ' . l:backupDirspec),
	\   (empty(l:currentVersion) ? '' : ' (current version is marked >x<):')
	\)
	echomsg l:versionMessageHeader

	let l:versionMessage = ''
	let l:backupVersion = ''
	for l:backupFile in l:backupFiles
	    let l:previousVersion = l:backupVersion
	    let l:backupVersion = writebackupVersionControl#GetVersion(l:backupFile)
	    if strpart(l:backupVersion, 0, len(l:backupVersion) - 1) ==? strpart(l:previousVersion, 0, len(l:previousVersion) - 1)
		let l:versionMessageAddition = tolower(strpart(l:backupVersion, len(l:backupVersion) - 1))
		if l:backupVersion ==? l:currentVersion
		    let l:versionMessageAddition = '>' . l:versionMessageAddition . '<'
		endif
		let l:versionMessage .= l:versionMessageAddition
	    else
		echomsg l:versionMessage
		let l:versionMessage = l:backupVersion
		if l:backupVersion ==? l:currentVersion
		    let l:versionMessage = strpart(l:versionMessage, 0, len(l:versionMessage) - 1). '>' . strpart(l:versionMessage, len(l:versionMessage) - 1) . '<'
		endif
	    endif
	endfor
	echomsg l:versionMessage

	if empty(l:currentVersion)
	    let l:lastBackupFile = l:backupFiles[-1]
	    call s:EchoElapsedTimeSinceVersion(l:lastBackupFile)
	endif
	return 1
    catch /^WriteBackup\%(VersionControl\)\?:/
	call s:ExceptionMsg(v:exception)
	return 0
    endtry
endfunction

function! s:AreIdentical( filespec1, filespec2 )
"*******************************************************************************
"* PURPOSE:
"   Test whether two files have identical contents.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   May invoke external shell command.
"* INPUTS:
"   a:filespec1, a:filespec2	    Filespecs of the files.
"* RETURN VALUES:
"   Boolean whether the file contents are identical.
"   Throws 'WriteBackupVersionControl: Encountered problems...'
"*******************************************************************************
    " Optimization: First compare the file sizes, as this is much faster than
    " performing an actual comparison; we're not interested in the differences,
    " anyway, only if there *are* any!
    if getfsize( a:filespec1 ) != getfsize( a:filespec2 )
	return 0
    endif

    if empty(g:WriteBackup_CompareShellCommand)
	throw 'WriteBackupVersionControl: No compare shell command configured. Unable to compare with latest backup.'
    endif

    " Expand filespecs to absolute paths to avoid problems with CWD, especially
    " on Windows systems with UNC paths.
    let l:diffCmd = printf('%s %s %s',
    \	g:WriteBackup_CompareShellCommand,
    \	escapings#shellescape(fnamemodify(a:filespec1, ':p')),
    \	escapings#shellescape(fnamemodify(a:filespec2, ':p'))
    \)

    " Using the system() command even though we're not interested in the command
    " output (which is suppressed via command-line arguments to the compare
    " shell command, anyway). This is because on Windows GVIM, the system() call
    " does not (briefly) open a Windows shell window, but ':silent !{cmd}' does.
    " system() also does not unintentionally trigger the 'autowrite' feature.
    call system( l:diffCmd )
"****D echo '**** ' . g:WriteBackup_CompareShellCommand . ' return code=' . v:shell_error

    if v:shell_error == 0
	return 1
    elseif v:shell_error == 1
	return 0
    else
	throw printf("WriteBackupVersionControl: Encountered problems with '%s' invocation. Unable to compare with latest backup.", g:WriteBackup_CompareShellCommand)
    endif
endfunction
function! writebackupVersionControl#IsIdenticalWithPredecessor( filespec )
"*******************************************************************************
"* PURPOSE:
"   Queries whether the predecessor of the passed (backup or original) file is
"   has the same contents.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   None.
"* INPUTS:
"   a:filespec	Backup or original file.
"* RETURN VALUES:
"   Filespec of the identical predecessor or empty string to indicate that
"   either no backup exists, or the predecessor is different.
"   Throws 'WriteBackupVersionControl: Encountered problems...'
"*******************************************************************************
    let [l:predecessor, l:errorMessage] = writebackupVersionControl#GetRelativeBackup( a:filespec, -1 )
    if ! empty(l:errorMessage)
	" No predecessor exists.
	return ''
    endif

    if s:AreIdentical(l:predecessor, a:filespec)
	return l:predecessor
    else
	return ''
    endif
endfunction
function! writebackupVersionControl#IsBackedUp( originalFilespec )
"*******************************************************************************
"* PURPOSE:
"   Informs the user whether there exists a backup for the passed
"   a:originalFilespec file.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Prints backup status, or:
"   Prints error message.
"* INPUTS:
"   a:originalFilespec	Backup or original file (but backup file results in
"			error message).
"* RETURN VALUES:
"   -1 if an error occurred.
"   0 if the file is not backed up.
"   1 if the file is backed up.
"*******************************************************************************
    try
	let l:predecessor = s:VerifyIsOriginalFileAndHasPredecessor( a:originalFilespec, 'You can only check the backup status of the original file, not of backups!', 1 )
	if empty( l:predecessor )
	    return 0
	endif

	" As we compare the predecessor with the saved original file, not the actual
	" buffer contents (and this is what the user typically wants; checking
	" whether it is safe to write this buffer because an update exists), we add
	" a hint to the user message if the buffer is indeed modified.
	let l:savedMsg = (&l:modified ? 'saved ' : '')

	if s:AreIdentical(l:predecessor, a:originalFilespec)
	    echomsg printf("The current %sversion of '%s' is identical with the latest backup '%s'.", l:savedMsg, a:originalFilespec, writebackupVersionControl#GetVersion(l:predecessor))
	    return 1
	else
	    call s:WarningMsg(printf("The current %sversion of '%s' is different from the latest backup '%s'.", l:savedMsg, a:originalFilespec, writebackupVersionControl#GetVersion(l:predecessor)))
	    return 0
	endif
    catch /^WriteBackup\%(VersionControl\)\?:/
	call s:ExceptionMsg(v:exception)
	return -1
    endtry
endfunction

function! s:Copy( source, target, isForced, isKeepModificationDate )
"*******************************************************************************
"* PURPOSE:
"   Copies a:source to a:target. If a:target exists, it is overwritten (unless
"   it is readonly, then the copy command will fail, unless a:isForced).
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Creates / modifies a:target on the file system.
"* INPUTS:
"   a:source filespec
"   a:target filespec
"   a:isForced	Flag whether readonly targets should be overwritten.
"   a:isKeepModificationDate	Flag whether the a:target should keep the
"				modification date from a:source (or use the
"				current date).
"* RETURN VALUES:
"   None.
"   Throws 'WriteBackupVersionControl: Unsupported operating system type.'
"   Throws copy command output if shell copy command failed.
"*******************************************************************************
    " Expand filespecs to absolute paths to avoid problems with CWD, especially
    " on Windows systems with UNC paths.
    let l:sourceFilespec = fnamemodify( a:source, ':p' )
    let l:targetFilespec = fnamemodify( a:target, ':p' )

    if has('win32') || has('win64')
	" On Windows, "copy" cannot overwrite a readonly target; only "xcopy"
	" can (with the /R option).
	"
	" Both "copy" and "xcopy" keep the original modification date.
	" We can change that with a trick: Appending the null file to it in
	" binary mode updates the modification date, and similarly "copy /B /Y
	" file +,," emulates the "touch" command.
	if a:isKeepModificationDate
	    let l:copyShellCmd = (s:IsFileReadonly(a:target) ? 'xcopy /Q /R /Y %s %s' : 'copy /Y %s %s')
	else
	    let l:copyShellCmd = (s:IsFileReadonly(a:target) ?
	    \   'xcopy /Q /R /Y %s %s && copy /B /Y ' . escapings#shellescape(l:targetFilespec) . ' +,,' :
	    \   'copy /B /Y %s +NUL %s'
	    \)
	endif
    elseif has('unix')
	" "cp" needs to be instructed to keep the source's modification date via
	" an option.
	let l:preserveArg = (a:isKeepModificationDate ? ' --preserve=timestamps' : '')
	let l:copyShellCmd = (s:IsFileReadonly(a:target) ?
	\   'cp -f' . l:preserveArg . ' -- %s %s' :
	\   'cp'    . l:preserveArg . ' -- %s %s'
	\)
    else
	throw 'WriteBackupVersionControl: Unsupported operating system type.'
    endif
    let l:copyCmd = printf(l:copyShellCmd,
    \	escapings#shellescape(l:sourceFilespec),
    \	escapings#shellescape(l:targetFilespec)
    \)

    let l:cmdOutput = system(l:copyCmd)
    if v:shell_error != 0
	throw l:cmdOutput
    endif
endfunction
function! s:Restore( source, target, isForced, confirmationMessage )
"*******************************************************************************
"* PURPOSE:
"   Restores a:source over an existing a:target. The user is asked to confirm
"   this destructive operation, using the passed a:confirmationMessage (unless
"   a:isForced).
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Modifies a:target on the file system.
"* INPUTS:
"   a:source filespec
"   a:target filespec
"   a:isForced	Flag whether restore should proceed without confirmation and
"		overwrite readonly original file.
"   a:confirmationMessage
"* RETURN VALUES:
"   Boolean indicating whether the file has actually been restored.
"   Throws 'WriteBackupVersionControl: Cannot overwrite readonly
"	    '<original-file>' (add ! to override)' (unless a:isForced).
"   Throws 'WriteBackupVersionControl: Failed to restore file: <reason>'
"*******************************************************************************
    if ! a:isForced
	if s:IsFileReadonly(a:target)
	    throw printf("WriteBackupVersionControl: Cannot overwrite readonly '%s' (add ! to override)", a:target)
	else
	    let l:response = confirm( a:confirmationMessage, "&No\n&Yes", 1, 'Question' )
	    if l:response != 2
		echomsg 'Restore canceled.'
		return 0
	    endif
	endif
    endif

    " We could restore using only Vim functionality:
    "	edit! a:target
    " 	normal ggdG
    " 	0read a:source
    " 	write
    " That would have the following disadvantages:
    " - the target's modification date would be different from the one
    "   of the source, which would fool superficial synchronization tools.
    " - There's the (small) risk that Vim autocmds or settings like
    "   'fileencoding' or 'fileformat' are now different from when the backup
    "   was written, and may thus lead to conversion errors or different file
    "   contents.
    " Thus, we invoke an external command to create a perfect copy.
    " Unfortunately, this introduces platform-specific code.
    try
	call s:Copy(a:source, a:target, a:isForced, 1)
    catch
	throw 'WriteBackupVersionControl: Failed to restore file: ' . v:exception
    endtry
    return 1
endfunction
function! writebackupVersionControl#RestoreFromPred( originalFilespec, isForced, count )
"*******************************************************************************
"* PURPOSE:
"   Restores the passed original file with its a:count'th backup predecessor.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Reloads the restored file, or:
"   Prints error message.
"* INPUTS:
"   a:originalFilespec	Backup or original file (but backup file results in
"			error message).
"   a:isForced	Flag whether restore should proceed without confirmation and
"		overwrite readonly original file.
"   a:count	Number of predecessors to go back.
"* RETURN VALUES:
"   0 if an error occurred or the user declined.
"   1 if successful.
"*******************************************************************************
    try
	let l:predecessor = s:VerifyIsOriginalFileAndHasPredecessor( a:originalFilespec, 'You can only restore the original file, not a backup!', a:count )
	if empty(l:predecessor)
	    return 0
	endif

	if s:Restore( l:predecessor, a:originalFilespec, a:isForced, printf("Really override this file with backup '%s'?", writebackupVersionControl#GetVersion(l:predecessor) ))
	    edit!
	    return 1
	endif
    catch /^Vim\%((\a\+)\)\=:E/
	call s:VimExceptionMsg(v:exception)
    catch /^WriteBackup\%(VersionControl\)\?:/
	call s:ExceptionMsg(v:exception)
    endtry
    return 0
endfunction
function! writebackupVersionControl#RestoreThisBackup( filespec, isForced )
"*******************************************************************************
"* PURPOSE:
"   Restores the passed file as the original file.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Loads the restored original file, or:
"   Prints error message.
"* INPUTS:
"   a:filespec	Backup file.
"   a:isForced	Flag whether restore should proceed without confirmation and
"		overwrite readonly original file.
"* RETURN VALUES:
"   0 if an error occurred or the user declined.
"   1 if successful.
"*******************************************************************************
    try
	let l:currentVersion = writebackupVersionControl#GetVersion(a:filespec)
	if empty(l:currentVersion)
	    call s:ErrorMsg('You can only restore backup files!')
	    return 0
	endif

	let l:originalFilespec = writebackupVersionControl#GetOriginalFilespec(a:filespec, 0)
	if empty( l:originalFilespec )
	    " TODO: 'Unable to determine the location of the original file; open it in another buffer.'
	    call s:ErrorMsg('Unable to determine the location of the original file.')
	    return 0
	endif

	if s:Restore( a:filespec, l:originalFilespec, a:isForced, printf("Really override '%s' with this backup '%s'?", l:originalFilespec, l:currentVersion) )
	    execute 'edit! ' . s:FnameShortenAndEscape(l:originalFilespec)
	    return 1
	endif
    catch /^Vim\%((\a\+)\)\=:E/
	call s:VimExceptionMsg(v:exception)
    catch /^WriteBackup\%(VersionControl\)\?:/
	call s:ExceptionMsg(v:exception)
    endtry
    return 0
endfunction

function! writebackupVersionControl#WriteBackupOfSavedOriginal( originalFilespec, isForced )
"*******************************************************************************
"* PURPOSE:
"   Instead of backing up the current buffer, back up the saved version of the
"   buffer.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Writes backup, or:
"   Prints error message.
"* INPUTS:
"   a:originalFilespec	Original file.
"   a:isForced	Flag whether creation of a new backup file is forced, i.e. even
"		if contents are identical or when no more backup versions (for
"		this day) are available.
"* RETURN VALUES:
"   -1 if an error occurred.
"   0 if the file is already backed up.
"   1 if successful.
"   2 if the file was already backed up, and the earlier backup was successfully
"     redated.
"*******************************************************************************
    try
	if ! writebackupVersionControl#IsOriginalFile(a:originalFilespec)
	    throw 'WriteBackupVersionControl: You can only backup the latest file version, not a backup file itself!'
	endif

	if ! a:isForced && g:WriteBackup_AvoidIdenticalBackups !=# '0'
	    let l:identicalPredecessorFilespec = writebackupVersionControl#IsIdenticalWithPredecessor(a:originalFilespec)
	    if ! empty(l:identicalPredecessorFilespec)
		if g:WriteBackup_AvoidIdenticalBackups ==# 'redate'
		    let l:backupFilespec = writebackup#GetBackupFilename(a:originalFilespec, 0)
		    if writebackup#ShouldRedateIdenticalBackup(l:backupFilespec)
			" This would be today's first backup, but an earlier
			" identical backup exists, so just rename that to
			" represent today's first backup.
			call writebackup#Redate(l:identicalPredecessorFilespec, l:backupFilespec)
			return 2
		    endif
		endif

		let l:identicalPredecessorVersion = writebackupVersionControl#GetVersion(l:identicalPredecessorFilespec)
		throw printf("WriteBackupVersionControl: This file is already backed up as '%s'", l:identicalPredecessorVersion)
	    endif
	endif

	let l:backupFilename = writebackup#GetBackupFilename(a:originalFilespec, a:isForced)
	call s:Copy(a:originalFilespec, l:backupFilename, a:isForced, 0)
	echomsg '"' . l:backupFilename . '" written'
	return 1
    catch /^WriteBackupVersionControl: This file is already backed up/
	call s:ExceptionMsg(v:exception)
	return 0
    catch /^WriteBackup\%(VersionControl\)\?:/
	call s:ExceptionMsg(v:exception)
	return -1
    catch
	call s:ErrorMsg('Failed to backup file: ' . v:exception)
	return -1
    endtry
endfunction

function! writebackupVersionControl#DeleteBackup( backupFilespec, isForced )
"*******************************************************************************
"* PURPOSE:
"   Delete the passed backup file, if it is writable (or forced).
"* ASSUMPTIONS / PRECONDITIONS:
"   The file a:backupFilespec exists.
"* EFFECTS / POSTCONDITIONS:
"   Removes the passed backup file from the file system.
"* INPUTS:
"   a:backupFilespec	Backup file.
"   a:isForced	Flag whether readonly backups should also be deleted.
"* RETURN VALUES:
"   None.
"   Throws 'WriteBackupVersionControl: Cannot delete original file!'
"   Throws 'WriteBackupVersionControl: Cannot delete readonly backup '<version>'
"	    (add ! to override)' (unless a:isForced).
"   Throws 'WriteBackupVersionControl: Failed to delete backup version
"	    '<version>''
"*******************************************************************************
    if writebackupVersionControl#IsOriginalFile(a:backupFilespec)
	throw 'WriteBackupVersionControl: Cannot delete original file!'
    endif

    " The delete() function also deletes readonly files without complaining, so
    " we need to explicitly check for readonly files to avoid that.
    if ! a:isForced && s:IsFileReadonly(a:backupFilespec)
	throw printf("WriteBackupVersionControl: Cannot delete readonly backup '%s' (add ! to override)", writebackupVersionControl#GetVersion(a:backupFilespec))
    endif

    if delete(a:backupFilespec) != 0
	throw printf("WriteBackupVersionControl: Failed to delete backup '%s'", writebackupVersionControl#GetVersion(a:backupFilespec))
    endif
endfunction
function! writebackupVersionControl#DeleteBackupLastBackup( filespec, isForced )
"*******************************************************************************
"* PURPOSE:
"   Delete the latest backup version.
"* ASSUMPTIONS / PRECONDITIONS:
"   None.
"* EFFECTS / POSTCONDITIONS:
"   Removes the last backup file from the file system.
"   Prints (error) message.
"* INPUTS:
"   a:filespec	Backup or original file.
"   a:isForced	Flag whether delete without confirmation and whether readonly
"		backups should also be deleted.
"* RETURN VALUES:
"   0 if an error occurred or the user declined.
"   1 if successful.
"*******************************************************************************
    try
	let l:backupFiles = writebackupVersionControl#GetAllBackupsForFile(a:filespec)
	if len(l:backupFiles) == 0
	    call s:ErrorMsg('No backups exist for this file.')
	    return 0
	endif
	let l:lastBackupFile = l:backupFiles[-1]

	if ! a:isForced
	    let l:response = confirm( printf("Really delete backup '%s'?", writebackupVersionControl#GetVersion(l:lastBackupFile)), "&No\n&Yes", 1, 'Question' )
	    if l:response != 2
		echomsg 'Delete canceled.'
		return 0
	    endif
	endif

	call writebackupVersionControl#DeleteBackup(l:lastBackupFile, a:isForced)

	echomsg printf("Deleted backup '%s'; %s",
	\   writebackupVersionControl#GetVersion(l:lastBackupFile),
	\   (len(l:backupFiles) == 1 ? 'no backups exist for this file any more.' : "last backup now is '" . writebackupVersionControl#GetVersion(l:backupFiles[-2]) . "'")
	\)
	return 1
    catch /^WriteBackup\%(VersionControl\)\?:/
	call s:ExceptionMsg(v:exception)
    endtry
    return 0
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
" vim: set ts=8 sts=4 sw=4 noexpandtab ff=unix fdm=syntax :
