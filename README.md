# My Neovim configs for Windows

Inspired by:
- [Neovim for Newbs](https://www.youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn) course;
- [Setup Neovim in 2024: The Ultimate Guide](https://www.youtube.com/watch?v=6pAG3BHurdM) video guide and [post](https://www.josean.com/posts/how-to-setup-neovim-2024);
- [How to install and set up Neovim on Windows](https://blog.nikfp.com/how-to-install-and-set-up-neovim-on-windows) blog post;
- [How to Set up Neovim for Windows and Linux with Lua and Packer](https://dev.to/slydragonn/how-to-set-up-neovim-for-windows-and-linux-with-lua-and-packer-2391) blog post.

## Prepare your Windows

Install `Chocolatey` ([original instruction](https://chocolatey.org/install)). Ensure that you are using an administrative shell.

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

Ensure that directory with apps installed via choco in your `PATH` env var exists: `C:\ProgramData\chocolatey\bin`.

Install `git` from [installer](https://git-scm.com/download/win) or command:

```powershell
choco install git
```

Get [Nerd Font](https://www.nerdfonts.com/font-downloads) for properly display glyphs. Configure your terminal to use the new font. I chose `Cascadia Mono` for [Terminal](https://www.microsoft.com/store/productId/9N0DX20HK701?ocid=pdpshare) and `Hack Nerd Font Mono` for `Windows PowerShell`.

*OPTIONAL.* Install another shell if you want to try it:

```powershell
choco install powershell-core
```

Install `Neovim`. Use [instruction](https://github.com/neovim/neovim/blob/master/INSTALL.md) or command:

```powershell
choco install neovim --pre
```

Install `GCC` ([TDM](https://jmeubank.github.io/tdm-gcc/download/), [MinGW](https://www.mingw-w64.org/), [Cygwin](https://sourceware.org/cygwin/)) or [Zig](https://ziglang.org/learn/getting-started/). This is required for some Neovim plugins.

Install [npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm#using-a-node-version-manager-to-install-nodejs-and-npm). This is also required for some Neovim plugins.

And install some usefull utils for Neovim plugins:

```powershell
choco install fd

choco install ripgrep

choco install lazygit
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

Run your Neovim and wait until Lazy do its job:

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
- [lspconfig](https://github.com/neovim/nvim-lspconfig)
- [alpha](https://github.com/goolord/alpha-nvim)
- [web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [cmp](https://github.com/hrsh7th/nvim-cmp)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [dap](https://github.com/mfussenegger/nvim-dap)
- [which-key](https://github.com/folke/which-key.nvim)
- [auto-session](https://github.com/rmagatti/auto-session)
- [autopairs](https://github.com/windwp/nvim-autopairs)
- [todo-comments](https://github.com/folke/todo-comments.nvim)
- [trouble](https://github.com/folke/trouble.nvim)
- [surround](https://github.com/kylechui/nvim-surround)
- [maximizer](https://github.com/szw/vim-maximizer)
- [lazygit](https://github.com/kdheepak/lazygit.nvim)
- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
