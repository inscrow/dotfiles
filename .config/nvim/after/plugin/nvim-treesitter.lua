require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "cpp", "python", "fish", "java", "javascript", "html", "make", "lua", "vim", "typescript", "tsx", "css" },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	incremental_selection = {
		enalbe = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
	indent = {
		enable = true
	}
}
