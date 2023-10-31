return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	build = ":TSUpdate",
	cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
	opts = {
		highlight = { enable = true },
		indent = { enable = true },
		ensure_installed = {
			"c",
			"cpp",
			"css",
			"html",
			"htmldjango",
			"javascript",
			"lua",
			"python",
			"rust",
			"vim",
			"vimdoc",
			"query",
			"yaml",
		},
		autotag = {
			enable = true,
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
