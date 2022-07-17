#!/usr/bin/bash

sudo apt --purge remove -y zsh
chsh -s $(which bash)