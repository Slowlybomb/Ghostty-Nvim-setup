# Modern Dev Setup - Ghostty + Neovim

> A modern, beautiful terminal and editor setup with transparency, animations, and all the dev tools you need.

## What's Included

### Ghostty Terminal
- **Theme**: Apple System Colors with transparency
- **Font**: Red Hat Mono (18pt)
- **Features**:
  - 70% opacity with 20px blur radius
  - Auto font size controls (Cmd +/-/0)
  - Split pane support
  - Shell integration
  - Clipboard improvements

### Neovim (lazy.nvim)
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

# Install required tools
brew install neovim git
brew install --cask ghostty
```

### Fonts
```bash
# Install Red Hat Mono font (or use any Nerd Font)
brew tap homebrew/cask-fonts
brew install --cask font-red-hat-mono
```

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

## Customization

### Change Neovim Theme
Edit `~/.config/nvim/lua/josean/plugins/colorscheme.lua`:
```lua
flavour = "mocha" -- Options: latte, frappe, macchiato, mocha
```

### Adjust Ghostty Transparency
Edit `~/.config/ghostty/config`:
```ini
background-opacity = 0.7  # 0.0 (transparent) to 1.0 (opaque)
background-blur-radius = 20  # 0-100
```

### Disable Animations
Edit `~/.config/nvim/lua/josean/plugins/mini.lua` and set `enable = false`

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
cp ghostty/config ~/.config/ghostty/config
cp -r nvim/* ~/.config/nvim/
```

## Credits

Built with:
- [Ghostty](https://ghostty.org/) - Modern terminal emulator
- [Neovim](https://neovim.io/) - Hyperextensible Vim-based text editor
- [lazy.nvim](https://github.com/folke/lazy.nvim) - Modern plugin manager
- [Catppuccin](https://github.com/catppuccin/nvim) - Soothing pastel theme

---

**Made with** Claude Code
