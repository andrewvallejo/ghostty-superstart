# Ghostty Superstart

A simple Homebrew-based setup to instantly configure your macOS development environment with Ghostty, Zsh, Oh My Zsh, Powerlevel10k, and VS Code.

## Requirements

- macOS with Homebrew installed

## Quick Start

```bash
git clone https://github.com/andrewvallejo/ghostty-superstart.git
cd ghostty-superstart
brew bundle && chmod +x install.sh && ./install.sh
```

### Optional Flags

You can skip specific parts of the setup if you’ve already configured them:

```bash
./install.sh --skip-zsh       # Skip installing .zshrc
./install.sh --skip-ghostty   # Skip modifying Ghostty config
./install.sh --skip-vscode    # Skip updating VS Code settings
```

You can skip specific parts of the setup if you’ve already configured them:

```bash
./install.sh --skip-zsh --skip-vscode
```

## Config Locations

| Tool    | Path                                                         | Notes                                                                                                 |
| ------- | ------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------- |
| Ghostty | `~/Library/Application Support/com.mitchellh.ghostty/config` | Sets up font, cursor style, and other terminal appearance options.                                    |
| Zsh     | `~/.zshrc`                                                   | Adds Oh My Zsh, Powerlevel10k, aliases, and plugin setup for autosuggestions and syntax highlighting. |
| VS Code | `~/Library/Application Support/Code/User/settings.json`      | Appends terminal theme, font, and color customizations to match Ghostty.                              |

> Navigate to configs in Terminal via `open <path>`. VS Code must be accessed directly through the Command Palette (⌘ + ⇧ + P → “Open Settings (JSON)”).

## Packages Installed

| Package                     | Type     | Description                                                     | Link                                                                                                 |
| --------------------------- | -------- | --------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| **zsh**                     | Shell    | Modern Unix shell with advanced scripting features.             | [zsh.org](https://www.zsh.org)                                                                       |
| **zsh-autosuggestions**     | Plugin   | Suggests commands as you type based on history and completions. | [github.com/zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)         |
| **zsh-syntax-highlighting** | Plugin   | Adds syntax highlighting to commands while typing in Zsh.       | [github.com/zsh-users/zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) |
| **ghostty**                 | Terminal | Fast, GPU-accelerated terminal emulator for macOS.              | [ghostty.org](https://ghostty.org)                                                                   |
| **font-fira-code**          | Font     | Monospaced font with programming ligatures.                     | [github.com/tonsky/FiraCode](https://github.com/tonsky/FiraCode)                                     |
| **font-meslo-lg-nerd-font** | Font     | Powerlevel10k-compatible Nerd Font (used by default in themes). | [nerdfonts.com](https://www.nerdfonts.com)                                                           |
