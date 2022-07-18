#!/usr/bin/bash

# remove zsh
sudo apt --purge remove -y zsh

# if required reset the shell to bash
if [ "$SHELL" = '/bin/bash' ] ; then
  echo "\$SHELL is already set to ${SHELL}"
else
  echo "You may be prompted to enter your password for the chsh -s $(which bash) command ..."
  chsh -s $(which bash)
fi