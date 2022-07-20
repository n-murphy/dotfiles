#!/bin/zsh

echo "<<<Starting antidote setup>>>"


ANTIDOTE_DIR="${HOME}/.config/antidote"

if exists antidote ; then
  echo "antidote is already installed, nothing to do here ..."
else
  echo "Checking if $ANTIDOTE_DIR exists ..."

  if [ -e "$ANTIDOTE_DIR" ] ; then
    echo "Checking if the $ANTIDOTE_DIR is empty before cloning ..."
    if [ -z "$(command ls -A $ANTIDOTE_DIR)" ] ; then
      echo "$ANTIDOTE_DIR is empty ..."
    else
      echo "$ANTIDOTE_DIR exists but is **NOT** empty, exiting as there is nothing to do here ..."
      exit 0
    fi # antidote directory is empty?
  else
    echo "$ANTIDOTE_DIR does not exist ..."
  fi # antidote directory exists
fi # exists antidote 

echo "Proceeding with clone of antibody github repository ..."
git clone --depth=1 https://github.com/mattmc3/antidote.git $ANTIDOTE_DIR

echo "Completing antidote installation ..."
source ${ANTIDOTE_DIR}/antidote.zsh

echo "Generating static ${HOME}/.zsh_plugins.zsh"
antidote bundle < ${HOME}/.zsh_plugins.txt > ${HOME}/.zsh_plugins.zsh