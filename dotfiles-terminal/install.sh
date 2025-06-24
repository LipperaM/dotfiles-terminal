#!/bin/bash

# Install dependencies
sudo apt update
sudo apt install -y git curl zsh fonts-powerline

# Install Kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh
mkdir -p ~/.local/bin
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/bin/
ln -sf ~/.local/kitty.app/bin/kitten ~/.local/bin/

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Copy conf files
cp ./zsh/.zshrc ~/
cp ./zsh/.p10k.zsh ~/
mkdir -p ~/.config/kitty
cp ./kitty/kitty.conf ~/.config/kitty/

# Set ZSH as default
chsh -s $(which zsh)

echo "Done, restart or launch 'zsh'"

