#!/usr/bin/env zsh

echo "\n<<<Starting Node Setup>>>\n"

# Node versions are managed with `n`, which is in the brewfile
# See zshrc for the N_PREFIX variable and addition to the path array

if exists ${N_PREFIX}/bin/node; then
  echo "node $(${N_PREFIX}/bin/node --version) and npm $(${N_PREFIX}/bin/npm --version), already installed"
else
  echo "Installing node and npm with n ..."
  n lts
fi


# Install Global NPM Packages
# npm i -g firebase-tools
# can also be written as `npm install --global firebase-tools`
#npm i -g --force swaggerhub-cli
echo "Global NPM Packages Installed:"
npm list --global --depth=0
