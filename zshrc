# ============================================================
# Powerlevel10k Instant Prompt (keep this at the very top)
# ============================================================
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ============================================================
# Core Setup
# ============================================================
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git z)

# ============================================================
# Oh My Zsh Initialization
# ============================================================
source $ZSH/oh-my-zsh.sh

# ============================================================
# Terminal & Prompt
# ============================================================
autoload -U colors && colors
setopt PROMPT_SUBST
export TERM=xterm-256color
export TERM_PROGRAM=ghostty

# ============================================================
# Shell Options & History
# ============================================================
setopt autocd correct extendedglob hist_ignore_dups share_history inc_append_history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# ============================================================
# Path & Editor
# ============================================================
export PATH="$HOME/bin:/opt/homebrew/bin:/usr/local/bin:$PATH"
export EDITOR="code -w"

# ============================================================
# VS Code Integration
# ============================================================
export VSCODE_SHELL_INTEGRATION=1

# ============================================================
# Plugins: Autosuggestions + Syntax Highlighting
# ============================================================
if [[ -r /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
if [[ -r /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# ============================================================
# Zsh Visual Styles
# ============================================================
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#555 italic'

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[comment]='fg=#666'
ZSH_HIGHLIGHT_STYLES[command]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#89b4fa'
ZSH_HIGHLIGHT_STYLES[path]='fg=#f9e2af,underline'
ZSH_HIGHLIGHT_STYLES[option]='fg=#fab387'
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=#94e2d5'

# ============================================================
# Aliases
# ============================================================
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias ghost='open -a Ghostty .'
alias zup='brew update && brew upgrade && omz update && p10k configure'

# ============================================================
# Utility Functions
# ============================================================
mkcd() { mkdir -p "$1" && cd "$1"; }
extract() { tar -xf "$1" || unzip "$1"; }

# ============================================================
# Powerlevel10k Config Loader
# ============================================================
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
