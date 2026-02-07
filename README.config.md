# Config Readme

## Setup

`git init --bare $HOME/.cfg`
`alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`
`config config --local status.showUntrackedFiles no`

Save the config alias to .bashrc or whatever.

`config branch -M trunk`
`config remote add origin https://github.com/pabrams/cachydot.git`
`config push -u origin trunk`

## Install

To install on a new machine, don't just clone, do this:
`alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

`git clone --bare https://github.com/pabrams/cachydot.git $HOME/.cfg`

`config checkout`

(probably need to delete everything first, though...)

## App inventory


```
pacman -Qqen > ~/.config/pkglist_native.txt
pacman -Qqm > ~/.config/pkglist_aur.txt
flatpak list --app --columns=application > ~/.config/flatpaklist.txt
snap list | awk 'NR>1 {print $1}' > ~/.config/snaplist.txt
npm list -g --depth=0 --json > ~/.config/npmlist.json
pipx list --json > ~/.config/pipxlist.json
cargo install --list > ~/.config/cargolist.txt
ls /usr/local/bin > ~/.config/ls-usr-local-bin.txt
```


## Restore app inventory

```
sudo pacman -S --needed - < ~/.config/pkglist_native.txt
paru -S --needed - < ~/.config/pglist_aur.txt
xargs flatpak install -y < ~/.config/flatpaklist.txt
```

### Special apps/scripts

#### ww-run-raise
 
To download only the script directly from github repo:
```
curl -O https://raw.githubusercontent.com/academo/ww-run-raise/master/ww > ~/.local/bin/ww
chmod +x ~/.local/bin/ww
```
Hotkeys are set up using KDE and tracked in `kglobalshortcutsrc` and the corresponding commands in `~/.local/share/applications/`
