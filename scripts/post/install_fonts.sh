#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Install Fira Code Nerd Font system-wise
# See https://docs.fedoraproject.org/en-US/quick-docs/fonts/
# The font files are already in /usr/local/share/fonts and will be copied 
# during build.
sudo chown -R root: /usr/share/fonts/fira-code-nerd-font
sudo chmod 644 /usr/share/fonts/fira-code-nerd-font/*
sudo restorecon -vFr /usr/share/fonts/fira-code-nerd-font
sudo fc-cache -v
