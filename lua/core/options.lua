local options = {
  opt = {
    breakindent = true,
    clipboard = "unnamedplus",
    cmdheight = 0,
    completeopt = { "menu", "menuone", "noselect" },
    copyindent = true,
    expandtab = true,
    fileencoding = "utf-8",
    ignorecase = true,
    infercase = true,
    laststatus = 3,
    mouse = "a",
    number = true,
    preserveindent = true,
    relativenumber = true,
    shiftwidth = 2,
    showtabline = 2,
    signcolumn = "yes",
    smartcase = true,
    smartindent = true,
    swapfile = false,
    tabstop = 2,
    termguicolors = true,
    undofile = true,
    wrap = false,
    writebackup = false,
    -- Below options for windows if you want to use powershell as integrated terminal
    -- shell = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell",
    -- shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
    -- shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
    -- shellpipe = "2>&1 | Out-File -Encoding UTF8 %s, exit $LastExitCode",
    -- shellquote = "",
    -- shellxquote = "",
  },
  g = {
    mapleader = " ",
    maplocalleader = " ",
    loaded_netrw = 1,
    loaded_netrwPlugin = 1,
  },
  t = vim.t.bufs and vim.t.bufs or { bufs = vim.api.nvim_list_bufs() },
}

for scope, table in pairs(options) do
  for setting, value in pairs(table) do
    vim[scope][setting] = value
  end
end
