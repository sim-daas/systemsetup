#!/bin/bash

# Define source and destination directories
SOURCE_DIR="$HOME/.config"
DEST_DIR="$HOME/githubrepos/systemsetup/.config"

# List of directories to copy
DIRS=("i3" "alacritty" "nixpkgs" "nvim" "obsidian" "omniverse-launcher" "picom" "polybar" "ranger" "rofi" "tmux" "fastfetch")

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Loop through directories and copy each
for DIR in "${DIRS[@]}"; do
    # Check if source directory exists
    if [ -d "$SOURCE_DIR/$DIR" ]; then
        echo "Copying $DIR from $SOURCE_DIR to $DEST_DIR"
        cp -r "$SOURCE_DIR/$DIR" "$DEST_DIR/"
    else
        echo "Source directory $SOURCE_DIR/$DIR does not exist"
    fi
done

echo "Sync complete"

