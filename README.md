# Installation

## Windows (Powershell)

### Make a backup of your current nvim directory
```pwsh
Rename-Item -Path $env:LOCALAPPDATA\nvim -NewName $env:LOCALAPPDATA\nvim.bak
Rename-Item -Path $env:LOCALAPPDATA\nvim-data -NewName $env:LOCALAPPDATA\nvim-data.bak
```

### Clone this repository
```pwsh
git clone https://github.com/MaharshiAJ/nvim $env:LOCALAPPDATA\nvim
```

## Linux/MacOS

### Make a backup of your current nvim directory

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

### Clone this Repository

```shell
git clone https://github.com/MaharshiAJ/nvim ~/.config/nvim
```

# Plugins Used
[Lazy Package Manager](https://github.com/folke/lazy.nvim) \
[Tokyo Night Colorscheme](https://github.com/folke/tokyonight.nvim) \
[Which Key](https://github.com/folke/which-key.nvim) \
[Dressing](https://github.com/stevearc/dressing.nvim) \
[Telescope](https://github.com/nvim-telescope/telescope.nvim) \
[Nvim Tree](https://github.com/nvim-tree/nvim-tree.lua) \
[Barbar](https://github.com/romgrk/barbar.nvim) \
[Bufdelete](https://github.com/famiu/bufdelete.nvim) \
[Toggleterm](https://github.com/akinsho/toggleterm.nvim) \
[Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) \
[Cmp](https://github.com/hrsh7th/nvim-cmp) \
[Autopairs](https://github.com/windwp/nvim-autopairs)
[Mason](https://github.com/williamboman/mason.nvim) \
[Mason LspConfig](https://github.com/williamboman/mason-lspconfig.nvim) \
[Lspconfig](https://github.com/neovim/nvim-lspconfig) \
[Lualine](https://github.com/nvim-lualine/lualine.nvim) \
[Better Escape](https://github.com/max397574/better-escape.nvim) \
[Gitsigns](https://github.com/lewis6991/gitsigns.nvim) \
[Noice]("https://github.com/folke/noice.nvim") \
[Conform]("https://github.com/stevearc/conform.nvim") \
