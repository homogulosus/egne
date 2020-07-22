let s:save_cpo = &cpo
set cpo&vim

let s:EgneOn=0

function! egne#ToggleEgne() abort
  if !s:EgneOn
    call Egne()
  else
    call EgneOff()
  endif
endfunction

function! Egne() abort
  echo "Viva Espanya"
  let s:EgneOn=1

  imap ~n ñ
  imap ~N Ñ

endfunction

function! EgneOff() abort
  echo "Adios Espanya"
  let s:EgneOn=0

  iunmap ~n
  iunmap ~N


endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set ft=vim sw=2 sts=2:
