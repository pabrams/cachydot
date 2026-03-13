# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

A bare-git dotfiles repository (`~/.cfg/`) tracking system configuration for a CachyOS (Arch Linux) desktop. The home directory IS the worktree.

## Key Commands

All git operations use the `config` alias instead of `git`:

```bash
config status
config add <file>
config commit -m "message"
config push
config diff
```

The alias is defined as: `alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

If the alias isn't loaded, use the full form: `/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME`

## How the Repo Works

- `.gitignore` contains `*` (ignore everything by default), with explicit whitelisted paths using `!` prefix
- To track a new file: add a `!` entry to `.gitignore` for its path, then `config add <file>`
- Nested directory whitelisting requires whitelisting each parent directory separately (e.g., `!/.local/`, `!/.local/share/`, `!/.local/share/applications/`)
- Remote: `https://github.com/pabrams/cachydot.git`, branch: `trunk`

## What's Tracked

- Shell configs: `.bashrc`, `.zshrc`, `.config/fish/config.fish` (fish is the primary shell)
- Terminal: `.config/alacritty/alacritty.toml`
- KDE desktop: `kglobalshortcutsrc`, `kwinrc`, `kdeglobals`
- Custom `.desktop` launchers in `.local/share/applications/` (ww-run-raise hotkeys)
- Package inventory snapshots in `.config/` (pkglist_native.txt, pkglist_aur.txt, cargolist.txt, etc.)
- VS Code workspace config: `config.code-workspace`

## Package Inventory

Regenerate package lists with the commands in `README.config.md` under "App inventory". Restore with the commands under "Restore app inventory". Package manager: `pacman` + `paru` (AUR).
