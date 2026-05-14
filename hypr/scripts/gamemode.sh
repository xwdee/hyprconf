#!/bin/env bash
# Toggle animations/blur/etc.
set -euo pipefail

if [[ -z "${HYPRLAND_INSTANCE_SIGNATURE:-}" ]]
then
	echo "Hyprland Instance is Unknown!" >&2
	exit 42
fi

HYPRGAMEMODE=$(
	hyprctl getoption animations:enabled | awk 'NR==1{print $2}'
)

GameModeParams="\
keyword animations:enabled 0;\
keyword animation borderangle,0;\
keyword decoration:shadow:enabled 0;\
keyword decoration:blur:enabled 0;\
keyword decoration:fullscreen_opacity 1;\
keyword general:gaps_in 0;\
keyword general:gaps_out 0;\
keyword general:border_size 1;\
keyword decoration:rounding 0;\
"

case "${OVERRIDEGM:-${HYPRGAMEMODE}}" in
	1|enable|true)
		hyprctl --batch "${GameModeParams}"
		hyprctl notify 1 2600 "rgb(a6e3a1)" "GameMode [ ON ]"
		exit
	;;
	0|disable|false)
		hyprctl reload
		hyprctl notify 1 2600 "rgb(f38ba8)" "GameMode [ OFF ]"
		exit
	;;
esac

exit 1
