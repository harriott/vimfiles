"
" Language: qf - quickfix window
" Maintainer: Joseph Harriott
" Last Change: Thu 19 Jun 2025

" $vfv/ftplugin/qf.vim, supplemental to  $VIMRUNTIME/ftplugin/qf.vim

" Height:
"  can resize incrementally, like any other window
"  let &l:winheight = &lines / 3  " thanks to reddit 793s17, but this unfortunately overrides  auto_resize_height

" disable magic window, then maximize
noremap <buffer> <leader>bq :BqfDisable<CR><c-w>_

