#!/bin/bash
# Script to run SCRCPY
set -euo pipefail

# Toggle Mode
if pgrep -x scrcpy > /dev/null
then
	pkill -x scrcpy
	exit
fi

# Import User's scrcpy flags
: "${XDG_CONFIG_HOME:=${HOME:-}/.config}"
: "${scrcpyConf:=${XDG_CONFIG_HOME}/scrcpy-flags.conf}"
if [[ -f "${scrcpyConf}" ]]
then
	unset -v argv
	mapfile -t argv < <(grep -v '^#' "${scrcpyConf}")
fi

# Get connected devices
devices=$(
	adb devices | awk 'NR>1 && $2=="device" {print $1}'
)
device_count=$(wc -l <<< "${devices}")

# If no devices are found, exit the script
if [[ "${device_count}" -eq 0 ]]
then
	notify-send "No devices connected."
	exit 1
fi

# If multiple devices are connected, prompt to select one
if [[ "${device_count}" -gt 1 ]]
then
	selected_device=$(rofi -dmenu -p "Select Device" <<< "${devices}")
else
	selected_device="${devices}"
fi

# If no device was selected, exit the script
if [[ -n "${selected_device}" ]]
then
	argv+=( --serial "${selected_device}" )
else
	echo "No device selected."
	exit 1
fi

# Options for SCRCPY modes
options="Video\nNo Video\nVideo & Audio"

# Prompt to select the SCRCPY mode
selected_option=$(echo -e "${options}" | rofi -dmenu -p "Select SCRCPY mode")

# Run scrcpy with the selected mode and device
case "${selected_option}" in
	"Video & Audio") : ;;
	"Video") argv+=( --no-audio ) ;;
	"No Video") argv+=( --no-window ) ;;
	*) echo "Invalid selection" ;;
esac

# Execute It
exec env "${scrcpyBin:-scrcpy}" "${argv[@]}" "${@}"
