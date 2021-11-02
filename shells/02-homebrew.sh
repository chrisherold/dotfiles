#!/usr/bin/env bash

echo "=> Homebrew"

if [[ ! -f $(which brew) ]]
then
  print_info "Installing..."

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.profile
  eval "$(/opt/homebrew/bin/brew shellenv)"
  brew bundle --file="$ROOT_DIR/Brewfile"
  brew cleanup && brew upgrade && brew update && brew doctor

  print_success "Completed..."
else
  print_success "Skipping..."
fi
