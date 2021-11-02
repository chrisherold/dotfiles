#!/usr/bin/env bash

echo "=> Yarn"


declare -a PACKAGES=(
  'firebase-tools'
  'gulp-cli'
  'vercel'
)

for PACKAGE in "${PACKAGES[@]}"
do
  print_info "Installing - $PACKAGE..."

  if ! yarn global list --depth=0 | grep -q $PACKAGE
  then
    yarn global add --silent $PACKAGE
    print_success "Completed..."
  else
    print_success "Skipping..."
  fi
done
