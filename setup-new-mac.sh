#!/bin/bash

# this is a work in progress. 
# download this script: curl --remote-name https://raw.githubusercontent.com/naudecruywagen/dotfiles/master/setup-new-mac.sh

echo "Instaling Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Rather install the latest binary of macvim https://github.com/macvim-dev/macvim/releases/tag/snapshot-151
# echo "Instaling macvim"
# brew install macvim

echo "Setting PATH"
export PATH=/usr/local/bin:$PATH

echo "Creating dotfiles directory"
mkdir ~/git/dotfiles

echo "Cloning dotfiles repo"
git clone git@github.com:naudecruywagen/dotfiles.git ~/git/dotfiles

echo "Linking dotfiles"
ln -s ~/git/dotfiles/.zshrc ~/.zshrc
ln -s ~/git/dotfiles/.ideavimrc ~/.ideavimrc
ln -s ~/git/dotfiles/.xvimrc ~/.xvimrc
ln -s ~/git/dotfiles/.vimrc ~/.vimrc

echo "Instaling oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Disabling press and hold"
defaults write -g ApplePressAndHoldEnabled -bool false

echo "Installing rbenv"
brew install rbenv

echo "Installing fastlane"
gem install fastlane

echo "Installing cocoapods"
gem install cocoapods 1.5.2
