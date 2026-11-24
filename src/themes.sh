#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @tokyo-night-tmux_theme)"
TRANSPARENT_THEME="$(tmux show-option -gv @tokyo-night-tmux_transparent)"

case $SELECTED_THEME in
"moon")
  declare -A THEME=(
    ["background"]="#222436"
    ["foreground"]="#828bb8"
    ["black"]="#444a73"
    ["blue"]="#82aaff"
    ["cyan"]="#86e1fc"
    ["green"]="#4fd6be"
    ["magenta"]="#c099ff"
    ["red"]="#ff757f"
    ["white"]="#828bb8"
    ["yellow"]="#e0af68"

    ["bblack"]="#444a73"
    ["bblue"]="#82aaff"
    ["bcyan"]="#86e1fc"
    ["bgreen"]="#41a6b5"
    ["bmagenta"]="#c099ff"
    ["bred"]="#ff757f"
    ["bwhite"]="#787c99"
    ["byellow"]="#e0af68"
  )
  ;;
"storm")
  declare -A THEME=(
    ["background"]="#24283b"
    ["foreground"]="#a9b1d6"
    ["black"]="#414868"
    ["blue"]="#7aa2f7"
    ["cyan"]="#7dcfff"
    ["green"]="#73daca"
    ["magenta"]="#bb9af7"
    ["red"]="#f7768e"
    ["white"]="#a9b1d6"
    ["yellow"]="#e0af68"

    ["bblack"]="#414868"
    ["bblue"]="#7aa2f7"
    ["bcyan"]="#7dcfff"
    ["bgreen"]="#41a6b5"
    ["bmagenta"]="#bb9af7"
    ["bred"]="#f7768e"
    ["bwhite"]="#787c99"
    ["byellow"]="#e0af68"
  )
  ;;

"rose-pine")
  declare -A THEME=(
    ["background"]="#191724"
    ["foreground"]="#e0def4"
    ["black"]="#232136"
    ["blue"]="#9ccfd8"
    ["cyan"]="#ebbcba"
    ["green"]="#31748f"
    ["magenta"]="#c4a7e7"
    ["red"]="#eb6f92"
    ["white"]="#e0def4"
    ["yellow"]="#f6c177"

    ["bblack"]="#26233a"
    ["bblue"]="#9ccfd8"
    ["bcyan"]="#ebbcba"
    ["bgreen"]="#31748f"
    ["bmagenta"]="#c4a7e7"
    ["bred"]="#eb6f92"
    ["bwhite"]="#e0def4"
    ["byellow"]="#f6c177"
  )
  ;;

"catppuccin-mocha")
  declare -A THEME=(
    ["background"]="#181825"
    ["foreground"]="#cdd6f4"
    ["black"]="#45475a"
    ["green"]="#a6e3a1"
    ["blue"]="#89b4fa"
    ["cyan"]="#94e2d5"
    ["magenta"]="##cba6f7"
    ["red"]="#f38ba8"
    ["white"]="#cdd6f4"
    ["yellow"]="#f9e2af"

    ["bblack"]="##313244"
    ["bblue"]="#89b4fa"
    ["bcyan"]="#94e2d5"
    ["bgreen"]="#a6e3a1"
    ["bmagenta"]="##cba6f7"
    ["bred"]="#f38ba8"
    ["bwhite"]="#cdd6f4"
    ["byellow"]="#f9e2af"
  )
  ;;

"day")
  declare -A THEME=(
    ["background"]="#d5d6db"
    ["foreground"]="#343b58"
    ["black"]="#0f0f14"
    ["blue"]="#34548a"
    ["cyan"]="#0f4b6e"
    ["green"]="#33635c"
    ["magenta"]="#5a4a78"
    ["red"]="#8c4351"
    ["white"]="#343b58"
    ["yellow"]="#8f5e15"

    ["bblack"]="#9699a3"
    ["bblue"]="#34548a"
    ["bcyan"]="#0f4b6e"
    ["bgreen"]="#33635c"
    ["bmagenta"]="#5a4a78"
    ["bred"]="#8c4351"
    ["bwhite"]="#343b58"
    ["byellow"]="#8f5815"
  )
  ;;

*)
  # Default to night theme
  declare -A THEME=(
    ["background"]="#1A1B26"
    ["foreground"]="#a9b1d6"
    ["black"]="#414868"
    ["blue"]="#7aa2f7"
    ["cyan"]="#7dcfff"
    ["green"]="#73daca"
    ["magenta"]="#bb9af7"
    ["red"]="#f7768e"
    ["white"]="#c0caf5"
    ["yellow"]="#e0af68"

    ["bblack"]="#2A2F41"
    ["bblue"]="#7aa2f7"
    ["bcyan"]="#7dcfff"
    ["bgreen"]="#41a6b5"
    ["bmagenta"]="#bb9af7"
    ["bred"]="#ff9e64"
    ["bwhite"]="#787c99"
    ["byellow"]="#e0af68"
  )
  ;;
esac

# Override background with "default" if transparent theme is enabled
if [ "${TRANSPARENT_THEME}" == 1 ]; then
  THEME["background"]="default"
fi

THEME['ghgreen']="#3fb950"
THEME['ghmagenta']="#A371F7"
THEME['ghred']="#d73a4a"
THEME['ghyellow']="#d29922"

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
