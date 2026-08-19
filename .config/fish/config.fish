source /usr/share/cachyos-fish-config/cachyos-config.fish

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# pnpm
set -gx PNPM_HOME "/home/i/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Google Cloud CLI path and completions
if test -f /opt/google-cloud-cli/path.fish.inc
    source /opt/google-cloud-cli/path.fish.inc
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# if test -f /home/i/miniconda3/bin/conda
#     eval /home/i/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# else
#     if test -f "/home/i/miniconda3/etc/fish/conf.d/conda.fish"
#         . "/home/i/miniconda3/etc/fish/conf.d/conda.fish"
#     else
#         set -x PATH "/home/i/miniconda3/bin" $PATH
#     end
# end
# <<< conda initialize <<<

starship init fish | source
# Added by Radicle.
export PATH="$PATH:/home/i/.radicle/bin"
