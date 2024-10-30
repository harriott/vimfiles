
" $vfv/ftplugin/ALElocaleader.vim
"  sourced by
"   $vfv/ftplugin/html-ft.vim
"   $vfv/ftplugin/markdown.vim
"   $vfv/ftplugin/python.vim
"   $vfv/ftplugin/sh.vim
"   $vfv/ftplugin/text.vim
"   $vfv/ftplugin/yaml.vim

" jump to a definition
noremap <silent> <localleader>d :ALEGoToDefinition<cr>

" moving to ALE errors
noremap <silent> <localleader><localleader>] <Plug>(ale_next_wrap)
noremap <silent> <localleader><localleader>[ <Plug>(ale_previous_wrap)

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

