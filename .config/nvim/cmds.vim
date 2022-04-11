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
" Load multiple buffers {{{1
function Badd(filelist) abort
  for file in a:filelist
    execute 'badd ' . file
  endfor
  echo "Loaded " . len(a:filelist) . " buffers"
endfunction
command! -nargs=1 -complete=file Open call Open(split(expand('<args>')))
" }}}

" vim: set ft=vim sw=2 fdm=marker:
