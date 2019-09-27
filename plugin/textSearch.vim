"----------------------
" Plugin configurations
" ---------------------
" (keep this file in your plugin directory so's it's automatically sourced at startup)

map g/ <Plug>(incsearch-stay)
map z/ <Plug>(incsearch-fuzzy-/)

" EasyMotion
" ----------
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" <Leader>f{char} to move to {char}
map  <Leader><Leader>f <Plug>(easymotion-bd-f)
nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)
" Move to word
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)
" s{char}{char}{label}
autocmd VimEnter * nmap s <Plug>(easymotion-overwin-f2)
" (in an autocmd to be sure it works with Arch vim-colors-solarized)

" toggle searching functionality
nnoremap <leader>e :call EasyMotionSearchToggle()<cr>
let g:searchingwitheasymotion = 0
function! EasyMotionSearchToggle()
    if g:searchingwitheasymotion
        unmap /
        unmap n
        unmap N
        let g:searchingwitheasymotion = 0
        echo 'searching normally'
    else
        map / <Plug>(easymotion-sn)
        map n <Plug>(easymotion-next)
        map N <Plug>(easymotion-prev)
        let g:searchingwitheasymotion = 1
        echo 'searching with EasyMotion'
    endif
endfunction

