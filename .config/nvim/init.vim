let g:mapleader = ','
runtime plug.vim

" options
set autoindent
set autowrite
set backspace=indent,eol,start
set clipboard=unnamed
set colorcolumn=80
set encoding=utf-8 fileencoding=utf-8
set hlsearch ignorecase incsearch smartcase
set nowrap
set number relativenumber
set ruler
set scrolloff=5
set showcmd
set showmatch
set wildmenu

" colors
syntax enable
set termguicolors
colo gruvbox

" transparency
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
