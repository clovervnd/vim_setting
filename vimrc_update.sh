#!/bin/bash

# Quick update script for .vimrc configuration
set -e

# Check if .vimrc exists in current directory
if [ ! -f .vimrc ]; then
    echo "Error: .vimrc not found in current directory"
    exit 1
fi

# Backup existing vimrc
if [ -f ~/.vimrc ]; then
    BACKUP_FILE=~/.vimrc_backup_$(date +%Y%m%d_%H%M%S)
    echo "Backing up existing .vimrc to $BACKUP_FILE"
    cp ~/.vimrc "$BACKUP_FILE"
fi

# Copy new vimrc
echo "Updating .vimrc..."
cp .vimrc ~/.vimrc

echo "✓ .vimrc updated successfully!"
echo "Restart vim or run :source ~/.vimrc to apply changes"
