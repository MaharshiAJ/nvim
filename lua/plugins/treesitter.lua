return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      "c",
      "cmake",
      "cpp",
      "lua",
      "python",
      "vim",
      "vimdoc",
      "query",
      "markdown",
      "markdown_inline",
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
