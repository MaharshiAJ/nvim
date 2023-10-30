local utils = require "core.utils"

local M = {}

M.mappings = {}

M.mappings =  {
    n = {
        -- General
        ["<Leader>w"] = { "<cmd>w!<cr>", "Save File" },
        ["<Leader>q"] = { "<cmd>confirm q<cr>", "Close File" },
        ["<Leader>k"] = { "<cmd>bd<cr>", "Close Current Buffer" },
        -- Lazy
        ["<Leader>p"] = {
            name = "+Plugin Manager",
            i = { function() require("lazy").install() end, "Install Plugins" },
            h = { function() require("lazy").home() end, "Lazy Home Page" },
            s = { function() require("lazy").sync() end, "Sync Plugins" },
            c = { function() require("lazy").check() end, "Check Plugins Updates" },
            u = { function() require("lazy").update() end, "Update Plugins" }
        },
        -- Telescope
        ["<Leader>j"] = {
            name = "+File",
            f = { function() require("telescope.builtin").fd() end, "Find Files" },
            c = { function() require("telescope.builtin").current_buffer_fuzzy_find() end, "Find Files in Current Buffer" },
            g = { function() require("telescope.builtin").git_files() end, "Find Files Tracked by Git" },
            m = { function() require("telescope.builtin").git_commits() end, "List Commits for Current Directory" },
            r = { function() require("telescope.builtin").oldfiles() end, "Open Recent Files" },
        },
        -- Nvim Tree
        ["<Leader>f"] = {
            name = "+File Explorer",
            t = { function() require("nvim-tree.api").tree.toggle() end, "Toggle File Explorer" },
            f = { function() require("nvim-tree.api").tree.focus() end, "Focus on File Explorer" },
        },
        -- Barbar
        ["<Leader>,"] = { function() require("barbar.api").goto_buffer_relative(-1) end, "Go To Previous Buffer" },
        ["<Leader>."] = { function() require("barbar.api").goto_buffer_relative(1) end, "Go To Next Buffer" },
        ["<Leader>b"] = {
            name = "+Buffers",
            c = { function() require("barbar.api").close_all_but_current() end, "Close All Buffers Except Current" },
            r = { function() require("barbar.api").restore_buffer() end, "Restore Buffer" },
            g = { function(ind) require("barbar.api").goto_buffer(ind) end, "Go To Buffer" },
            p = { function(buffer_num) require("barbar.api").toggle_pin(buffer_num) end, "Toggle Pin On Buffer" },
        },
        -- Bufdelete
        ["<Leader>k"] = { function() require("bufdelete").bufdelete(0, true) end, "Delete Current Buffer" },
        -- Toggleterm
        ["<Leader>t"] = { function() require("toggleterm").toggle() end, "Toggle Terminal" },
    },
    t = {
        ["<Leader>t"] = { function() require("toggleterm").toggle() end, "Toggle Terminal" },
    }
}

return M