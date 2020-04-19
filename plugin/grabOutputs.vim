
" Joseph Harriott - http://momentary.eu/ - Tue 24 Dec 2019
" --------------------------------------------------------
" (keep this file in your plugin directory so's it's automatically sourced at startup)

" g:vimfiles  should be set to your vim runtime folder

function! GrabCommands()
  edit $HOME/vim-commands.txt
  normal! VGd
  call GrabWrite("command")
endfunction
command! GrabCommands call GrabCommands()

if has('unix')
  function! GrabLeaderUses()
    exe 'edit' g:vimfiles.'/grabbed/leaderUses.txt'
    normal! ggVGd
    exe 'cd' g:vimfiles
    call GrabWrite("!grep -ri '<leader>'")
  endfunction
  command! GrabLeaderUses call GrabLeaderUses()
endif

function! GrabScriptnames()
  exe 'edit' g:vimfiles.'/grabbed/scriptnames.txt'
  normal! ggVGd
  call GrabWrite("scriptnames")
endfunction
command! GrabScriptnames call GrabScriptnames()

function! GrabWrite(toGrab)
  " only to be called from within a parent function that has just before set up an empty buffer
  silent execute 'Bufferize ' . a:toGrab
  blast
  " remove spurious CRs
  silent! exe '%s/\+$//'
  normal! ggVGd
  bdelete
  blast
  normal! p
  write
endfunction

" grab mappings (using Grabmaps() - to be changed to use GrabWrite)
" -----------------------------------------------------------------
function! GrabFmaps()
  call Grabmaps()
  v/<.\=.\=F.*>/d
  nohlsearch
  sav! $HOME/vim-Fmaps.txt
endfunction
command! GrabFmaps call GrabFmaps()

function! GrabMyNonFmaps()
  call Grabmaps()
  g/<.\=.\=F.*>/d
  g/<Plug>/d
  g/<SNR>/d
  g/ /d " non-breaking space
  nohlsearch
  sav! $HOME/vim-myNonFmaps.txt
endfunction
command! GrabMyNonFmaps call GrabMyNonFmaps()

function! GrabPlugMaps()
  call Grabmaps()
  v/<Plug>/d
  nohlsearch
  sav! $HOME/vim-PlugMaps.txt
endfunction
command! GrabPlugMaps call GrabPlugMaps()

function! Grabmaps()
  " the heavy work
  edit $HOME/vim-maps.txt
  normal! VGd
  call GrabWrite("map")
  call GrabWrite("map!")
endfunction
command! Grabmaps call Grabmaps()

" grab runtimepath (somehow leaving empty buffers and sometimes throwing errors)
" ------------------------------------------------------------------------------
function! TryCNB()
  if exists("g:loaded_close_buffers")
    CloseNamelessBuffers
  endif
endfunction
command! TryCNB call TryCNB()

" grab runtimepath
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

