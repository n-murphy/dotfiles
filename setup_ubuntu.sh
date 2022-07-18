#!/usr/bin/bash

# For anything that we can't install via brew switch we will use apt instead.


# #############################################################################
# Install the following:
# fonts-fira: for use with pimping the prompt with spaceship
# whois: because I want the mkpasswd utility for use with cloud-init
# #############################################################################
echo "You may be prompted to enter your user password in order to run sudo"
sudo apt update && \ 
sudo apt install -y \
fonts-firacode \ 
whois


# #############################################################################
# Download and install deb packages
# #############################################################################