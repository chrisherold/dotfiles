#!/usr/bin/env bash

echo "=> nvm"

if [[ ! -d "$HOME/.nvm" ]]; then
    print_info "Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh)"
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm install --lts=erbium
    nvm install --lts=fermium
    nvm install --lts
    nvm alias default node
    print_success "Completed..."
else
  print_success "Skipping..."
fi
