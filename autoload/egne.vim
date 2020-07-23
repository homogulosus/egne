" ===================================
" Name: autoload/egne (eñe)
" Maintainer: homogulosus
" Version: 0.1
" Date: July 23, 2020
" ===================================

let s:save_cpo = &cpo
set cpo&vim

let s:EgneOn = 0

function! egne#ToggleEgne() abort
  if !s:EgneOn
    call Egne()
  else
    call EgneOff()
  endif
endfunction

function! Egne() abort
  echohl ModeMsg
  echomsg " Viva España"
  echohl NONE
  let s:EgneOn = 1

  imap ~n ñ
  imap ~N Ñ
  imap ~c ç
  imap ~C Ç

endfunction

function! EgneOff() abort
  echohl ModeMsg
  echomsg " Bye Bye Spain"
  echohl NONE
  let s:EgneOn = 0

  iunmap ~n
  iunmap ~N
  iunmap ~c
  iunmap ~C

endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set ft=vim sw=2 sts=2:
