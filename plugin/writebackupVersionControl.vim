" writebackupVersionControl.vim: Version control functions (diff, restore,
" history navigation) for backups made with the writebackup plugin, which have a
" date file extension in the format '.YYYYMMDD[a-z]'.
"
" DEPENDENCIES:
"   - Requires Vim 7.0 or higher.
"
"   - writebackup plugin (vimscript #1828)
"   - writebackupVersionControl.vim autoload script
"
"   - External command "cmp", "diff" or equivalent for comparison
"   - External command "diff" or equivalent for listing of differences
"
" Copyright: (C) 2007-2012 Ingo Karkat
"   The VIM LICENSE applies to this script; see ':help copyright'.
"
" Maintainer:	Ingo Karkat <ingo@karkat.de>
"
let s:version = 320
" REVISION	DATE		REMARKS
"   3.20.035	14-Dec-2012	Make message for missing writebackup.vim plugin
"				more precise.
"   3.10.034	20-Feb-2012	ENH: Add :WriteBackupDiffDaysChanges and
"				:WriteBackupViewDaysChanges.
"   2.23.033	26-Oct-2009	ENH: :WriteBackupRestoreFromPred now takes an
"				optional [count] to restore an earlier
"				predecessor.
"   2.21.032	16-Jul-2009	Added
"				g:WriteBackup_ScratchBufferCommandModifiers to
"				configure the location where the diff scratch
"				buffer is opened. Changed default from 'topleft
"				new' to 'new'; in contrast to the :DiffCreate
"				command, there usually won't be a diff split
"				open.
"   2.21.031	10-Jul-2009	BF: Detection of
"				g:WriteBackup_CompareShellCommand left variable
"				unset if no command detected.
"				Added detection for
"				g:WriteBackup_DiffShellCommand.
"   2.20.030	09-Jul-2009	:WriteBackupViewDiffWithPred has a default
"				count of 0 to be able to detect no given count.
"				Also removed -bar because passed diff arguments
"				may include quoted strings.
"   2.20.029	08-Jul-2009	ENH: Added :WriteBackupViewDiffWithPred command
"				to show the diff output in a scratch buffer.
"   2.11.028	24-Jun-2009	ENH: :WriteBackupDiffWithPred now takes an
"				optional [count] to diff with an earlier
"				predecessor.
"   2.10.027	27-May-2009	Changes in the autoload script; just bumped
"				version number here.
"   2.00.026	22-Feb-2009	ENH: Added [!] to the following commands to
"				disable confirmation dialog and override
"				readonly target files:
"				:WriteBackupRestoreFromPred
"				:WriteBackupRestoreThisBackup
"				:WriteBackupOfSavedOriginal
"				:WriteBackupDeleteLastBackup
"   2.00.025	21-Feb-2009	ENH: Added :WriteBackupDeleteLastBackup command.
"   2.00.024	19-Feb-2009	ENH: Allowing to configure compare shell command
"				via g:WriteBackup_CompareShellCommand.
"   2.00.023	18-Feb-2009	Added check for same major version of
"				writebackup.vim, so that too new (=
"				incompatible) versions are reported, too.
"   2.00.022	17-Feb-2009	Moved functions from plugin to separate autoload
"				script.
"   1.41.021	16-Feb-2009	Split off documentation into separate help file.
"   1.40.020	13-Feb-2009	Extracted version number and put on a more
"				prominent place, so that it gets updated.
"   1.40.019	11-Feb-2009	Factored out s:WarningMsg().
"				Now using printf() for complex messages.
"   1.40.018	23-Jan-2009	Renamed configuration variable from
"				g:writebackup_DiffVertSplit to
"				g:WriteBackup_DiffVertSplit.
"				Added try...catch around all functions
"				implementing the commands and changed printing
"				of error messages to throwing
"				WriteBackupVersionControl exceptions in some
"				places.
"				ENH: :WriteBackupListVersions now includes
"				backup dirspec if backups aren't done in the
"				original file's directory.
"   1.30.017	22-Jan-2009	BF: :WriteBackupDiffWithPred failed to open the
"				predecessor with the ':set autochdir' setting if
"				the CWD has been (temporarily) changed. Now
"				using absolute path for the :split command.
"   1.30.016	16-Jan-2009	Factored out s:ErrorMsg().
"				Now setting v:errmsg on errors.
"   1.30.015	06-Jan-2009	:WriteBackupDiffWithPred doesn't jump to the
"				predecessor window; it now moves the cursor back
"				to the originating window; this feels more
"				natural.
"   1.30.014	17-Dec-2008	:WriteBackupDiffWithPred now avoids that a
"				previous (open) fold status at the cursor
"				position is remembered and obscures the actual
"				differences.
"   1.30.013	24-Nov-2008	Generalized s:GetPredecessorForFile() into
"				s:GetRelativeBackup().
"				Refactored s:GetAdjustedBackupFilespec() into
"				s:GetAllBackupsForFile().
"				ENH: Added :WriteBackupGoPrev and
"				:WriteBackupGoNext commands.
"				Edited user messages.
"				ENH: Added :WriteBackupGoOriginal command.
"   1.20.012	21-Jul-2008	BF: Using ErrorMsg instead of Error highlight
"				group.
"   1.20.011	28-Jun-2008	Added Windows detection via has('win64').
"   1.20.010	13-Jun-2008	Added -bar to all commands that do not take any
"				arguments, so that these can be chained together.
"   1.20.009	30-Dec-2007	:WriteBackupListVersions and
"				:WriteBackupDiffWithPred claimed "no backups
"				exist" if option 'wildignore' hides the backup
"				files. Now temporarily resetting the option
"				before glob().
"   1.20.008	18-Sep-2007	ENH: Added support for writing backup files into
"				a different directory (either one static backup
"				dir or relative to the original file).
"				Now requires writebackup.vim version 1.20 or
"				later.
"   1.00.007	17-Sep-2007	Command :WriteBackupOfSavedOriginal now checks
"				that the file is an original one.
"				Refactored s:WriteBackupOfSavedOriginal(): Moved
"				expand('%') out of the function; the original
"				file is now passed as an argument like it is for
"				all other functions.
"				WriteBackup_GetBackupFilename() now takes a
"				originalFilespec argument, too.
"				BF: :WriteBackupIsBackedUp doesn't deal
"				correctly with filenames that contain special ex
"				characters [%#!]. Now using system() instead of
"				'silent !' to avoid additional escaping.
"   1.00.006	07-Mar-2007	Added documentation.
"	0.05	06-Dec-2006	Factored out Copy() function.
"				Implemented :WriteBackupOfSavedOriginal command.
"	0.04	16-Nov-2006	BF: '%' and '#' must also be escaped for Vim.
"	0.03	02-Nov-2006	ENH: Added user information that IsBackedUp()
"				compares with saved version, not modified
"				buffer.
"				BF: In Restore() and IsBackedUp(), expand
"				filespecs to absolute paths to avoid problems
"				with CWD, especially on Windows systems with UNC
"				paths.
"				BF: In DiffWithPred() and RestoreThisBackup(),
"				convert the filespec to Vim syntax.
"	0.02	31-Oct-2006	Added WriteBackupListVersions.
"				Added EchoElapsedTimeSinceVersion as an add-on
"				to WriteBackupListVersions.
"				Added WriteBackupIsBackedUp.
"				Added RestoreFromPred and RestoreThisBackup.
"				Optimized away actual diff invocation in
"				IsBackedUp() for most cases.
"				cases
"	0.01	30-Oct-2006	file creation

