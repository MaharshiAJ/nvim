local M = {}

function M.register_mappings(mapping_table)
  local ok, wk = pcall(require, "which-key")

  if not ok then
    return
  end

  for mode, mapping in pairs(mapping_table) do
    wk.add({ mapping, mode = mode })
  end
end

return M

