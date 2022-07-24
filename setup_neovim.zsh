#!/usr/bin/env zsh

# install the Droid Sans Mono for Powerline Nerd Font
# This is for use with vim-airline and nerdtree plugins & possibly others down the line.
DROID_SANS_MONO_FONT='Droid Sans Mono for Powerline Nerd Font Complete.otf'

mkdir -p ~/.local/share/fonts 
cd ~/.local/share/fonts 
if [ ! -e $DROID_SANS_MONO_FONT ] ; then
  echo "Installing $DROID_SANS_MONO_FONT ..."
  curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
else
  echo "$DROID_SANS_MONO_FONT already exists, nothing to do here ..."
fi

# install the vim-plug
if [ ! -e "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim ] ; then
  echo "Installing vim-plug ..."
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
else
  echo "vim-plug is already installed"
fi
