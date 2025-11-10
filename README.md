<!-- ============================================================
   Ghostty Superstart – Header - Title
   ============================================================ -->
<div align="center">
  <img
    align="center"
    width="134"
    height="135"
    alt="ghost-logo"
    src="https://github.com/user-attachments/assets/c3d088bb-cea6-47cd-ac5e-8d76a24d245d"
    />
  <br/>
  <h1>
    Ghostty Superstart
  </h1>
</div>

<!-- ============================================================
   Ghostty Superstart – Header - Intro
   ============================================================ -->

<div align="center">
  <img
    align='left'
    width="100"
    height="120"
    alt="Ghost Graphic"
    src="https://github.com/user-attachments/assets/cf27e729-dd29-47a6-ac95-2a0b5cac4b35" />
  <br/>
  <br/>
<p>
  <strong>Ghostty</strong>,
  <strong>Zsh</strong>,
  <strong>Oh My Zsh</strong>,
  <strong>Powerlevel10k</strong>, and
  <strong>VS Code</strong>.
</p>
<p>
  A beautifully simple Homebrew-powered setup that gets your macOS development environment ready — fast.
</p>
</div>

<!-- ============================================================
   Ghostty Superstart – Requirements
   ============================================================ -->

## Requirements

macOS with <a href='https://brew.sh'>Homebrew</a> installed

<!-- ============================================================
   Ghostty Superstart – Setup - Install
   ============================================================ -->

<img
  width="2980"
  height="213"
  alt="Ghostly Superstart Banner"
  src="https://github.com/user-attachments/assets/8ccd2f26-fbd2-48fe-831e-68e74fb2af31"
  />
<br/>

<div>
<br/>
<img
  align='left'
  width="140"
  height="140"
  alt="Speed Arrow Graphics"
  src="https://github.com/user-attachments/assets/8a2b9220-4497-4047-8206-c97dc7ca0433"
  />
<p>
 It's super simple to get this going. Just copy and paste this into your none-phantasmial terminal to begin spookification:
</p>
<div/>

```bash
git clone https://github.com/andrewvallejo/ghostty-superstart.git
cd ghostty-superstart
brew bundle && chmod +x install.sh && ./install.sh
```

---

<!-- ============================================================
   Ghostty Superstart – Setup - Flags
   ============================================================ -->

### Optional Flags

You can skip specific parts of the setup if you’ve already configured them:

```bash
./install.sh --skip-zsh       # Skip installing .zshrc
./install.sh --skip-ghostty   # Skip modifying Ghostty config
./install.sh --skip-vscode    # Skip updating VS Code settings
./install.sh --skip-pk10      # Skip Powerlevel10k pre-configuration
```

You can combine flags to skip multiple steps:

```bash
./install.sh --skip-zsh --skip-vscode
```

> **Note:**
> If you prefer to customize your own Powerlevel10k aesthetics, skip that step with --skip-p10k or run the configuration manually anytime with:
>
> ```bash
>  p10k configure
> ```

<br/>

<img
  width="1490"
  height="22"
  alt="divider"
  src="https://github.com/user-attachments/assets/afde6322-0f20-4728-bebb-ade0d4c15b3e"
  />

<!-- ============================================================
   Ghostty Superstart – Info - Technologies
   ============================================================ -->

## Packages Installed