" Avoid installing twice or when in unsupported Vim version.
if exists('g:loaded_writebackupVersionControl') || (v:version < 700)
    finish
endif
if ! exists('g:loaded_writebackup')
    runtime plugin/writebackup.vim
endif
if ! exists('g:loaded_writebackup')
    echomsg 'writebackupVersionControl: You need to install the writebackup.vim plugin.'
    finish
elseif g:loaded_writebackup < 300
    echomsg 'writebackupVersionControl: You need a newer version of the writebackup.vim plugin.'
    finish
endif
if g:loaded_writebackup >= 400
    echomsg 'writebackupVersionControl: You need a newer version of this plugin; writebackup.vim is too new.'
    finish
endif
let g:loaded_writebackupVersionControl = s:version

"- configuration --------------------------------------------------------------

" Allow user to choose between vertical or horizontal diffsplit.
if ! exists('g:WriteBackup_DiffVertSplit')
    let g:WriteBackup_DiffVertSplit = 1  " Default to split for diff vertically.
endif

" Shell command used to compare two files to find out whether they are
" identical. The command must take two filespec arguments, return 0 for
" identical files, 1 for different files and anything else for trouble.
if ! exists('g:WriteBackup_CompareShellCommand')
    if executable('cmp')
	" -s	Print nothing for differing files.
	let g:WriteBackup_CompareShellCommand = 'cmp -s'
    elseif executable('diff')
	" -q	Report no details of the differences.
	let g:WriteBackup_CompareShellCommand = 'diff -q'
    else
	let g:WriteBackup_CompareShellCommand = ''
    endif
