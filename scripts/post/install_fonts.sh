#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Install Fira Code Nerd Font system-wise
# See https://docs.fedoraproject.org/en-US/quick-docs/fonts/
# The font files are already in /usr/local/share/fonts and will be copied 
# during build.
sudo chown -R root: /usr/local/share/fonts/FiraCodeNerdFont
sudo chmod 644 /usr/local/share/fonts/FiraCodeNerdFont/*
sudo restorecon -vFr /usr/local/share/fonts/FiraCodeNerdFont
sudo fc-cache -v
