#!/bin/bash

# Set up Wayland session
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_DESKTOP=Hyprland

# Force Wayland for apps
export QT_QPA_PLATFORM=wayland
export SDL_VIDEODRIVER=wayland
export MOZ_ENABLE_WAYLAND=1
export CLUTTER_BACKEND=wayland
export ELECTRON_OZONE_PLATFORM_HINT=wayland

# Optimal DPI and Scaling for 1280x720 @ 15.3" screen
export WLR_DPI_SCALE=1
export XCURSOR_SIZE=20  # Adjust for better visibility on 720p
export XCURSOR_THEME=Breeze  # Set to preferred cursor theme

# GTK and QT fixes for font rendering
export GDK_SCALE=1
export GDK_DPI_SCALE=1
export QT_SCALE_FACTOR=1
export QT_AUTO_SCREEN_SCALE_FACTOR=0  # Prevent auto-scaling issues

# GTK theming
export GTK_THEME=Adwaita-dark  # Change as needed

# Start Hyprland
exec Hyprland
