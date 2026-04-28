# Modern Dev Setup - Complete Terminal Environment

> A modern, beautiful terminal and editor setup with transparency, animations, modern CLI tools, and everything you need for productive development.

## What's Included

### 🎨 Ghostty Terminal
- **Theme**: GitHub Dark Dimmed (with quick light/dark toggle)
- **Font**: Red Hat Mono (18pt)
- **Features**:
  - 70% opacity with 20px blur radius
  - Auto font size controls (Cmd +/-/0)
  - Split pane support (Cmd+D, Cmd+Shift+D)
  - Shell integration
  - Clipboard improvements
  - 100k line scrollback buffer

### 🐚 Zsh + Modern Shell
- **Starship prompt** - Fast, beautiful, shows git status & language versions
- **Powerlevel10k** - Alternative powerline prompt
- **Zsh plugins**:
  - autosuggestions - Suggests commands as you type
  - syntax-highlighting - Colors valid/invalid commands
- **Productivity**:
  - zoxide - Smart cd that learns your habits
  - fzf - Fuzzy finder with bat preview

### ⚡ Modern CLI Tools (Rust-based)
Replaces old Unix tools with modern, faster alternatives:
- **eza** → Better `ls` (colors, icons, git integration)
- **bat** → Better `cat` (syntax highlighting, line numbers)
- **fd** → Better `find` (faster, simpler syntax)
- **ripgrep** → Better `grep` (blazing fast search)
- **btop** → Better `top` (beautiful system monitor)
- **dust** → Better `du` (visual disk usage)
- **duf** → Better `df` (modern disk info)
- **lazygit** → Beautiful Git TUI

### 📝 Neovim (lazy.nvim)
- **34 plugins** for a complete IDE experience
- **Catppuccin Mocha** theme with transparency
- **Beautiful UI**: Dashboard, statusline, bufferline, notifications
- **Smart features**: LSP-ready, autocomplete, git integration, fuzzy finding
- **Smooth animations**: Cursor movements, scrolling, UI transitions

## Screenshots

> Add your screenshots here after installation!

## Prerequisites

### macOS
```bash
# Install Homebrew if you don't have it
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install essential tools
brew install git neovim
brew install --cask ghostty

# Modern CLI tools (optional - installer will prompt)
brew install eza bat fd ripgrep btop dust duf zoxide fzf lazygit starship

# Zsh plugins (optional - installer will prompt)
brew install zsh-autosuggestions zsh-syntax-highlighting powerlevel10k
```

### Fonts
```bash
# Install Red Hat Mono font (or use any Nerd Font)
brew tap homebrew/cask-fonts
brew install --cask font-red-hat-mono
```

> **Note**: The installer script will offer to install all modern CLI tools and Zsh plugins automatically!

## Installation

### Quick Install (Automatic)

```bash
# Clone the repo
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles

# Run the install script
cd ~/dotfiles
./install.sh
```

### Manual Install

#### 1. Backup existing configs (if any)
```bash
mv ~/.config/ghostty ~/.config/ghostty.backup
mv ~/.config/nvim ~/.config/nvim.backup
```

#### 2. Install Ghostty config
```bash
mkdir -p ~/.config/ghostty
cp ~/dotfiles/ghostty/config ~/.config/ghostty/config
```

#### 3. Install Neovim config
```bash
mkdir -p ~/.config/nvim
cp -r ~/dotfiles/nvim/* ~/.config/nvim/
```

#### 4. Launch Neovim to install plugins
```bash
nvim
```

When you first open Neovim, **lazy.nvim** will automatically install all 34 plugins. Wait for it to complete, then restart Neovim.

## Why This Setup is Great

### 🚀 **Performance**
- Modern Rust-based tools are **10-100x faster** than traditional Unix tools
- Starship prompt renders in milliseconds
- Ghostty is built for speed with GPU acceleration

### 🎨 **Visual Excellence**
- Translucent blur effect with modern aesthetics
- Consistent theming across terminal and editor
- Icon support with proper font rendering

### 💪 **Productivity**
- **Smart suggestions**: Zsh remembers and suggests commands
- **Fuzzy finding**: Find files/commands instantly with fzf
- **Git integration**: Beautiful lazygit TUI and inline git status
- **Modern syntax**: Simpler, more intuitive commands

### 🔧 **Developer Experience**
- **LSP-ready**: Full language server support in Neovim
- **Git-aware**: Everything shows git status automatically
- **Quick edits**: Aliases for editing configs (`editghost`, `editstarship`)
- **SSH helpers**: Tunneling and key management shortcuts

## Neovim Keybinds Quick Reference

### Essential
- `Space` - Leader key (wait 300ms to see all commands)
- `Space k` - Open keybinds cheatsheet
- `Space ?` - Interactive cheatsheet
- `jk` - Exit insert mode
- `Space w` - Save file

### File Navigation
- `Space ee` - Toggle file explorer
- `Space ff` - Find files (fuzzy search)
- `Space fs` - Find text in files
- `Space fr` - Recent files

### Buffers & Windows
- `Shift H` - Previous buffer
- `Shift L` - Next buffer
- `Space bd` - Close buffer
- `Space sv` - Split vertically
- `Space sh` - Split horizontally

### Git
- `]c / [c` - Next/previous git hunk
- `Space hp` - Preview hunk
- `Space hs` - Stage hunk
- `Space hb` - Git blame

