#!/bin/bash -eu
# Script for lockscreen

# Stop Playing
playerctl pause || true

# Launch Lockscreen
exec hyprlock
