# ============================================================
# USER ALIASES — SAFE TO EDIT
# ============================================================

# Terminal Shortcuts
alias ll='ls -alF'                       # detailed file list
alias la='ls -A'                         # show hidden files
alias lc='ls -CF'                        # compact list
alias gs='git status'                    # quick Git status
alias gc='git commit'                    # shorthand for commit
alias gp='git push'                      # shorthand for push
alias grep='grep --color=auto'           # always show colored matches

# Ghostty Terminal Shortcuts
alias ghost='open -a Ghostty .'          # open Ghostty in current dir
alias gh='ghostty'                       # shorthand for Ghostty
alias ghelp='ghostty +help'              # open Ghostty help menu
alias boo='ghostty +boo'                 # 👻 fun Easter egg

# Config Shortcuts
alias zrc='open ~/.zshrc'                # open zsh configuration file
alias p10k='p10k configure'              # reconfigure Powerlevel10k
alias reload='source ~/.zshrc'           # reload zsh configuration
alias c='code .'                         # open VS Code in current directory
alias rl='reload l'                      # reload + open library

# Updates & Utilities
alias brewup='brew update && brew upgrade && brew cleanup' # Updates Homebrew

# Ghostty Superstart Routing
alias library='libraryMap'
alias lib='library'
alias l='lib'
alias help='helpRouter'

# ============================================================
# CORE TERMINAL SETTINGS — STANDARD CONFIG
# ============================================================

# Powerlevel10k Instant Prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Core Setup
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git z)

# Oh My Zsh Initialization
source $ZSH/oh-my-zsh.sh

# Terminal & Prompt
autoload -U colors && colors
setopt PROMPT_SUBST
export TERM=xterm-256color
export TERM_PROGRAM=ghostty

# Shell Options & History
setopt autocd correct extendedglob hist_ignore_dups share_history inc_append_history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Path & Editor
export PATH="$HOME/bin:/opt/homebrew/bin:/usr/local/bin:$PATH"
export EDITOR="code -w"

# VS Code Integration
export VSCODE_SHELL_INTEGRATION=1

# Plugins: Autosuggestions + Syntax Highlighting
if [[ -r /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
if [[ -r /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Visual Styles
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#555 italic'
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[comment]='fg=#666'
ZSH_HIGHLIGHT_STYLES[command]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#89b4fa'
ZSH_HIGHLIGHT_STYLES[path]='fg=#f9e2af,underline'
ZSH_HIGHLIGHT_STYLES[option]='fg=#fab387'
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=#94e2d5'

# Utility Functions
mkcd() { mkdir -p "$1" && cd "$1"; }
extract() { tar -xf "$1" || unzip "$1"; }

# Powerlevel10k Config Loader
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ============================================================
# GHOSTTY ADVANCED LIBRARY + HELP SYSTEM
# ============================================================

# Highlight Formatting for Color Output
alias highlights='GREP_COLOR="1;33" grep --color=always "#" |
  GREP_COLOR="1;36" grep --color=always "="'

# Library Sections
alias library:terminal='
  GREP_COLOR="1;31" grep --color=always "^\<alias \(ll\|la\|lc\|gs\|gc\|gp\|grep\)\>" ~/.zshrc |
  highlights
'

alias library:ghostty='
  GREP_COLOR="1;33" grep --color=always "^alias ghost\|alias gh\|alias ghelp\|alias boo" ~/.zshrc |
  highlights
'

alias library:system='
  GREP_COLOR="1;36" grep --color=always "^alias zrc\|alias p10k\|alias reload" ~/.zshrc |
  highlights
'

alias library:util='
  GREP_COLOR="1;32" grep --color=always "^\<alias \(brewup\|library\|lib\|l\|c\)\>" ~/.zshrc |
  highlights
  printf "\n"
'

# Full Library Map
libraryMap() {
  printf "\n# ============================================================\n"
  printf "# Terminal Shortcuts\n"
  printf "# ============================================================\n\n"
  library:terminal

  printf "\n# ============================================================\n"
  printf "# Ghostty Shortcuts\n"
  printf "# ============================================================\n\n"
  library:ghostty

  printf "\n# ============================================================\n"
  printf "# Configuration Shortcuts\n"
  printf "# ============================================================\n\n"
  library:system

  printf "\n# ============================================================\n"
  printf "# System & Package Utilities\n"
  printf "# ============================================================\n\n"
  library:util
}

# Help Menu
helpMenu() {
  case "$1" in
    terminal) library:terminal ;;
    ghostty) library:ghostty ;;
    system) library:system ;;
    util) library:util ;;
    ""|help)
      echo ""
      echo "┌───────────────────────────────────────────────┐"
      echo "│ 🧭 Ghostty Superstart FAQs                   │"
      echo "└───────────────────────────────────────────────┘"
      echo ""
      echo "Usage:"
      echo "  help [section]"
      echo "  library"
      echo ""
      echo "Sections:"
      echo "  terminal   → Show Terminal Shortcuts (ls, git, grep...)"
      echo "  ghostty    → Show Ghostty Shortcuts (+help, +boo...)"
      echo "  system     → Show Configuration Shortcuts (zrc, reload...)"
      echo "  util       → Show System & Package Utilities (brewup, library...)"
      echo ""
      echo "Tips:"
      echo "  • Run 'reload' to refresh .zshrc after edits."
      echo "  • Run 'p10k configure' anytime to adjust your Powerlevel10k prompt."
      echo "  • Run 'ghelp' or 'ghostty +help' for Ghostty’s built-in commands."
      echo "  • Use 'code .' (alias: c) to open the current directory in VS Code."
      echo "  • To see all terminal aliases, type 'alias'"
      echo "  • To view your custom alias sets, use 'library', 'lib', or 'l'"
      echo "  • Input color changes based on command validity."
      echo "  • Typo Legend: Y = auto-correct, E = edit, A = abort, B = run anyway"
      echo ""
      ;;
    *)
      echo "Unknown option: '$1' — showing help."
      helpMenu help
      ;;
  esac
}

# Command Router
helpRouter() {
  local arg="${1#*:}"
  case "$arg" in
    terminal) library:terminal ;;
    ghostty) library:ghostty ;;
    system) library:system ;;
    util) library:util ;;
    ""|help)
      helpMenu help
      ;;
    *)
      echo "Unknown option: '$1' — showing help."
      helpMenu help
      ;;
  esac
}

# Auto-correct Commands
setopt correct
setopt correct_all
SPROMPT="[%R] -> [%r] [Y/N]? "
