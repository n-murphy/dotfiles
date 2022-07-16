#!/usr/bin/env zsh

echo "\n<<<Starting VSCode Setup>>>\n"
echo ""

VSCODE_SETTINGS_DIR="${HOME}/Library/Application Support/Code/User"



if [[ -d "$VSCODE_SETTINGS_DIR" ]] ; then 
  echo "Applying custom settings.json to $VSCODE_SETTINGS_DIR"
  cp ./settings.json $VSCODE_SETTINGS_DIR
else
  echo "$VSCODE_SETTINGS_DIR directory not found, exiting disgracefully"
  exit 1
fi

echo "Installing VS Code Extensions"
cat ./vscode_extensions | xargs -L 1 code --install-extension