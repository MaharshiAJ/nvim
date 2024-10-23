local mappings = {
  n = {
    -- General
    ["<Leader>w"] = { "<cmd>w!<cr>", "Save File" },
    ["<Leader>q"] = { "<cmd>confirm q<cr>", "Quit" },
    -- NvimTree
    ["<Leader>f"] = {
      function()
        local currentBuf = vim.api.nvim_get_option_value("filetype", { buf = vim.api.nvim_get_current_buf() })
        if currentBuf == "NvimTree" then
          require("nvim-tree.api").tree.toggle()
        else
          require("nvim-tree.api").tree.focus()
        end
      end,
      "Nvim Tree"
    },
    -- Lazy
    ["<Leader>p"] = { "", "+Lazy" },
    ["<Leader>pi"] = { function() require("lazy").install() end, "Install Plugins" },
    ["<Leader>ph"] = { function() require("lazy").home() end, "Home Page" },
    ["<Leader>ps"] = { function() require("lazy").sync() end, "Sync Plugins" },
    ["<Leader>pc"] = { function() require("lazy").check() end, "Check For Updates" },
    ["<Leader>pu"] = { function() require("lazy").update() end, "Update Plugins" },
    -- Telescope
    ["<Leader>t"] = { "", "+Telescope" },
    ["<Leader>tf"] = { function() require("telescope.builtin").fd() end, "Find Files" },
    ["<Leader>tc"] = { function() require("telescope.builtin").current_buffer_fuzzy_find() end, "Find Files in Current Buffer" },
    ["<Leader>tg"] = { function() require("telescope.builtin").git_files() end, "Find Files Tracked by Git" },
    ["<Leader>tm"] = { function() require("telescope.builtin").git_commits() end, "List Commits for Current Directory" },
    ["<Leader>tr"] = { function() require("telescope.builtin").oldfiles() end, "Open Recent Files" },
    -- BufDelete
    ["<Leader>k"] = { function() require("bufdelete").bufdelete(0, true) end, "Delete Current Buffer" },
    -- Toggleterm
    ["<A-t>"] = { function() require("toggleterm").toggle() end, "Toggle Integrated Terminal" },
    -- Barbar
    ["<Leader>b"] = { "", "+Barbar" },
    ["<A-,>"] = { function() require("barbar.api").goto_buffer_relative(-1) end, "Go to Previous Tab" },
    ["<A-.>"] = { function() require("barbar.api").goto_buffer_relative(1) end, "Go to Next Tab" },
    ["<Leader>bc"] = { function() require("barbar.api").close_all_but_current() end, "Close All Tabs Except Current" },
    ["<Leader>br"] = { function() require("barbar.api").restore_buffer() end, "Restore Tab" },
    ["<Leader>bg"] = { function(ind) require("barbar.api").goto_buffer(ind) end, "Go To Tab (ind)" },
    -- Gitsigns
    ["<Leader>g"] = { "", "+Gitsigns" },
    ["<Leader>gt"] = { function() require("gitsigns").toggle_signs() end, "Toggle Gitsigns" },
    ["<Leader>gd"] = { function() require("gitsigns").toggle_deleted() end, "Toggle Deleted" },
    ["<Leader>gf"] = { function() require("gitsigns").diffthis() end, "Git Diff" },
  },
  t = {
    ["<A-t>"] = { function() require("toggleterm").toggle() end, "Toggle Integrated Terminal" },
  }
}

for mode, tbl in pairs(mappings) do
  for key, mapping in pairs(tbl) do
    vim.keymap.set(mode, key, mapping[1], { desc = mapping[2] })
  end
end
