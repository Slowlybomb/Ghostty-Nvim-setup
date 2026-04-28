# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

alias ls="eza --icons"
alias ll="eza -l --icons"
alias la="eza -la --icons"

# Quick edit configuration files
alias editstarship="vim ~/.config/starship.toml"
alias editghost="vim ~/.config/ghostty/config"

# Git shortcuts
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"

# Quick directory navigation
alias dev="cd ~/Development"
alias docs="cd ~/Documents"

# SSH helpers
alias tunnel='ssh -N -L'  # Local port forwarding: tunnel 8080:localhost:80 user@server
alias rtunnel='ssh -N -R'  # Remote port forwarding
alias ssht='ssh -t'  # Force TTY allocation (useful for remote tmux)
alias sshfs-mount='sshfs -o reconnect,ServerAliveInterval=15'
alias pubkey='cat ~/.ssh/id_ed25519.pub | pbcopy && echo "Public key copied to clipboard"'

# Modern CLI tool replacements
alias cat='bat'
alias find='fd'
alias grep='rg'
alias top='btop'
alias du='dust'
alias df='duf'

# Git shortcuts
alias lg='lazygit'

# Utility aliases
alias preview="fzf --preview 'bat --color=always {}'"
alias help='tldr'

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# FZF - fuzzy finder configuration
if [[ -f ~/.fzf.zsh ]]; then
  source ~/.fzf.zsh
fi
eval "$(fzf --zsh)" 2>/dev/null
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --preview 'bat --color=always --style=numbers --line-range=:500 {}' 2>/dev/null"

# Some servers don't know about Ghostty's TERM entry
if [[ -n "$SSH_CONNECTION" ]]; then
  export TERM=xterm-256color
fi

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

export CLAUDE_CODE_USE_VERTEX=1
export CLOUD_ML_REGION=us-east5
export ANTHROPIC_VERTEX_PROJECT_ID=itpc-gcp-ai-eng-claude

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# GPG signing fix
export GPG_TTY=$(tty)

# Python package fix
eval "$(pyenv init -)"


. "$HOME/.local/bin/env"
