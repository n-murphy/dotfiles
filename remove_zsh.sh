#!/usr/bin/bash

sudo apt --purge remove zsh
chsh -s $(which bash)