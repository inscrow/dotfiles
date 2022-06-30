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
command! ChmodX call system('chmod +x ' . expand('%')) | edit
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
  if &autowrite
    write
  endif
  " TODO errorformat to output the function correctly
  let cmd = 'gcc ' . expand('%') . ' -o ' . expand('%:r') . ' -Wall -Wextra -pedantic -Wmismatched-dealloc'
  let el = systemlist(cmd)
  call setqflist(getqflist({'lines': el})['items'])

  " show message if there's a compilation error
  if !empty(getqflist())
    echo "Compilation failed, errors found"
  endif
endfunction
command! Gcc call Gcc()

function Gpp() abort
  if &autowrite
    write
  endif
  " TODO errorformat to output the function correctly
  let cmd = 'g++ ' . expand('%') . ' -o ' . expand('%:r') . ' -Wall -Wextra -pedantic'
  let el = systemlist(cmd)
  call setqflist(getqflist({'lines': el})['items'])

  " show message if there's a compilation error
  if !empty(getqflist())
    echo "Compilation failed, errors found"
  endif
endfunction
command! Gpp !g++ % -o %:r -Wall -Wextra -pedantic
" }}}
" Run Python script {{{1
command! Py !python3 %
" }}}
" Compile current latex file into pdf {{{1
function CompilePdf() abort
  if &ft == 'markdown'
    exe '!pandoc -s -o ' . expand('%:r') . '.pdf ' . expand('%')
  elseif &ft == 'latex'
    exe '!pdflatex ' . expand('%')
  endif
endfunction
command! Pdf call CompilePdf()
" }}}
" Switch words {{{1
function SwitchWords(words) abort
  " prepare the arguments
  let items = split(a:words)
  let w1 = items[0]
  let w2 = items[1]

  " disable wrapscan so search ends at end of file
  let b_wrapscan = &wrapscan
  let &wrapscan = 0

  " save current position in file
  let pos = winsaveview()

  " go to beginning of file
  norm gg0

  " search pattern
  let pat = w1 . '\|' . w2

  " search and replace words
  while search(pat)
    if (expand('<cword>') == w1)
      exe 'norm ciw' . w2
    elseif (expand('<cword>') == w2)
      exe 'norm ciw' . w1
    endif
  endwhile

  " reset wrapscan option
  let &wrapscan = b_wrapscan

  " reset position
  call winrestview(pos)
endfunction
" command works like ':SwitchWords word1 word2'
command! -nargs=1 SwitchWords :call SwitchWords(expand('<args>'))
" }}}

" vim: set ft=vim sw=2 fdm=marker:
