# Repository Structure

```
dotfiles/
├── README.md              # Main documentation with setup instructions
├── install.sh             # Automated installation script
├── STRUCTURE.md           # This file - explains repo organization
├── ghostty/
│   └── config            # Ghostty terminal configuration
└── nvim/                 # Neovim configuration
    ├── init.lua          # Main entry point
    ├── lazy.nvim         # Lazy.nvim bootstrap
    ├── options.lua       # Legacy option file
    ├── KEYBINDS.md       # Complete keybinds reference
    ├── lua/
    │   └── josean/
    │       ├── core/
    │       │   ├── init.lua
    │       │   ├── options.lua    # Core Vim options
    │       │   └── keymaps.lua    # Global keymaps
    │       ├── lazy.lua           # Lazy.nvim setup
    │       └── plugins/           # Plugin configurations (34 files)
    │           ├── colorscheme.lua    # Catppuccin theme
    │           ├── alpha.lua          # Dashboard
    │           ├── lualine.lua        # Statusline
    │           ├── bufferline.lua     # Buffer tabs
    │           ├── telescope.lua      # Fuzzy finder
    │           ├── neo-tree.lua       # File explorer
    │           ├── treesitter.lua     # Syntax highlighting
    │           ├── nvim-cmp.lua       # Autocomplete
    │           ├── gitsigns.lua       # Git integration
    │           ├── which-key.lua      # Keybind helper
    │           ├── cheatsheet.lua     # Interactive help
    │           ├── noice.lua          # Modern UI
    │           ├── notify.lua         # Notifications
    │           ├── mini.lua           # Multiple utilities
    │           ├── neoscroll.lua      # Smooth scrolling
    │           ├── dressing.lua       # Better UI inputs
    │           ├── autopairs.lua      # Auto close brackets
    │           ├── comment.lua        # Smart commenting
    │           ├── todo-comments.lua  # Highlight TODOs
    │           ├── trouble.lua        # Diagnostics
    │           ├── indent-blankline.lua # Indent guides
    │           └── colorizer.lua      # Color preview
    └── ...
```

## Configuration Philosophy

### Ghostty
- Simple, single-file configuration
- Focused on visual aesthetics and productivity
- Transparent background with blur for modern look
- Keyboard-first workflow

### Neovim
- Modular plugin architecture using lazy.nvim
- Each plugin in its own file for easy management
- Lazy-loading for fast startup
- Extensive keybinds with discoverability (which-key)
- Preconfigured for common dev workflows

## Adding Plugins

To add a new plugin:

1. Create a new file in `nvim/lua/josean/plugins/`
2. Follow the lazy.nvim spec format:
   ```lua
   return {
     "author/plugin-name",
     config = function()
       -- Plugin setup here
     end,
   }
   ```
3. lazy.nvim will auto-detect and load it on next startup

## Customization Tips

- **Colors**: Edit `nvim/lua/josean/plugins/colorscheme.lua`
- **Keybinds**: Edit `nvim/lua/josean/core/keymaps.lua`
- **Options**: Edit `nvim/lua/josean/core/options.lua`
- **Terminal**: Edit `ghostty/config`
