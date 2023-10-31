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
    },
    {
        "nvimtools/none-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = { "jay-babu/mason-null-ls.nvim" },
        config = function()
            local mason_null_ls = require("mason-null-ls")
            local null_ls = require("null-ls")

            mason_null_ls.setup({
                ensure_installed = {
                    "black",
                    "clang-format",
                    "djlint",
                    "prettier",
                    "pylint",
                    "stylua",
                }
            })

            local formatting = null_ls.builtins.formatting
            local diagnostics = null_ls.builtins.diagnostics

            local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

            null_ls.setup({
                sources = {
                    formatting.black,
                    formatting.clang_format,
                    diagnostics.djlint,
                    formatting.djlint,
                    formatting.prettier,
                    diagnostics.pylint,
                    formatting.stylua,
                },
                on_attach = function(current_client, bufnr)
                    if current_client.supports_method("textDocument/formatting") then
                        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                        vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({
                            filter = function(client)
                                --  only use null-ls for formatting instead of lsp server
                                return client.name == "null-ls"
                            end,
                            bufnr = bufnr,
                            })
                        end,
                        })
                    end
                end,
            })
        end,
    }
}
