# dotfiles

Terminal-first dev setup for macOS: Neovim, Ghostty, vim safety-net. Managed with GNU stow.

## What's in here

- `nvim/` — Neovim config (forked from [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)).
  Wired LSPs: `pyright`, `ruff` (Python), `sourcekit` (Swift).
- `vim/` — Minimal `~/.vimrc` for plain vim on remote boxes.
- `ghostty/` — Ghostty terminal config (theme: Kanso Zen).

## Install

Requires Homebrew and Xcode Command Line Tools.

```sh
git clone git@github.com:andreivasilca/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

On first `nvim` launch, plugins install via vim.pack (~30s).

## Adding more languages

Edit `nvim/.config/nvim/init.lua` — find `local servers = {` and add an entry, e.g. `gopls = {}`. Mason will auto-install on next launch.

System-provided LSPs (like Swift's `sourcekit`) use `mason = false`.

## Roadmap

See [open issues](https://github.com/andreivasilca/dotfiles/issues) for planned additions: multiplexer, shell QoL, tiling WM, etc.
