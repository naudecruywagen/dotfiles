#/bin/bash

# this is a work in progress. 

echo "Instaling Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Instaling macvim"
brew install macvim

echo "Setting PATH"
export PATH=/usr/local/bin:$PATH

echo "Creating git directory"
mkdir ~/git

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
