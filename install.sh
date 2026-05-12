#!/usr/bin/env bash
# Install dependencies and symlink configs into ~/.
# Run from the repo root: ./install.sh
set -euo pipefail

# Bail if not on macOS
[[ "$(uname)" == "Darwin" ]] || { echo "macOS only"; exit 1; }

# Require Homebrew
command -v brew >/dev/null || { echo "Install Homebrew first: https://brew.sh"; exit 1; }

echo "==> Installing brew packages"
brew install --quiet \
  git gh neovim stow ghostty python ruff tree-sitter-cli

echo "==> Stowing configs"
cd "$(dirname "$0")"
stow nvim vim ghostty

echo "==> Done. Reminders:"
echo "  - First nvim launch will install plugins via vim.pack (~30s)."
echo "  - Ensure Xcode CLT is installed for Swift LSP: xcode-select --install"

