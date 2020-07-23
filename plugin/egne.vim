" ===================================
" Name: plugin/egne (eñe)
" Maintainer: homogulosus
" Version: 0.1
" Date: July 23, 2020
" ===================================

if exists('g:loaded_egne')
  finish
endif

let g:loaded_egne = 1

noremap <leader><leader>e :call egne#ToggleEgne()<CR>
inoremap <leader><leader>e <esc>:call egne#ToggleEgne()<CR>a
