" vim: se fdl=1:

" $vimfiles/test/plugin/packs.vim

" Test configuration - set in:
"  $MSwin10\mb\symlinks-mostly.ps1
"  $OSAB/bs-symlinks/jo-2-whenWM-0.sh

let g:test_packs = 1
" source $vfv/plugin/packs.vim

"">>> vim-easymotion
" :h easymotion-default-mappings
packadd vim-easymotion

let g:EasyMotion_do_mapping = 0 " Disable default mappings
" <leader>f{char} to move to {char}
map  <leader><leader>f <Plug>(easymotion-bd-f)
nmap <leader><leader>f <Plug>(easymotion-overwin-f)
" Move to word
map  <leader><leader>w <Plug>(easymotion-bd-w)
nmap <leader><leader>w <Plug>(easymotion-overwin-w)
" s{char}{char}{label}
autocmd VimEnter * nmap s <Plug>(easymotion-overwin-f2)
"  (in an autocmd to be sure it works with Arch vim-colors-solarized)

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

