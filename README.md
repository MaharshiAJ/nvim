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