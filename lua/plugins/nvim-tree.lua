return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    hijack_cursor = true,
    select_prompts = true,
    renderer = {
      group_empty = true,
      highlight_git = true,
      highlight_opened_files = "icon",
    },
    actions = {
      open_file = {
        quit_on_open = true,
      },
    },
  },
}