#!/usr/bin/env fish

# Backup official repository packages
pacman -Qqen > ~/.config/pkglist_native.txt

# Backup AUR (Arch User Repository) packages
pacman -Qqm > ~/.config/pkglist_aur.txt

# other stuff
flatpak list --app --columns=application > ~/.config/flatpaklist.txt
snap list | awk 'NR>1 {print $1}' > ~/.config/snaplist.txt
npm list -g --depth=0 --json > ~/.config/npmlist.json
pipx list --json > ~/.config/pipxlist.json
cargo install --list > ~/.config/cargolist.txt
ls /usr/local/bin > ~/.config/ls-usr-local-bin.txt