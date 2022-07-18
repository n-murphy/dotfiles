#!/usr/bin/env zsh

echo "\n<<<Starting Homebrew Setup>>>\n"

if exists brew; then
  echo "brew exists, skipping install . . ."
else
  echo "brew doesn't exist, continuing with the install . . ."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


# brew bundle --verbose


# This works to solve the Insecure Directories issue:
# From the Homebrew site for shell completions:
# https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
chmod -R go-w "$(brew --prefix)/share"