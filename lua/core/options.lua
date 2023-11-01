local options = {
	opt = {
		breakindent = true, -- Wrapped line matches indent
		clipboard = "unnamedplus", -- Connects to system clipboard
		cmdheight = 0, -- Don't show command line unless in use
		completeopt = { "menu", "menuone", "noselect" }, -- Insert mode completion
		copyindent = true, -- Copy indent of previous line
		expandtab = true, -- Use spaces when a tab is inserted
		fileencoding = "utf-8", -- Use Utf-8 file encoding
		ignorecase = true, -- Ignore case in search patterns
		infercase = true, -- Infers the case in keyword completion
		laststatus = 3, -- Tells when last window has status line
		mouse = "a", -- Enable mouse support
		number = true, -- Show line numbers
		preserveindent = true, -- Preserve indent structure when reindenting
		relativenumber = true, -- Show relative line numbers
		shiftwidth = 2, -- Number of spaces inserted for indentation
		showtabline = 2, -- Always show tab line
		signcolumn = "yes", -- Always show sign column
		smartcase = true, -- Override ignore case if the search pattern has upper case characters
		smartindent = true, -- Add indent when starting a new line
		swapfile = false, -- Disable using swapfiles
		tabstop = 2, -- Number of spaces that the tab key inserts
		termguicolors = true, -- Enable colors for the terminal
		undofile = true, -- Save undo history in a file
		wrap = false, -- Do not wrap lines
		writebackup = false, -- Disable making backup before overwriting a file
		-- shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
		-- shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
		-- shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
		-- shellpipe = "2>&1 | Out-File -Encoding UTF8 %s, exit $LastExitCode",
		-- shellquote = "",
		-- shellxquote = "",
	},
	g = {
		mapleader = " ", -- Set spacebar as leader key
		maplocalleader = " ", -- Set default local leader key
		-- Disable Netrw for Nvim tree
		loaded_netrw = 1,
		loaded_netrwPlugin = 1,
	},
	t = vim.t.bufs and vim.t.bufs or { bufs = vim.api.nvim_list_bufs() }, -- Initialize buffers for current tab
}

for scope, table in pairs(options) do
	for setting, value in pairs(table) do
		vim[scope][setting] = value
	end
end
