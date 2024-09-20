#!/usr/bin/env bash
# Created by: Sam Corbett
# Created on: Sept 2024
# AWS Debian Linux dotfiles and setup script

sudo apt update
sudo apt upgrade -y

# common programs
sudo apt remove w3m -y
sudo apt install git -y
sudo apt install gh -y
sudo apt install stow -y
sudo apt install tree -y

# install NeoVim from source
mkdir temp
cd temp || exit
sudo apt-get install ninja-build gettext cmake unzip curl build-essential -y
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd .. || exit
cd .. || exit
sudo rm -r ./temp

# install programming languages, bun and Java
sudo apt install -y default-jdk
curl -fsSL https://bun.sh/install | bash
source ~/.bashrc

# reboot system
sudo reboot now