| Package                     | Type      | Description                                                     | Link                                                                            |
| :-------------------------- | :-------- | :-------------------------------------------------------------- | :------------------------------------------------------------------------------ |
| **zsh**                     | Shell     | Modern Unix shell with advanced scripting features.             | [zsh.org](https://www.zsh.org)                                                  |
| **oh-my-zsh**               | Framework | Community-driven framework for managing Zsh configuration.      | [ohmyz.sh](https://ohmyz.sh)                                                    |
| **powerlevel10k**           | Theme     | Fast, highly customizable Zsh prompt.                           | [romkatv/powerlevel10k](https://github.com/romkatv/powerlevel10k)               |
| **zsh-autosuggestions**     | Plugin    | Suggests commands as you type based on history and completions. | [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)         |
| **zsh-syntax-highlighting** | Plugin    | Adds syntax highlighting to commands while typing in Zsh.       | [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) |
| **ghostty**                 | Terminal  | Fast, GPU-accelerated terminal emulator for macOS.              | [ghostty.org](https://ghostty.org)                                              |
| **font-fira-code**          | Font      | Monospaced font with programming ligatures.                     | [Fira Code](https://github.com/tonsky/FiraCode)                                 |
| **font-meslo-lg-nerd-font** | Font      | Powerlevel10k-compatible Nerd Font (default in themes).         | [nerdfonts.com](https://www.nerdfonts.com)                                      |

<!-- ============================================================
   Ghostty Superstart – Setup - Configuration Directory
   ============================================================ -->

## Config Locations

| Tool          | Path                                                         | Notes                                                                                                                   |
| ------------- | ------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------- |
| Ghostty       | `~/Library/Application Support/com.mitchellh.ghostty/config` | Sets up font, cursor style, and other terminal appearance options.                                                      |
| Zsh           | `~/.zshrc`                                                   | Adds Oh My Zsh, Powerlevel10k, aliases, and plugin setup for autosuggestions and syntax highlighting.                   |
| Powerlevel10k | `~/.p10k.zsh`                                                | Stores your prompt theme configuration (colors, icons, and layout). Can be reconfigured anytime using `p10k configure`. |
| VS Code       | `~/Library/Application Support/Code/User/settings.json`      | Appends terminal theme, font, and color customizations to match Ghostty.                                                |

> Navigate to configs in Terminal via `open <path>`.
> VS Code must be accessed directly through the Command Palette (`⌘ + ⇧ + P` → “Open Settings (JSON)”).

<img
  width="1490"
  height="22"
  alt="divider"
  src="https://github.com/user-attachments/assets/afde6322-0f20-4728-bebb-ade0d4c15b3e"
  />

<!-- ============================================================
   Ghostty Superstart –  Info - ALiases
   ============================================================ -->

## Library & Help System

The Ghostty Superstart library lets you browse and recall your aliases directly from the terminal.
Use the built-in help system to explore your aliases and utilities interactively:

```bash
library       # Show categorized alias list
help          # Open interactive help menu
help ghostty  # Show Ghostty-specific shortcuts
help terminal # Show terminal-related shortcuts
```

## Terminal Aliases

Aliases and functions let you move faster by shortening or grouping commands you use often.

<!-- ============================================================
    Ghostty Superstart –  Info -   Commands & Aliases
   ============================================================ -->

<table style="border-collapse:collapse; width:100%; text-align:left;">
  <thead/>
  <thead>
    <tr>
      <th style="width:20%;">Alias</th>
      <th style="width:40%;">Command</th>
      <th style="width:40%;">Description</th>
    </tr>
  </thead>
  <tbody>
    <!-- ───────────── Terminal Aliases ───────────── -->
      <tr>
      <td colspan="3" style="text-align:center; font-weight:bold; background:#f5f5f5;">
        <h3 style="margin:6px 0;">Terminal Aliases</h3>
      </td>
    </tr>
    <tr><td><code>ll</code></td><td><code>ls -alF</code></td><td>Detailed file list</td></tr>
    <tr><td><code>la</code></td><td><code>ls -A</code></td><td>Show hidden files</td></tr>
    <tr><td><code>lc</code></td><td><code>ls -CF</code></td><td>Compact file list</td></tr>
    <tr><td><code>gs</code></td><td><code>git status</code></td><td>Quick Git status</td></tr>
    <tr><td><code>gc</code></td><td><code>git commit</code></td><td>Commit shorthand</td></tr>
    <tr><td><code>gp</code></td><td><code>git push</code></td><td>Push shorthand</td></tr>
    <tr><td><code>grep</code></td><td><code>grep --color=auto</code></td><td>Always show colored matches</td></tr>
    <!-- ───────────── Ghostty Aliases ───────────── -->
    <tr>
      <td colspan="3" style="text-align:center; font-weight:bold; background:#f5f5f5;">
        <h3 style="margin:6px 0;">Ghostty Aliases</h3>
      </td>
    </tr>
    <tr><td><code>ghost</code></td><td><code>open -a Ghostty .</code></td><td>Open Ghostty in current directory</td></tr>
    <tr><td><code>gh</code></td><td><code>ghostty</code></td><td>Launch Ghostty</td></tr>
    <tr><td><code>ghelp</code></td><td><code>ghostty +help</code></td><td>Open Ghostty help menu</td></tr>
    <tr><td><code>boo</code></td><td><code>ghostty +boo</code></td><td>Fun Ghostty Easter egg</td></tr>
    <!-- ───────────── System & Utility Aliases ───────────── -->
    <tr>
      <td colspan="3" style="text-align:center; font-weight:bold; background:#f5f5f5;">
        <h3 style="margin:6px 0;">System & Utility Aliases</h3>
      </td>
    </tr>
    <tr><td><code>zrc</code></td><td><code>open ~/.zshrc</code></td><td>Open Zsh configuration file</td></tr>
    <tr><td><code>p10k</code></td><td><code>p10k configure</code></td><td>Reconfigure Powerlevel10k</td></tr>
    <tr><td><code>reload</code></td><td><code>source ~/.zshrc</code></td><td>Reload Zsh configuration</td></tr>
    <tr><td><code>c</code></td><td><code>code .</code></td><td>Open VS Code in current directory</td></tr>
    <tr><td><code>brewup</code></td><td><code>brew update && brew upgrade && brew cleanup</code></td><td>Update and clean Homebrew</td></tr>
    <tr><td><code>library</code>, <code>lib</code>, <code>l</code></td><td><code>libraryMap</code></td><td>Show categorized alias reference</td></tr>
    <tr><td><code>help</code></td><td><code>helpRouter</code></td><td>Interactive help and tips</td></tr>
  </tbody>
</table>

## Custom Alias

All shortcuts below live in your `~/.zshrc` file.

To view or modify them, open the file with:

```bash
open ~/.zshrc
```

To add your own commands, simply edit ~/.zshrc and follow the pattern:

```bash
 alias youralias='your command here'
```

After making any changes, reload the shell so they take effect:

```bash
source ~/.zshrc
```

> **Tip**: Run `alias` to see all active shortcuts (system + custom).

---

## Utility Functions

The setup also includes a few lightweight shell helpers to speed up common tasks:

```bash
mkcd <dir>     # create a new directory and immediately cd into it
extract <file> # extract .tar/.zip archives quickly
```

<br/>
<img
  width="1490"
  height="22"
  alt="divider"
  src="https://github.com/user-attachments/assets/afde6322-0f20-4728-bebb-ade0d4c15b3e"
  />
<br/>

<!-- ============================================================
   Ghostty Superstart –  Info - Fira Code
   ============================================================ -->

## Fira Code Setup for VS Code

To make VS Code’s editor match Ghostty’s font style and ligatures, add this to your settings.json:

```json
  "editor.fontFamily": "Fira Code Retina, Menlo, Monaco, 'Courier New', monospace",
  "editor.fontLigatures": "'ss03','ss05','ss10','cv18','cv27','cv29','cv30','cv31','zero'"
```

<br/>
<img
  width="1490"
  height="22"
  alt="divider"
  src="https://github.com/user-attachments/assets/afde6322-0f20-4728-bebb-ade0d4c15b3e"
  />
<br/>
<br/>

<!-- ============================================================
   Ghostty Superstart –  Preview
   ============================================================ -->
<div align='center'>
  <img
    width="800"
    height="800"
    alt="image"
    src="https://github.com/user-attachments/assets/f888e4ff-02e2-4ab5-99e5-e634deb6946e"
    />

---

<img
    width="800"
    height="800"
    alt="image"
    src="https://github.com/user-attachments/assets/37c688a9-2e18-438a-9e60-ccdec6983d5a"
    />

---

![ghostty](https://github.com/user-attachments/assets/89673f67-dac6-482f-a23e-8870b7768a2f)

</div>

<img
  width="1490"
  height="22"
  alt="divider"
  src="https://github.com/user-attachments/assets/afde6322-0f20-4728-bebb-ade0d4c15b3e"
  />

<p align="right">
  Because at the end of the day, it’s just a terminal — it should be <em>simple</em>... and a little <strong>spooky</strong> 👻
</p>
