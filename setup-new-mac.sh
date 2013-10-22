#/bin/bash


# this is a work in progress. I will probably only finish it if I ever need to rebuild an OSX instance from scratch.

echo "Instaling Homebrew"

ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

brew install macvim
brew install git

export PATH=/usr/local/bin:$PATH

git config --global user.name "Martin Cronjé"
git config --global user.email "martin@nreality.com"

curl -s -O \
  http://github-media-downloads.s3.amazonaws.com/osx/git-credential-osxkeychain

chmod u+x git-credential-osxkeychain

sudo mv git-cedential-osxkeychain `dirname \`which git\``

git config --global credential.helper osxkeychain

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

git clone https://github.com/martincronje/dotfiles ~/.amok-osx-config

echo "Linking dotfiles"

ln -s ~/.dotfiles/.tmux.comf ~/.tmux.conf
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.gvimrc ~/.gvimrc

ln -s ~/.dotfiles/zsh/themes/amok.zsh-theme  ~/.oh-my-zsh/themes/amok.zsh-themeD
ln -s ~/.dotfiles/.vim/colors/Monokai.vim ~/.vim/colors/Monokai.vim
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

echo "RVM"

curl -#L https://get.rvm.io | bash -s stable --autolibs=3 --ruby
