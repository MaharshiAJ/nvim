return {
	n = {
		-- General
		{ "<Leader>w", "<cmd>w!<cr>", desc = "Save File" },
		{ "<Leader>q", "<cmd>confirm q<cr>", desc = "Close Buffer" },
		-- Lazy
		{ "<Leader>p", group = "+Plugin Manager" },
		{
			"<Leader>pi",
			function()
				require("lazy").install()
			end,
			desc = "Install Plugins",
		},
		{
			"<Leader>ph",
			function()
				require("lazy").home()
			end,
			desc = "Home Page",
		},
		{
			"<Leader>ps",
			function()
				require("lazy").sync()
			end,
			desc = "Sync Plugins",
		},
		{
			"<Leader>pc",
			function()
				require("lazy").check()
			end,
			desc = "Check Updates",
		},
		{
			"<Leader>pu",
			function()
				require("lazy").update()
			end,
			desc = "Update Plugins",
		},
		-- Nvim Tree
		{
			"<Leader>f",
			function()
				local currentBuf = vim.api.nvim_get_option_value("filetype", { buf = vim.api.nvim_get_current_buf() })
				if currentBuf == "NvimTree" then
					require("nvim-tree.api").tree.toggle()
				else
					require("nvim-tree.api").tree.focus()
				end
			end,
			desc = "Open File Explorer",
		},
		-- Telescope
		{ "<Leader>j", group = "+File" },
		{
			"<Leader>jf",
			function()
				require("telescope.builtin").fd()
			end,
			desc = "Find Files",
		},
		{
			"<Leader>jc",
			function()
				require("telescope.builtin").current_buffer_fuzzy_find()
			end,
			desc = "Find Files in Current Buffer",
		},
		{
			"<Leader>jg",
			function()
				require("telescope.builtin").git_files()
			end,
			desc = "Find Files Tracked by Git",
		},
		{
			"<Leader>jm",
			function()
				require("telescope.builtin").git_commits()
			end,
			desc = "List Commits for Current Directory",
		},
		{
			"<Leader>jr",
			function()
				require("telescope.builtin").oldfiles()
			end,
			desc = "Open Recent Files",
		},
		-- BufDelete
		{
			"<Leader>k",
			function()
				require("bufdelete").bufdelete(0, true)
			end,
			desc = "Delete Current Buffer",
		},
		-- Toggleterm
		{
			"<A-t>",
			function()
				require("toggleterm").toggle()
			end,
			desc = "Toggle Terminal",
		},
		-- Barbar
		{
			"<A-,",
			function()
				require("barbar.api").goto_buffer_relative(-1)
			end,
			desc = "Go to Previous Tab",
		},
		{
			"<A-.",
			function()
				require("barbar.api").goto_buffer_relative(1)
			end,
			desc = "Go to Next Tab",
		},
		{
			"<Leader>b",
			group = "+Buffers",
		},
		{
			"<Leader>bc",
			function()
				require("barbar.api").close_all_but_current()
			end,
			desc = "Close All Tabs Except Current",
		},
		{
			"<Leader>br",
			function()
				require("barbar.api").restore_buffer()
			end,
			desc = "Restore Tab",
		},
		{
			"<Leader>bg",
			function(ind)
				require("barbar.api").goto_buffer(ind)
			end,
			desc = "Go To Tab",
		},
		{
			"<Leader>bp",
			function(num)
				require("barbar.api").toggle_pin(num)
			end,
			desc = "Toggle Pin on Tab",
		},
		-- Gitsigns
		{ "<Leader>g", group = "+Gitsigns" },
		{
			"<Leader>gt",
			function()
				require("gitsigns").toggle_signs()
			end,
			desc = "Toggle signs",
		},
		{
			"<Leader>gd",
			function()
				require("gitsigns").toggle_deleted()
			end,
			desc = "Toggle Deleted",
		},
		{
			"<Leader>gf",
			function()
				require("gitsigns").diffthis()
			end,
			desc = "Git Diff",
		},
	},
	t = {
		{
			"<A-t>",
			function()
				require("toggleterm").toggle()
			end,
			desc = "Toggle Terminal",
		},
	},
}
