#!/usr/bin/bash

# We have to assume that zsh is not already installed hence this script is running bash by default.


# #############################################################################
# Functions
# #############################################################################

function exists() {
  # command -v is similar to `which`
  # https://stackoverflow.com/questions/592620/how-can-i-check-if-a-program-exists-from-a-bash-script/677212#677212
  command -v $1 >/dev/null 2>&1
}


if [[ $(uname) == "Linux" ]] ; then
  if exists zsh ; then
    echo "zsh is already installed exiting gracefully ..."
    exit 0
  else
    echo "You may be prompted for your password in order to run the next set of commands using sudo ..."
    sudo apt update
    sudo apt install -y zsh
  fi # zsh already exists
  
else
  echo "This is not Linux but $(uname) exiting gracefully ..."
  exit 0
fi # Linux