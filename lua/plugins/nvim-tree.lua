return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    hijack_cursor = true,
    select_prompts = true,
    renderer = {
      group_empty = true,
      highlight_git = true,
      highlight_opened_files = "icon",
    },
    actions = {
      open_file = {
        quit_on_open = true,
      },
    },
  },
  -- config = function()
  -- 	local on_attach = function(bufnr)
  -- 		local api = require("nvim-tree.api")
  --
  -- 		local function opts(desc)
  -- 			return { desc = desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  -- 		end
  --
  -- 		api.config.mappings.default_on_attach(bufnr)
  --
  -- 		vim.keymap.set("n", "<Leader>fn", api.fs.create, opts("Create a File"))
  -- 		vim.keymap.set("n", "<Leader>fc", api.tree.change_root_to_node, opts("CD into Directory"))
  -- 		vim.keymap.set("n", "<Leader>fp", api.tree.change_root_to_parent, opts("CD into Parent Directory"))
  -- 		vim.keymap.set("n", "<Leader>fd", api.fs.remove, opts("Delete File"))
  -- 		vim.keymap.set("n", "<Leader>fg", api.fs.copy.node, opts("Copy File"))
  -- 		vim.keymap.set("n", "<Leader>fh", api.fs.paste, opts("Paste File"))
  -- 		vim.keymap.set("n", "<Leader>fr", api.fs.rename, opts("Rename File"))
  -- 	end
  --
  -- 	require("nvim-tree").setup({
  -- 		hijack_cursor = true,
  -- 		select_prompts = true,
  -- 		renderer = {
  -- 			group_empty = true,
  -- 			highlight_git = true,
  -- 			highlight_opened_files = "icon",
  -- 		},
  -- 		on_attach = on_attach,
  -- 		actions = {
  -- 			open_file = {
  -- 				quit_on_open = true,
  -- 			},
  -- 		},
  -- 	})
  -- end,
}
