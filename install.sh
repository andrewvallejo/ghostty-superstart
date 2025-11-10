#!/bin/zsh

# ============================================================
# Ghostty Superstart Installer
# ============================================================

# Flags
SKIP_ZSH=false
SKIP_GHOSTTY=false
SKIP_VSCODE=false
SKIP_P10K=false

for arg in "$@"; do
  case $arg in
    --skip-zsh) SKIP_ZSH=true ;;
    --skip-ghostty) SKIP_GHOSTTY=true ;;
    --skip-vscode) SKIP_VSCODE=true ;;
    --skip-p10k) SKIP_P10K=true ;;
  esac
done

echo "Running Brew Bundle..."
if brew bundle --no-upgrade --verbose; then
  echo "Brew bundle completed successfully."
else
  echo "Some Brewfile items failed (likely deprecated taps). Continuing anyway..."
fi

# ───────────────────────────────
# Zsh Config (create/overwrite)
# ───────────────────────────────
if [ "$SKIP_ZSH" = false ]; then
  echo "Installing Zsh configuration..."
  if [ -f "./zshrc" ]; then
    cp ./zshrc ~/.zshrc
  elif [ -f "./.zshrc" ]; then
    cp ./.zshrc ~/.zshrc
  else
    echo "Warning: no zshrc file found in repo."
  fi
else
  echo "Skipping Zsh setup (--skip-zsh)."
fi

# ───────────────────────────────
# Powerlevel10k Config (create/overwrite)
# ───────────────────────────────
if [ "$SKIP_P10K" = true ]; then
  echo "Skipping Powerlevel10k setup (--skip-p10k)."
else
  P10K_FILE="$HOME/.p10k.zsh"
  if [ -f "$P10K_FILE" ]; then
    echo "Backing up existing Powerlevel10k config..."
    cp "$P10K_FILE" "$P10K_FILE.bak"
  fi
  echo "Installing Powerlevel10k configuration..."
  cp ./p10k.zsh "$P10K_FILE"
fi

# ───────────────────────────────
# Ghostty Config (prepend)
# ───────────────────────────────
if [ "$SKIP_GHOSTTY" = false ]; then
  GHOSTTY_DIR="$HOME/Library/Application Support/com.mitchellh.ghostty"
  GHOSTTY_FILE="$GHOSTTY_DIR/config"
  mkdir -p "$GHOSTTY_DIR"

  if [ -f "$GHOSTTY_FILE" ]; then
    if grep -q "Ghostty Settings" "$GHOSTTY_FILE"; then
      echo "Ghostty config already includes header — skipping prepend."
    else
      echo "Prepending Ghostty config..."
      TMP_FILE=$(mktemp)
      cat ./ghostty-config.txt "$GHOSTTY_FILE" > "$TMP_FILE" && mv "$TMP_FILE" "$GHOSTTY_FILE"
    fi
  else
    echo "Installing new Ghostty config..."
    cp ./ghostty-config.txt "$GHOSTTY_FILE"
  fi
else
  echo "Skipping Ghostty setup (--skip-ghostty)."
fi

# ───────────────────────────────
# VS Code Config (append)
# ───────────────────────────────
if [ "$SKIP_VSCODE" = false ]; then
  VSCODE_DIR="$HOME/Library/Application Support/Code/User"
  VSCODE_FILE="$VSCODE_DIR/settings.json"
  VSCODE_SOURCE="./vscode-settings.txt"
  mkdir -p "$VSCODE_DIR"

  if [ -f "$VSCODE_FILE" ]; then
    echo "Injecting VS Code settings above final brace..."
    cp "$VSCODE_FILE" "$VSCODE_FILE.bak"
    TMP_FILE=$(mktemp)
    sed '$d' "$VSCODE_FILE" > "$TMP_FILE"          # remove last line
    echo "," >> "$TMP_FILE"                        # ensure valid JSON continuation
    cat "$VSCODE_SOURCE" >> "$TMP_FILE"            # append terminal block
    echo "}" >> "$TMP_FILE"                        # close JSON object
    mv "$TMP_FILE" "$VSCODE_FILE"
  else
    echo "Installing new VS Code settings..."
    cp "$VSCODE_SOURCE" "$VSCODE_FILE"
  fi
else
  echo "Skipping VS Code setup (--skip-vscode)."
fi

echo "✅ Ghostty Superstart setup complete."
