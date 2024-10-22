return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")

      mason.setup()

      mason_lspconfig.setup({
        ensure_installed = {
          "clangd",
          "cmake",
          "lua_ls",
          "pyright",
          "black",
          "isort",
          "clag-format",
          "cmake_format",
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
