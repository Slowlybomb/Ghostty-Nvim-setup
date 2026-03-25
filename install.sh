#!/bin/bash

set -e

echo "🚀 Installing dotfiles..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored output
print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

# Check if running on macOS
if [[ "$OSTYPE" != "darwin"* ]]; then
    print_warning "This script is designed for macOS. Continuing anyway..."
fi

# Backup existing configs
backup_config() {
    local config_path=$1
    local backup_path="${config_path}.backup.$(date +%Y%m%d_%H%M%S)"

    if [ -e "$config_path" ]; then
        print_warning "Backing up existing config: $config_path"
        mv "$config_path" "$backup_path"
        print_success "Backup created at: $backup_path"
    fi
}

# Install Ghostty config
install_ghostty() {
    echo ""
    echo "📺 Installing Ghostty config..."

    backup_config "$HOME/.config/ghostty"

    mkdir -p "$HOME/.config/ghostty"
    cp ghostty/config "$HOME/.config/ghostty/config"

    print_success "Ghostty config installed"
}

# Install Neovim config
install_nvim() {
    echo ""
    echo "📝 Installing Neovim config..."

    backup_config "$HOME/.config/nvim"

    mkdir -p "$HOME/.config/nvim"
    cp -r nvim/* "$HOME/.config/nvim/"

    print_success "Neovim config installed"
}

# Main installation
main() {
    echo ""
    echo "╔════════════════════════════════════════╗"
    echo "║   Modern Dev Setup Installer          ║"
    echo "║   Ghostty + Neovim                     ║"
    echo "╚════════════════════════════════════════╝"
    echo ""

    # Check if we're in the dotfiles directory
    if [ ! -f "install.sh" ]; then
        print_error "Please run this script from the dotfiles directory"
        exit 1
    fi

    # Install configs
    install_ghostty
    install_nvim

    echo ""
    print_success "Installation complete!"
    echo ""
    echo "Next steps:"
    echo "  1. Restart Ghostty (or your terminal)"
    echo "  2. Run 'nvim' to install plugins (lazy.nvim will auto-install)"
    echo "  3. Restart Neovim after plugins install"
    echo "  4. Press 'Space' in Neovim to see available commands"
    echo ""
    echo "📖 See README.md for keybinds and customization"
    echo ""
}

# Run main function
main
