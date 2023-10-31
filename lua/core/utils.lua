local M = {}

function M.register_mappings(mapping_table)
    local ok, wk = pcall(require, "which-key")

    if not ok then return end

    for mode, mapping in pairs(mapping_table) do
        wk.register(mapping, { mode = mode })
    end
end

function M.focus_or_toggle()
    local ok, nvim_tree = require("nvim-tree")
    if not ok then return end

    local currentBuf = vim.api.nvim_get_current_buf()
    local currentBufFt = vim.api.nvim_get_option_value("filetype", { buf = currentBuf })
    if currentBufFt == "NvimTree" then
        nvim_tree.api.tree.toggle()
    else
        nvim_tree.api.tree.focus()
    end
end

return M
