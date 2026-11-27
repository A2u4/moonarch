#!/bin/bash
# moonarch installer: links the configs into ~/.config.
MOONARCH="$HOME/moonarch"

# Step 1: Hyprland config
# If there is a real folder (not a link), keep a backup of it first
if [ -d "$HOME/.config/hypr" ] && [ ! -L "$HOME/.config/hypr" ]; then
    mv "$HOME/.config/hypr" "$HOME/.config/hypr.backup-$(date +%F)"
fi

# TODO: link the Hyprland config

echo "moonarch: done 🌙"
