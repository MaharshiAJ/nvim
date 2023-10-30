return {
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
            "simrat39/rust-tools.nvim",
        },
        config = function()
            local mason = require("mason")
            local mason_lspconfig = require("mason-lspconfig")

            mason.setup()

            mason_lspconfig.setup({
                ensure_installed = {
                    "clangd",
                    "cssls",
                    "html",
                    "lua_ls",
                    "pyright",
                    "rust_analyzer",
                    "tsserver",
                    "yamlls",
                },
                automatic_installation = true,
            })

            mason_lspconfig.setup_handlers {
                function (server_name)
                    require("lspconfig")[server_name].setup {}
                end,
                ["rust_analyzer"] = function()
                    require("rust-tools").setup {}
                end,
                ["lua_ls"] = function()
                    require("lspconfig").lua_ls.setup {
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim" }
                                }
                            }
                        }
                    }
                end,
            }
        end
    }
}