" automatically installs vim-plug if not installed yet, and read configuration
" to automatically install every plugin on next enter.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silend execute '!curl -fLo '.data_dir.'/autoloca/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" list all plugins to install
call plug#begin()
Plug 'junegunn/vim-plug'
Plug 'tpope/vim-sensible'
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-startify'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()
