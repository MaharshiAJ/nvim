return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")
      local mason_tool_installer = require("mason-tool-installer")

      mason.setup()

      mason_lspconfig.setup({
        ensure_installed = {
          -- C/C++ Development
          "clangd",
          "cmake",
          -- Python Development
          "pyright",
          -- "isort",
          -- "black",
          -- Nvim Development
          "lua_ls",
        },
        automatic_installation = true,
      })

      mason_lspconfig.setup_handlers({
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
        ["lua_ls"] = function()
          require("lspconfig").lua_ls.setup({
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" },
                },
              },
            },
          })
        end,
      })

      mason_tool_installer.setup({
        ensure_installed = {
          -- C/C++ Development
          "clang-format",
          "cmakelang",
          -- Python Development
          "isort",
          "black",
          -- Nvim Development
          "stylua",
        }
      })
    end,
  },
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        cpp = { "clang-format" },
        cmake = { "cmake_format" },
      },
      default_format_opts = {
        lsp_format = "fallback",
      },
      format_on_save = { timeout_ms = 500 },
    },
  },
}
