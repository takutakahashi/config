#!/bin/bash
cp -f $HOME/.dotfiles/home/.zshrc $HOME/.zshrc
cp -rf $HOME/.dotfiles/home/.config/nvim $HOME/.config/
sudo cp -rf $HOME/.dotfiles/home/.dev/bin/* /usr/local/bin/
git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/opt/packer.nvim
curl -sSfL \
  https://raw.githubusercontent.com/aquaproj/aqua-installer/v1.19.2/aqua-installer |
  bash
export AQUA_GLOBAL_CONFIG=${AQUA_GLOBAL_CONFIG:-}:${XDG_CONFIG_HOME:-$HOME/.config}/aquaproj-aqua/aqua.yaml
aqua i -a
