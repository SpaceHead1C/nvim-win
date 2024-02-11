# My Neovim configs for Windows

Inspired by [Neovim for Newbs](https://www.youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn) course, [How to install and set up Neovim on Windows](https://blog.nikfp.com/how-to-install-and-set-up-neovim-on-windows) blog post and [How to Set up Neovim for Windows and Linux with Lua and Packer](https://dev.to/slydragonn/how-to-set-up-neovim-for-windows-and-linux-with-lua-and-packer-2391) blog post.

## Prepare your Windows

Install `Chocolatey` ([original instruction](https://chocolatey.org/install)). Ensure that you are using an administrative shell.

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

Add directory with apps installed via choco to your `PATH` env var. Defaul: `C:\ProgramData\chocolatey\bin`.

*OPTIONAL.* Install another shell if you want to try it:

```powershell
choco install powershell-core
```

Install `git` from [installer](https://git-scm.com/download/win) or command:

```powershell
choco install git
```

Get [Nerd Font](https://www.nerdfonts.com/font-downloads) for properly display glyphs. Configure your terminal to use the new font. I chose `Cascadia Mono` for [Terminal](https://www.microsoft.com/store/productId/9N0DX20HK701?ocid=pdpshare) and `Hack Nerd Font Mono` for `Windows PowerShell`.

Install `Neovim`. Use [instruction](https://github.com/neovim/neovim/blob/master/INSTALL.md) or command:

```powershell
choco install neovim --pre
```

Install GCC ([TDM](https://jmeubank.github.io/tdm-gcc/download/), [MinGW](https://www.mingw-w64.org/), [Cygwin](https://sourceware.org/cygwin/)) or [Zig](https://ziglang.org/learn/getting-started/). This is required for some Neovim plugins.

And install some usefull utils for Neovim plugins:

```powershell
choco install fd

choco install ripgrep
```

Create directory:

```powershell
mkdir $Env:LocalAppData\nvim
```

## Try this configs

Clone this repo:

```powershell
git clone https://github.com/SpaceHead1C/nvim-win.git $Env:LocalAppData\nvim\
```

Run your Neovim:

```powershell
nvim
```

Enjoy!

## Used plugins

- [Catppuccin](https://github.com/catppuccin/nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [mason](https://github.com/williamboman/mason.nvim)
- [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
