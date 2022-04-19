let g:mapleader = ','
runtime! plug.vim
runtime! cmds.vim " some commands I defined

" fix some colorscheme issues
function! MyHighlights() abort
  hi Normal guibg=NONE guifg=#000000
  hi NonText guibg=NONE
endfunction
augroup FixColorscheme
  au!
  au ColorScheme gruvbox call MyHighlights()
augroup END

" file types
let g:do_filetype_lua = 1 " use filetype.lua (faster)
let g:did_load_filetypes = 0 " don't use filetype.vim (slow)
augroup FileTypes
  au!
  au BufNewFile,BufRead *.fish set filetype=fish
augroup END

" skeletons
augroup Skeletons
  au!
  au BufNewFile *.vim r ~/.config/nvim/skeletons/skel.vim | norm gg
augroup END

augroup FTOptions
  au!
  au BufRead *.md,*.txt set tw=79
augroup END

" add matchit plugin
packadd! matchit

" options
set autoindent
set autowrite
set clipboard=unnamedplus
set colorcolumn=80
set fileencoding=utf-8
set hlsearch ignorecase smartcase
set nowrap
set number relativenumber
set scrolloff=5
set shell=zsh
set showcmd
set showmatch
set wildmenu

" colors
syntax enable
set termguicolors background=light
colo gruvbox
set guicursor=a:blinkon100,i:ver20
" vim:set ft=vim sw=2:
