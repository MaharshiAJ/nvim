# Installation

## Windows (Powershell)

### Make a backup of your current nvim directory
```pwsh
Rename-Item -Path $env:LOCALAPPDATA\nvim -NewName $env:LOCALAPPDATA\nvim.bak
Rename-Item -Path $env:LOCALAPPDATA\nvim-data -NewName $env:LOCALAPPDATA\nvim-data.bak
```

### Clone this repository
```pwsh
git clone --depth 1 https://github.com/MaharshiAJ/nvim $env:LOCALAPPDATA\nvim
```

## Linux/MacOS

### Make a backup of your current nvim directory

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

### Clone this Repository

```shell
git clone --depth 1 https://github.com/MaharshiAJ/nvim ~/.config/nvim
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
[Cmp](https://github.com/hrsh7th/nvim-cmp) 