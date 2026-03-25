# Neovim Keybinds Cheatsheet

## Quick Help
- `<Space>` - Wait 300ms to see available commands
- `<Space>?` - Open full cheatsheet

## Essential
- `jk` - Exit insert mode
- `<Space>w` - Save file
- `<Space>nh` - Clear search highlights

## File Navigation
- `<Space>ee` - Toggle file explorer
- `<Space>ef` - Focus file explorer
- `<Space>ff` - Find files (fuzzy search)
- `<Space>fr` - Find recent files
- `<Space>fs` - Find text in files (grep)
- `<Space>fc` - Find word under cursor

## Buffer Management
- `Shift+H` - Previous buffer
- `Shift+L` - Next buffer
- `<Space>bd` - Delete/close buffer

## Window Splits
- `<Space>sv` - Split vertically
- `<Space>sh` - Split horizontally
- `<Space>se` - Make splits equal size
- `<Space>sx` - Close current split

## Tabs
- `<Space>to` - Open new tab
- `<Space>tx` - Close tab
- `<Space>tn` - Next tab
- `<Space>tp` - Previous tab

## Git (Gitsigns)
- `]c` - Next git hunk
- `[c` - Previous git hunk
- `<Space>hp` - Preview hunk
- `<Space>hs` - Stage hunk
- `<Space>hr` - Reset hunk
- `<Space>hb` - Blame line

## Code Editing
- `gcc` - Toggle comment line
- `gc` (visual) - Toggle comment selection
- `<C-Space>` - Expand selection (treesitter)
- `<Backspace>` - Shrink selection
- `Alt+j` - Move line down
- `Alt+k` - Move line up
- `>` (visual) - Indent right (stays in visual)
- `<` (visual) - Indent left (stays in visual)

## Diagnostics & Trouble
- `<Space>xx` - Toggle diagnostics list
- `<Space>xX` - Buffer diagnostics
- `]t` - Next TODO comment
- `[t` - Previous TODO comment

## Completion (Insert Mode)
- `Ctrl+k` - Previous suggestion
- `Ctrl+j` - Next suggestion
- `Ctrl+Space` - Trigger completion
- `Enter` - Confirm selection
- `Ctrl+e` - Abort

## Scrolling
- `Ctrl+d` - Scroll down (smooth)
- `Ctrl+u` - Scroll up (smooth)
- `Ctrl+f` - Page down
- `Ctrl+b` - Page up

## Telescope (in picker)
- `Ctrl+k/j` - Navigate up/down
- `Ctrl+q` - Send to quickfix list

## Tips
- Leader key is `<Space>` - most commands start with it
- Wait after pressing `<Space>` to see what's available
- Use `jk` quickly to exit insert mode instead of ESC
- Which-key will guide you through multi-key commands
