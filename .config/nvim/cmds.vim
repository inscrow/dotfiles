" Definition of some useful commands to interact with files and buffers

" Copy {{{1
function Copy(newfile)
  " automatically save based on autowrite
  if &autowrite
    write
  endif

  call system('cp ' . expand('%') . ' ' . a:newfile)
  execute 'edit ' . a:newfile
endfunction
command! -nargs=1 Copy call Copy(expand('<args>'))
" }}}
" Delete {{{1
command! Delete call system('rm ' . expand('%')) | bdelete
" }}}
" Delete and quit {{{1
command! Deleteq call system('rm ' . expand('%')) | bdelete | q
" }}}
" Rename {{{1
function Rename(newname)
  " automatically save based on autowrite
  if &autowrite
    write
  endif

  call system('mv ' . expand('%') . ' ' . a:newname)
  bdelete
  execute 'edit ' . a:newname
endfunction
command! -nargs=1 Rename call Rename(expand('<args>'))
" }}}
" ChmodX {{{1
command! ChmodX call system('!chmod +x ' . expand('%')) | edit
" }}}
" Mkdir {{{1
command! -nargs=1 Mkdir !mkdir <args>
" }}}
" Load multiple buffers {{{1
function Badd(filelist) abort
  for file in a:filelist
    execute 'badd ' . file
  endfor
  echo "Loaded " . len(a:filelist) . " buffers"
endfunction
command! -nargs=1 -complete=file Open call Open(split(expand('<args>')))
" }}}
" Compile current single C/C++ file {{{1
function Gcc() abort
  " TODO errorformat to output the function correctly
  let cmd = 'gcc ' . expand('%') . ' -o ' . expand('%:r') . ' -Wall -Wextra -pedantic -Wmismatched-dealloc'
  let el = systemlist(cmd)
  call setqflist(getqflist({'lines': el})['items'])
endfunction
command! Gcc call Gcc()

function Gpp() abort
  " TODO errorformat to output the function correctly
  let cmd = 'g++ ' . expand('%') . ' -o ' . expand('%:r') . ' -Wall -Wextra -pedantic'
  let el = systemlist(cmd)
  call setqflist(getqflist({'lines': el})['items'])
endfunction
command! Gpp !g++ % -o %:r -Wall -Wextra -pedantic
" }}}
" Run Python script {{{1
command! Py !python3 %
" }}}

" vim: set ft=vim sw=2 fdm=marker:
