
" Joseph Harriott

" Functions for grabbing some settings.
" -------------------------------------

" (keep this file in your plugin directory so's it's automatically sourced at startup)

" I've switched to using  bufferize.vim  here, which makes life simpler
" but with the disadvantage that it can only safely be run once for each instance of vim.

" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * "
" To avoid trouble, prefer running these functions via  ~/.vim/grabbed/grabMaps.sh
" If you call one of these functions to find conditional mappings, relaunch vim.
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * "

" get g:vimfiles location:
if empty(matchstr($HOME, '/home/'))
  let g:vimfiles = $HOME.'\vimfiles'
else
  let g:vimfiles = $HOME.'/.vim'
endif

function! GrabCommands()
  edit $HOME/vim-commands.txt
  normal! VGd
  call GrabWrite("command")
endfunction

function! GrabFnMaps()
  exe 'edit '.g:vimfiles.'/grabbed/FnMaps.txt'
  normal! ggVGd
  call GrabWrite("map|map!")
  v/<.\=.\=F.*>/d
  nohlsearch
  write
endfunction

function! GrabPlugMaps()
  exe 'edit '.g:vimfiles.'/grabbed/PlugMaps.txt'
  normal! ggVGd
  call GrabWrite("map|map!")
  v/<Plug>/d
  nohlsearch
  write
endfunction

" grab runtimepath
function! GrabRtp()
  exe 'edit '.g:vimfiles.'/grabbed/runtimepath.txt'
  normal! ggVGd
  call GrabWrite("echo &runtimepath")
  %s/,/\r/g
  nohlsearch
  write
endfunction

function! GrabScriptnames()
  exe 'edit '.g:vimfiles.'/grabbed/'.hostname().'-scriptnames.txt'
  normal! ggVGd
  call GrabWrite("scriptnames")
endfunction

function! GrabSimpleMaps()
  exe 'edit '.g:vimfiles.'/grabbed/simpleMaps.txt'
  normal! ggVGd
  call GrabWrite("map|map!")
  silent! exe 'g/<.\=.\=F.*>/d'
  silent! exe 'g/<Plug>/d'
  silent! exe 'g/<SNR>/d'
  g/ /d " non-breaking space
  nohlsearch
  write
endfunction

function! GrabWrite(toGrab)
  " only to be called from within a parent function that has just before opened an empty buffer
  silent execute 'Bufferize ' . a:toGrab
  blast
  normal! ggVGd
  bdelete
  blast
  normal! p
  write
endfunction

