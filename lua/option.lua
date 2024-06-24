vim.wo.relativenumber = true

vim.cmd([[ 
	set relativenumber

	" Russian language
	set spelllang=en,ru
	set keymap=russian-jcukenwin
	set iminsert=0
	set imsearch=0
	set encoding=UTF-8

	" Tabs
	set tabstop=2
	set softtabstop=2
	set shiftwidth=2
	set noexpandtab

	" Color
	colorscheme OceanicNext
	syntax enable
	set background=dark
	set t_Co=256

	if (has('termguicolors'))
		set termguicolors
	endif

	" Swap
	set noswapfile

	" Scroll
	set scrolloff=7
	set sidescrolloff=5

	" Auto complete in EX
	set wildmenu
	set wildmode=longest:full,full

	" Mouse
	set mousehide
	set mouse=a

	" Hide whitespace
	set nolist

  " Autosave
	 let g:auto_save=1
	 let g:auto_save_silent=0
]])
