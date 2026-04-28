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

# Install Zsh config
install_zsh() {
    echo ""
    echo "🐚 Installing Zsh config..."

    backup_config "$HOME/.zshrc"
    backup_config "$HOME/.zprofile"

    cp zsh/.zshrc "$HOME/.zshrc"
    cp zsh/.zprofile "$HOME/.zprofile"

    print_success "Zsh config installed"
}

# Install Starship config
install_starship() {
    echo ""
    echo "🚀 Installing Starship config..."

    backup_config "$HOME/.config/starship.toml"

    mkdir -p "$HOME/.config"
    cp starship/starship.toml "$HOME/.config/starship.toml"

    print_success "Starship config installed"
}

# Install modern CLI tools
install_tools() {
    echo ""
    echo "🛠️  Modern CLI Tools Installation"
    echo ""
    echo "This setup uses modern Rust-based CLI tools:"
    echo "  • eza       - Better ls (colors, icons, git)"
    echo "  • bat       - Better cat (syntax highlighting)"
    echo "  • fd        - Better find (faster, simpler)"
    echo "  • ripgrep   - Better grep (blazing fast)"
    echo "  • btop      - Better top (beautiful monitor)"
    echo "  • dust      - Better du (visual disk usage)"
    echo "  • duf       - Better df (modern disk info)"
    echo "  • zoxide    - Smart cd (learns your habits)"
    echo "  • fzf       - Fuzzy finder"
    echo "  • lazygit   - Git TUI"
    echo "  • starship  - Fast prompt"
    echo ""
    echo "Also includes Zsh plugins:"
    echo "  • zsh-autosuggestions"
    echo "  • zsh-syntax-highlighting"
    echo "  • powerlevel10k"
    echo ""
    read -p "Install these tools via Homebrew? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ""
        echo "Installing tools..."

        # Check if Homebrew is installed
        if ! command -v brew &> /dev/null; then
            print_error "Homebrew is not installed. Please install it first:"
            echo "  /bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
            return 1
        fi

        brew install eza bat fd ripgrep btop dust duf zoxide fzf lazygit starship
        brew install zsh-autosuggestions zsh-syntax-highlighting powerlevel10k

        print_success "All tools installed successfully!"
    else
        print_warning "Skipping tool installation. You can install them later with:"
        echo "  brew install eza bat fd ripgrep btop dust duf zoxide fzf lazygit starship"
        echo "  brew install zsh-autosuggestions zsh-syntax-highlighting powerlevel10k"
    fi
}

# Main installation
main() {
    echo ""
    echo "╔═════════════════════════════════════════════╗"
    echo "║   Modern Dev Setup Installer               ║"
    echo "║   Ghostty + Neovim + Zsh + Modern CLI      ║"
    echo "╚═════════════════════════════════════════════╝"
    echo ""

    # Check if we're in the dotfiles directory
    if [ ! -f "install.sh" ]; then
        print_error "Please run this script from the dotfiles directory"
        exit 1
    fi

    # Install configs
    install_ghostty
    install_nvim
    install_zsh
    install_starship
    install_tools

    echo ""
    print_success "Installation complete!"
    echo ""
    echo "Next steps:"
    echo "  1. Restart your terminal (or run: source ~/.zshrc)"
    echo "  2. If you installed Powerlevel10k, run: p10k configure"
    echo "  3. Open Neovim to install plugins (lazy.nvim will auto-install)"
    echo "  4. Restart Neovim after plugins install"
    echo "  5. Press 'Space' in Neovim to see available commands"
    echo ""
    echo "📖 See README.md for keybinds, aliases, and customization"
    echo ""
}

# Run main function
main
