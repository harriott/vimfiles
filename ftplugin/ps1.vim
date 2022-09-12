" vim: fdl=1:

" Modeline stuff for working with PowerShell scripts.
" Language:	PowerShell
" Maintainer: Joseph Harriott
" Last Change: Tue 16 Aug 2022
" This file should be in your  vimfiles\ftplugin  folder.

setlocal expandtab foldmethod=syntax shiftwidth=2 textwidth=0

""> turn off or on a fold of commands
execute 'source 'g:vimfiles.'/ftplugin/firmCommentWholeFold.vim'

" firmly comment out a whole fold
nnoremap <buffer><leader><leader>> :call FirmComment('#')<bar>%s/^# #endregion/#endregion/<bar>%s/^# #region/#region/<cr>:update<cr>:edit<cr>

" remove firm comments from a whole fold
nnoremap <buffer><leader><leader>< :call FirmUnComment('#')<cr>:update<cr>:edit<cr>

