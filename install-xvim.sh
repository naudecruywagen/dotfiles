#!/bin/bash

# Instructions here https://github.com/XVimProject/XVim2
# and here https://github.com/XVimProject/XVim2/blob/master/SIGNING_Xcode.md

echo "Signing Xcode"
sudo codesign -f -s XcodeSigner /Applications/Xcode.app

echo "Building XVim2"
cd ~/git/XVim2/
make

