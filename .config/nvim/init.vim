let g:mapleader = ','
runtime! plug.vim
runtime! cmds.vim " some commands I defined

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
set shell=fish
set showcmd
set showmatch
set wildmenu

" colors
syntax enable
set termguicolors
colo gruvbox
set guicursor=a:blinkon100,i:ver20

" transparency
augroup Transparent
  au!
  au ColorScheme * hi! Normal ctermbg=NONE guibg=NONE guifg=#000000
  au ColorScheme * hi! NonText ctermbg=NONE guibg=NONE
augroup END

" file types
augroup FileTypes
  au!
  au BufNewFile,BufRead *.fish set filetype=fish
augroup END

" skeletons
augroup Skeletons
  au!
  au BufNewFile *.vim r ~/.config/nvim/skeletons/skel.vim | norm gg
augroup END

" vim:set ft=vim sw=2:
