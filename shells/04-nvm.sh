#!/usr/bin/env bash

echo "=> nvm"

print_info "Installing..."

if [[ ! -d "$HOME/.nvm" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh)"
    nvm install --lts=carbon
    nvm install --lts=dubnium
    nvm install --lts=erbium
    nvm install --lts
    nvm alias default node
    print_success "Completed..."
else
  print_success "Skipping..."
fi
