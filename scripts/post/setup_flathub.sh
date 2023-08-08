#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
