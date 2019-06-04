
" Joseph Harriott - http://momentary.eu/
" --------------------------------------

" to get the output of a command in a new tab, just enter :TabEx <cmd>
function! TabEx(cmd)
  redir => message
  silent execute a:cmd
  redir END
  tabnew
  silent put=message
  set nomodified
endfunction
command! -nargs=+ -complete=command TabEx call TabEx(<q-args>)
" (from http://vim.wikia.com/wiki/Capture_ex_command_output)

function! GrabFmaps()
  redir @n
    silent map
  redir END
  redir @i
    silent map!
  redir END
  new
  normal! "np "ip
  v/<.\=.\=F.*>/d
  nohlsearch
  sav! $HOME/vim-Fmaps.txt
endfunction
command! -complete=command GrabFmaps call GrabFmaps()

function! GrabScriptnames()
  redir @p
    silent scriptnames
  redir END
  new
  normal! "pp
  sav! $HOME/vim-scriptnames.txt
endfunction
command! -complete=command GrabScriptnames call GrabScriptnames()

