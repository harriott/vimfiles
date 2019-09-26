
" Joseph Harriott - http://momentary.eu/
" --------------------------------------
" (keep this file in your plugin directory so's it's automatically sourced at startup)

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

" grab configurations (somehow leaving empty buffers and sometimes throwing errors)
" ---------------------------------------------------------------------------------
function! GrabScriptnames()
  redir @p
    silent scriptnames
  redir END
  new
  normal! "pp
  sav! $HOME/vim-scriptnames.txt
  TryCNB
endfunction
command! GrabScriptnames call GrabScriptnames()

function! TryCNB()
  if exists("g:loaded_close_buffers")
    CloseNamelessBuffers
  endif
endfunction
command! TryCNB call TryCNB()

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

function! GrabFmaps()
  call Grabmaps()
  v/<.\=.\=F.*>/d
  nohlsearch
  sav! $HOME/vim-Fmaps.txt
  TryCNB
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
  TryCNB
endfunction
command! GrabNonFmaps call GrabNonFmaps()

function! GrabPlugMaps()
  call Grabmaps()
  v/<Plug>/d
  nohlsearch
  sav! $HOME/vim-PlugMaps.txt
  TryCNB
endfunction
command! GrabPlugMaps call GrabPlugMaps()

" grab runtimepath
" ----------------
function! GrabRtp()
  redir @p
    silent echo &runtimepath
  redir END
  new
  normal! "pp
  %s/,/\r/g
  sav! $HOME/vim-runtimepath.txt
  TryCNB
endfunction
command! GrabRtp call GrabRtp()

