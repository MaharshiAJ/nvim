for _, source in ipairs({
  "core.options",
  "core.lazy",
  "core.mappings"
}) do
  local ok, fault = pcall(require, source)
  if not ok then
    vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault)
  end
end
