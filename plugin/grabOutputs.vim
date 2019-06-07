
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
" doesn't catch Errors

" grabbing configurations (somehow leaving empty buffers and sometimes throwing errors)
" -------------------------------------------------------------------------------------
function! GrabScriptnames()
  redir @p
    silent scriptnames
  redir END
  new
  normal! "pp
  sav! $HOME/vim-scriptnames.txt
endfunction
command! GrabScriptnames call GrabScriptnames()

" Grab mappings
" -------------
function! Grabmaps()
  redir @n
    silent map
  redir END
  redir @i
    silent map!
  redir END
  new
  normal! "np "ip
endfunction

" for some reason, these leave an empty buffer up...
"
function! GrabFmaps()
  call Grabmaps()
  v/<.\=.\=F.*>/d
  nohlsearch
  sav! $HOME/vim-Fmaps.txt
endfunction
command! GrabFmaps call GrabFmaps()

function! GrabNonFmaps()
  call Grabmaps()
  g/<.\=.\=F.*>/d
  g/<Plug>/d
  g/<SNR>/d
  g/ /d " non-breaking space
  nohlsearch
  sav! $HOME/vim-nonFmaps.txt
endfunction
command! GrabNonFmaps call GrabNonFmaps()