endif

" Shell command used to diff two files for the :WriteBackupViewDiffWithPred
" command.
if ! exists('g:WriteBackup_DiffShellCommand')
    if executable('diff')
	let g:WriteBackup_DiffShellCommand = 'diff'
    else
	let g:WriteBackup_DiffShellCommand = ''
    endif
endif
" Command-line arguments which are always passed to the diff shell command.
if ! exists('g:WriteBackup_DiffCreateAlwaysArguments')
    let g:WriteBackup_DiffCreateAlwaysArguments = ''
endif
" Command-line arguments which are only passed to the diff shell command when no
" arguments are passed to the :WriteBackupViewDiffWithPred command.
if ! exists('g:WriteBackup_DiffCreateDefaultArguments')
    let g:WriteBackup_DiffCreateDefaultArguments = '-u'
endif

" Vim command modifiers (:topleft, :belowright, :vertical, etc.) applied when
" opening the diff scratch buffer.
if ! exists('g:WriteBackup_ScratchBufferCommandModifiers')
    let g:WriteBackup_ScratchBufferCommandModifiers = ''
endif


"- commands -------------------------------------------------------------------

command! -bar -count=1 WriteBackupDiffWithPred		    call writebackupVersionControl#DiffWithPred(expand('%'), <count>)
command! -bar -count=1 WriteBackupDiffDaysChanges	    call writebackupVersionControl#DiffDaysChanges(expand('%'), <count>)
command! -nargs=? -count=0 WriteBackupViewDiffWithPred	    call writebackupVersionControl#ViewDiffWithPred(expand('%'), <count>, <q-args>)
command! -nargs=? -count=0 WriteBackupViewDaysChanges	    call writebackupVersionControl#ViewDiffDaysChanges(expand('%'), <count>, <q-args>)
command! -bar WriteBackupListVersions			    call writebackupVersionControl#ListVersions(expand('%'))
command! -bar -bang -count=1 WriteBackupGoPrev	    	    call writebackupVersionControl#WriteBackupGoBackup(expand('%'), <bang>0, -1 * <count>)
command! -bar -bang -count=1 WriteBackupGoNext	    	    call writebackupVersionControl#WriteBackupGoBackup(expand('%'), <bang>0, <count>)
command! -bar -bang WriteBackupGoOriginal	    	    call writebackupVersionControl#WriteBackupGoOriginal(expand('%'), <bang>0)
command! -bar WriteBackupIsBackedUp		    	    call writebackupVersionControl#IsBackedUp(expand('%'))
command! -bar -bang -count=1 WriteBackupRestoreFromPred	    call writebackupVersionControl#RestoreFromPred(expand('%'), <bang>0, <count>)
command! -bar -bang WriteBackupRestoreThisBackup    	    call writebackupVersionControl#RestoreThisBackup(expand('%'), <bang>0)
command! -bar -bang WriteBackupOfSavedOriginal	    	    call writebackupVersionControl#WriteBackupOfSavedOriginal(expand('%'), <bang>0)
command! -bar -bang WriteBackupDeleteLastBackup	    	    call writebackupVersionControl#DeleteBackupLastBackup(expand('%'), <bang>0)

unlet s:version
" vim: set ts=8 sts=4 sw=4 noexpandtab ff=unix fdm=syntax :
