source /usr/share/cachyos-fish-config/cachyos-config.fish

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# pnpm
set -gx PNPM_HOME "/home/i/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
