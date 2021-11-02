#!/usr/bin/env bash

echo "=> Oh My Zsh"


print_info "Installing..."

if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  
  #add poetry to oh my zsh
  mkdir $ZSH_CUSTOM/plugins/poetry
  poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry 

  print_success "Completed..."
else
  print_success "Skipping..."
fi
