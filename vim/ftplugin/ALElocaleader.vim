
" $vimfiles/vim/ftplugin/ALElocaleader.vim
"  sourced by
"   $vimfiles/vim/ftplugin/html-ft.vim
"   $vimfiles/vim/ftplugin/markdown.vim
"   $vimfiles/vim/ftplugin/python.vim
"   $vimfiles/vim/ftplugin/sh.vim
"   $vimfiles/vim/ftplugin/text.vim
"   $vimfiles/vim/ftplugin/yaml.vim

" jump to a definition
noremap <silent> <localleader>d :ALEGoToDefinition<cr>

" moving to ALE errors
noremap <silent> <localleader>] <Plug>(ale_next_wrap)
noremap <silent> <localleader>[ <Plug>(ale_previous_wrap)

" toggle ALE for buffer
" ---------------------
" noremap <localleader>aa :ALEToggleBuffer<CR>  " doesn't report status
noremap <localleader>a :call ALEToggleBufferShow()<cr>
function! ALEToggleBufferShow()
  if b:ale_enabled
    ALEDisableBuffer
  else
    ALEEnableBuffer
  endif
let b:ale_enabled
endfunction

