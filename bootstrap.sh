#!/bin/bash

cp -f $HOME/.dotfiles/home/.zshrc $HOME/.zshrc
curl -sSfL \
  https://raw.githubusercontent.com/aquaproj/aqua-installer/v1.0.0/aqua-installer |
  bash
aqua -c $HOME/.dotfiles/home/.config/aquaproj-aqua/aqua.yaml i
