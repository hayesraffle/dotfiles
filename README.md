# Dotfiles

Personal configuration files for macOS.

## What's Included

- `zshrc` - Zsh shell configuration with:
  - Colorized prompt with git branch support
  - Homebrew setup
  - Better history management
  - Auto-completion
  - Helpful aliases (including Claude Code YOLO mode)

## Installation

### First Time Setup (This Mac)

The dotfiles are already set up and tracked with git.

To push to GitHub:
```bash
cd ~/dotfiles
git remote add origin https://github.com/YOUR_USERNAME/dotfiles.git
git push -u origin main
```

### Installing on Other Macs

1. Clone this repository:
```bash
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles
```

2. Run the installation script:
```bash
cd ~/dotfiles
./install.sh
```

3. Reload your shell:
```bash
source ~/.zshrc
```

## Updating

### On This Mac
After making changes to your dotfiles:
```bash
cd ~/dotfiles
git add .
git commit -m "Description of changes"
git push
```

### On Other Macs
To get the latest changes:
```bash
cd ~/dotfiles
git pull
source ~/.zshrc
```

## What the Install Script Does

- Backs up any existing `.zshrc` to `.zshrc.backup`
- Creates symlinks from `~/.zshrc` to `~/dotfiles/zshrc`
- Any future edits to `~/dotfiles/zshrc` automatically apply system-wide
