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
