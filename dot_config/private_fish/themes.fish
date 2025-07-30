set -l rosewater     '#f4dbd6' # {< rcol(colors::theme.rosewater) >}
set -l flamingo      '#f0c6c6' # {< rcol(colors::theme.flamingo) >}
set -l pink          '#f5bde6' # {< rcol(colors::theme.pink) >}
set -l mauve         '#c6a0f6' # {< rcol(colors::theme.mauve) >}
set -l red           '#ed8796' # {< rcol(colors::theme.red) >}
set -l maroon        '#ee99a0' # {< rcol(colors::theme.maroon) >}
set -l peach         '#f5a97f' # {< rcol(colors::theme.peach) >}
set -l yellow        '#eed49f' # {< rcol(colors::theme.yellow) >}
set -l green         '#a6da95' # {< rcol(colors::theme.green) >}
set -l teal          '#8bd5ca' # {< rcol(colors::theme.teal) >}
set -l sky           '#91d7e3' # {< rcol(colors::theme.sky) >}
set -l sapphire      '#7dc4e4' # {< rcol(colors::theme.sapphire) >}
set -l blue          '#8aadf4' # {< rcol(colors::theme.blue) >}
set -l lavender      '#b7bdf8' # {< rcol(colors::theme.lavender) >}

set -l text          '#cad3f5' # {< rcol(colors::theme.text) >}
set -l subtext1      '#b8c0e0' # {< rcol(colors::theme.subtext1) >}
set -l subtext0      '#a5adcb' # {< rcol(colors::theme.subtext0) >}
set -l overlay2      '#939ab7' # {< rcol(colors::theme.overlay2) >}
set -l overlay2a     '#939ab740' # {< rcol(colors::theme.overlay2a) >}
set -l overlay1      '#8087a2' # {< rcol(colors::theme.overlay1) >}
set -l overlay0      '#6e738d' # {< rcol(colors::theme.overlay0) >}
set -l surface2      '#5b6078' # {< rcol(colors::theme.surface2) >}
set -l surface1      '#494d64' # {< rcol(colors::theme.surface1) >}
set -l surface0      '#363a4f' # {< rcol(colors::theme.surface0) >}

set -l base          '#24273a' # {< rcol(colors::theme.base) >}
set -l mantle        '#1e2030' # {< rcol(colors::theme.mantle) >}
set -l crust         '#181926' # {< rcol(colors::theme.crust) >}
set -l highlight     '#455c6d' # {< rcol(colors::theme.highlight) >}

set -gx FZF_DEFAULT_OPTS "\
--color=bg+:$surface0,bg:$base,spinner:$rosewater,hl:$red \
--color=fg:$text,header:$red,info:$mauve,pointer:$rosewater \
--color=marker:$lavender,fg+:$text,prompt:$mauve,hl+:$red \
--color=selected-bg:$surface1 \
--color=border:$surface0,label:$text"
