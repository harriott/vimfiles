" vim: se fdl=1:

" Language: lisp
" Maintainer: Joseph Harriott
" Last Change: Mon 05 Sep 2022

" $vimfiles/vim/ftplugin/lisp.vim, supplementary to  $VIMRUNTIME/ftplugin/lisp.vim
" Lisp  files are decided in  $VIMRUNTIME/filetype.vim

  " if getline(v:lnum) =~ '^(' | return ">1" | else | return "=" | endif

setlocal et fde=LispExpression() fdc=1 fdm=expr tw=0

""> folding by ;;;\+
function! LispExpression()
    " define l:semicolons, even in no match
	let l:semicolons = matchstr(getline(v:lnum), ';;\zs;\+')
	" if empty(l:semicolons) | return "=" | else | return ">".len(l:semicolonCount) | endif
	let l = len(l:semicolons)
	if     l =~ 1 | return ">2"
	elseif l =~ 2 | return ">1"
	endif
	" if there was no heading detected, just use the fold level from the previous line
    return "="
endfunction

""> turn off or on a fold of commands
execute 'source 'g:vimfiles.'/ftplugin/firmCommentWholeFold.vim'

" firmly comment out a whole fold
nnoremap <buffer><leader><leader>> :call FirmComment(';')<cr>

" remove firm comments from a whole fold
nnoremap <buffer><leader><leader>< :call FirmUnComment(';')<cr>

