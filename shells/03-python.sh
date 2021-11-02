#!/usr/bin/env bash

echo "=> Python"

print_info "Installing Python versions..."
pyenv install 2.7.18
pyenv install 3.7.12
pyenv install 3.8.12
pyenv install 3.9.7
pyenv install 3.10.0
pyenv global 3.9.7
print_success "Completed..."

if [[ ! -f $(which poetry) ]]
then
  print_info "Installing Poetry..."
  python -c "$(curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py)"
  print_success "Completed..."
else
  print_success "Skipping Poetry..."
fi