### Code
- `gcc` - Toggle comment
- `Ctrl Space` - Expand selection
- `Alt j/k` - Move lines up/down
- `Space xx` - Show diagnostics

> Full keybind reference: `Space k` or see `nvim/KEYBINDS.md`

## Ghostty Keybinds

- `Cmd +` - Increase font size
- `Cmd -` - Decrease font size
- `Cmd 0` - Reset font size
- `Cmd D` - Split pane right
- `Cmd Shift D` - Split pane down
- `Cmd K` - Clear screen
- `Cmd Shift W` - Switch to dark theme (GitHub Dark Dimmed)
- `Cmd Shift L` - Switch to light theme (GitHub Light)

## Shell Aliases & Tools

### File Listing
- `ls` → `eza --icons`
- `ll` → `eza -l --icons` (long format)
- `la` → `eza -la --icons` (long + hidden)

### Modern Tool Replacements
- `cat` → `bat` (syntax highlighting)
- `find` → `fd` (faster search)
- `grep` → `rg` (ripgrep)
- `top` → `btop` (beautiful monitor)
- `du` → `dust` (visual disk usage)
- `df` → `duf` (modern disk info)

### Git Shortcuts
- `gs` - git status
- `ga` - git add
- `gc` - git commit -m
- `gp` - git push
- `lg` - lazygit (TUI)

### SSH Helpers
- `tunnel` - Local port forwarding
- `rtunnel` - Remote port forwarding
- `ssht` - Force TTY allocation
- `pubkey` - Copy SSH public key to clipboard

### Quick Navigation
- `dev` - cd ~/Development
- `docs` - cd ~/Documents
- Use `z <partial-name>` for smart directory jumping (zoxide)

### Utilities
- `preview` - FZF with bat preview
- `help` - tldr pages (better man pages)
- `editstarship` - Edit starship config
- `editghost` - Edit Ghostty config

## Customization

### Change Ghostty Theme
Edit `~/.config/ghostty/config`:
```ini
theme = GitHub Dark Dimmed  # Or: GitHub Light, Dracula, Nord, etc.
```
Or use keybinds: `Cmd+Shift+W` (dark) / `Cmd+Shift+L` (light)

### Adjust Ghostty Transparency
Edit `~/.config/ghostty/config`:
```ini
background-opacity = 0.7  # 0.0 (transparent) to 1.0 (opaque)
background-blur-radius = 20  # 0-100
```

### Customize Starship Prompt
Edit `~/.config/starship.toml` or run:
```bash
editstarship
```

### Configure Powerlevel10k
Run the configuration wizard:
```bash
p10k configure
```

### Change Neovim Theme
Edit `~/.config/nvim/lua/josean/plugins/colorscheme.lua`:
```lua
flavour = "mocha" -- Options: latte, frappe, macchiato, mocha
```

### Disable Animations
Edit `~/.config/nvim/lua/josean/plugins/mini.lua` and set `enable = false`

### Add Your Own Aliases
Edit `~/.zshrc` and add them after the existing aliases

## Plugins Included

### UI & Visual
- catppuccin - Color scheme
- alpha-nvim - Dashboard
- lualine - Statusline
- bufferline - Buffer tabs
- noice - Command line UI
- notify - Notifications
- dressing - Better UI components
- indent-blankline - Indent guides
- colorizer - Color preview

### Navigation & Search
- neo-tree - File explorer
- telescope - Fuzzy finder
- which-key - Keybind helper
- cheatsheet - Interactive help

### Editing
- nvim-cmp - Autocomplete
- LuaSnip - Snippets
- autopairs - Auto close brackets
- Comment - Smart commenting
- mini.surround - Surround text
- mini.ai - Better text objects

### Code Intelligence
- treesitter - Syntax highlighting
- gitsigns - Git integration
- trouble - Diagnostics list
- todo-comments - Highlight TODOs

### Animation & Polish
- mini.animate - Cursor animations
- neoscroll - Smooth scrolling

## Troubleshooting

### Neovim plugins not loading
```bash
# Open Neovim and run
:Lazy sync
```

### Fonts not rendering correctly
Make sure you have a Nerd Font installed. Red Hat Mono is recommended.

### Transparency not working in Ghostty
Check that your terminal emulator supports transparency and blur effects.

### Keybinds not working
Make sure you're pressing the Space key and waiting 300ms for which-key to appear.

## Updating

### Update Neovim plugins
```bash
nvim
# Then run:
:Lazy sync
```

### Update configs
```bash
cd ~/dotfiles
git pull

# Re-run the installer
./install.sh

# Or manually update specific configs:
cp ghostty/config ~/.config/ghostty/config
cp -r nvim/* ~/.config/nvim/
cp zsh/.zshrc ~/.zshrc
cp zsh/.zprofile ~/.zprofile
cp starship/starship.toml ~/.config/starship.toml
```

## Credits

Built with:
- [Ghostty](https://ghostty.org/) - Modern terminal emulator
- [Neovim](https://neovim.io/) - Hyperextensible Vim-based text editor
- [lazy.nvim](https://github.com/folke/lazy.nvim) - Modern plugin manager
- [Catppuccin](https://github.com/catppuccin/nvim) - Soothing pastel theme

---

**Made with** Claude Code
