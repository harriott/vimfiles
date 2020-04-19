
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

function! GrabFnmaps()
  exe 'edit' g:vimfiles.'/grabbed/FnMaps.txt'
  normal! ggVGd
  call GrabWrite("map|map!")
  v/<.\=.\=F.*>/d
  nohlsearch
  write
endfunction
command! GrabFnmaps call GrabFnmaps()

if has('unix')
  function! GrabLeaderUses()
    exe 'edit' g:vimfiles.'/grabbed/leaderUses.txt'
    normal! ggVGd
    exe 'cd' g:vimfiles
    call GrabWrite("!grep -ri '<leader>'")
  endfunction
  command! GrabLeaderUses call GrabLeaderUses()
endif

function! GrabPlugMaps()
  exe 'edit' g:vimfiles.'/grabbed/PlugMaps.txt'
  normal! ggVGd
  call GrabWrite("map|map!")
  v/<Plug>/d
  nohlsearch
  write
endfunction
command! GrabPlugMaps call GrabPlugMaps()

" grab runtimepath
function! GrabRtp()
  exe 'edit' g:vimfiles.'/grabbed/runtimepath.txt'
  normal! ggVGd
  call GrabWrite("echo &runtimepath")
  %s/,/\r/g
  nohlsearch
  write
endfunction
command! GrabRtp call GrabRtp()

function! GrabScriptnames()
  exe 'edit' g:vimfiles.'/grabbed/scriptnames.txt'
  normal! ggVGd
  call GrabWrite("scriptnames")
endfunction
command! GrabScriptnames call GrabScriptnames()

function! GrabSimpleMaps()
  exe 'edit' g:vimfiles.'/grabbed/simpleMaps.txt'
  normal! ggVGd
  call GrabWrite("map|map!")
  silent! exe 'g/<.\=.\=F.*>/d'
  silent! exe 'g/<Plug>/d'
  silent! exe 'g/<SNR>/d'
  g/ /d " non-breaking space
  nohlsearch
  write
endfunction
command! GrabSimpleMaps call GrabSimpleMaps()

function! GrabWrite(toGrab)
  " only to be called from within a parent function that has just before opened an empty buffer
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

