# ~/.zshrc

ZSH_CONFIG="$HOME/.config/zsh"

# Powerlevel10k instant prompt (must be first)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Load modular config
source "$ZSH_CONFIG/env.zsh"
source "$ZSH_CONFIG/history.zsh"
source "$ZSH_CONFIG/completions.zsh"
source "$ZSH_CONFIG/plugins.zsh"
source "$ZSH_CONFIG/aliases.zsh"
source "$ZSH_CONFIG/prompt.zsh"

