local M = {}

function M.register_mappings(mapping_table)
	local ok, wk = pcall(require, "which-key")

	if not ok then
		return
	end

	for mode, mapping in pairs(mapping_table) do
		wk.register(mapping, { mode = mode })
	end
end

function M.focus_or_toggle()
	local ok, nvim_tree = require("nvim-tree")
	if not ok then
		return
	end

	local currentBuf = vim.api.nvim_get_current_buf()
	local currentBufFt = vim.api.nvim_get_option_value("filetype", { buf = currentBuf })
	if currentBufFt == "NvimTree" then
		nvim_tree.api.tree.toggle()
	else
		nvim_tree.api.tree.focus()
	end
end

function M.configure_conda()
	local conda_prefix = os.getenv("CONDA_PREFIX")
	if not (conda_prefix == nil or conda_prefix == "") then
		vim.g.python_host_prog = conda_prefix .. "/bin/python"
		vim.g.python3_host_prog = conda_prefix .. "/bin/python"
	else
		vim.g.python_host_prog = "python"
		vim.g.python3_host_prog = "python3"
	end
end

return M
