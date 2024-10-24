return {
	{
	  "folke/tokyonight.nvim",
	  lazy = false,
	  priority = 1000,
	  config = function()
		require("tokyonight").setup({
		  style = "night",
		  on_highlights = function(hl, c)
			local prompt = "#2d3149"
			hl.TelescopeNormal = {
			  bg = c.bg_dark,
			  fg = c.fg_dark,
			}
			hl.TelescopeBorder = {
			  bg = c.bg_dark,
			  fg = c.bg_dark,
			}
			hl.TelescopePromptNormal = {
			  bg = prompt,
			}
			hl.TelescopePromptBorder = {
			  bg = prompt,
			  fg = prompt,
			}
			hl.TelescopePromptTitle = {
			  bg = prompt,
			  fg = prompt,
			}
			hl.TelescopePreviewTitle = {
			  bg = c.bg_dark,
			  fg = c.bg_dark,
			}
			hl.TelescopeResultsTitle = {
			  bg = c.bg_dark,
			  fg = c.bg_dark,
			}
		  end,
		})
  
		vim.cmd([[colorscheme tokyonight]])
	  end,
	},
	{
	  "stevearc/dressing.nvim",
	  opts = {},
	},
	{
	  "folke/noice.nvim",
	  event = "VeryLazy",
	  opts = {
		lsp = {
		  override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		  },
		},
		views = {
		  cmdline_popup = {
			border = {
			  style = "none",
			  padding = { 2, 3 },
			},
			filter_options = {},
			win_options = {
			  winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
			},
		  },
		},
	  },
	  dependencies = {
		"MunifTanjim/nui.nvim",
	  },
	},
	{
	  "nvim-lualine/lualine.nvim",
	  opts = {
		theme = "tokyonight",
	  },
	},
	{
	  "romgrk/barbar.nvim",
	  dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	  },
	  init = function()
		vim.g.barbar_auto_setup = false
	  end,
	  opts = {
		auto_hide = 1,
		sidebar_filetypes = {
		  NvimTree = true,
		},
	  },
	},
	{
	  "famiu/bufdelete.nvim",
	},
	{
	  "rcarriga/nvim-notify",
	  opts = {
		fps = 144,
	  },
	}
  }
  
  