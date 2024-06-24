-- init lazy.vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- plugins
require("lazy").setup({
	-- ColorScheme
	'morhetz/gruvbox',
	'altercation/vim-colors-solarized',
	'mhartington/oceanic-next',

	-- Tpope
	'tpope/vim-surround',
	'tpope/vim-commentary',
	'tpope/vim-unimpaired',

	-- Autosave
	'907th/vim-auto-save',

	-- Git
	'tpope/vim-fugitive',

	-- Lualine 
	'nvim-lualine/lualine.nvim',

	-- Neo-tree
	{
		'nvim-neo-tree/neo-tree.nvim',
		branch = 'v3.x',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-tree/nvim-web-devicons',
			'MunifTanjim/nui.nvim',
		},
	},

	-- Telescope
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
		dependencies = {
			'nvim-lua/plenary.nvim'
		}
	},

	-- Fine CMDline
	{ 'VonHeikemen/fine-cmdline.nvim',
		requires = {
			{'MunifTanjim/nui.nvim'}
		}
	},

	-- Window-picker
	's1n7ax/nvim-window-picker',

	-- DevIcons
	'ryanoasis/vim-devicons',

	-- TreeSitter
	{
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	},

	-- LSP
	'neovim/nvim-lspconfig',
	'williamboman/mason.nvim',
	"williamboman/mason-lspconfig.nvim",

	-- CMP
	'neovim/nvim-lspconfig',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/nvim-cmp',
	'L3MON4D3/LuaSnip',
	'saadparwaiz1/cmp_luasnip',

	-- Cmake
	'cdelledonne/vim-cmake',

	-- Vimp
	'svermeulen/vimpeccable'
})

require('plugs.setting.neotree_')
require('plugs.setting.fine-cmdline_')
require('plugs.setting.window-picker_')
require('plugs.setting.treesitter_')
require('plugs.setting.mason_')
require('plugs.setting.lualine_')
require('plugs.setting.lsp_')
