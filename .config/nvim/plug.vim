" automatically installs vim-plug if not installed yet, and read configuration
" to automatically install every plugin on next enter.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" list all plugins to install
call plug#begin()
Plug 'junegunn/vim-plug'
Plug 'tpope/vim-sensible'
Plug 'SirVer/ultisnips'
Plug 'arzg/vim-substrata'

if has('nvim')
  Plug 'ishan9299/nvim-solarized-lua'
  Plug 'mhinz/vim-startify'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'akinsho/bufferline.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  " treesitter modules
  Plug 'nvim-treesitter/nvim-treesitter-refactor'
  Plug 'windwp/nvim-ts-autotag'
endif
call plug#end()

" vim:set ft=vim sw=2:
