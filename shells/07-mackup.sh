#!/usr/bin/env bash

echo "=> Backup restore"

CLOUD_DIR=$(echo "$HOME/Library/Mobile Documents/com~apple~CloudDocs/Mackup")

cp "$CLOUD_DIR/.mackup.cfg" "$HOME"
mackup restore

cp -R "$CLOUD_DIR/.oh-my-zsh/custom/" "$HOME/.oh-my-zsh/custom"