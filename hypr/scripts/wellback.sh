#!/bin/bash -eu
# Welcome message after back

argv=(
	--urgency=normal
	--app-name=Hypridle
	--icon="$HOME/.face"
	"Welcome back, ${USER^}!"
	"Good luck, Sir."
)

exec notify-send "${argv}"
