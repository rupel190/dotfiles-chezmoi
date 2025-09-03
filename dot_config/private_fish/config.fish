source ~/.config/fish/themes.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -a PATH /home/rupel/.local/bin
set -x EDITOR nvim

neofetch
fish_vi_key_bindings
set -g fish_greeting
set -gx DEBUGINFOD_URLS https://debuginfod.archlinux.org

if type -q fzf
    fzf_key_bindings
    set -e FZF_ALT_C_COMMAND
    set -gx FZF_CTRL_T_COMMAND 'fd --type f --hidden --follow --exclude .git'
end

abbr sc sudo systemctl
abbr scu systemctl --user
abbr scus systemctl --user status
abbr scur systemctl --user restart
abbr -a spa sudo pacman
abbr -a cm chezmoi
abbr -a cma chezmoi apply
abbr -a cme chezmoi edit ~/.config/
abbr -a vault cd /home/rupel/.local/share/Cryptomator/mnt/Vault
abbr -a hyprconf nvim /home/rupel/.config/hypr

# Needs to be at EOF
zoxide init fish | source
