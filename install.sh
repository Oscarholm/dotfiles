#!/bin/bash
# Fundamental requirements
brew install vim cmake python mono go nodejs
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## Creating symbolic links to dotfiles folder which should be cloned into $HOME
ln -s ~/dotfiles/.bash/.bashrc ~/.bashrc
ln -s ~/dotfiles/.bash/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.vim/.vimrc ~/.vimrc

# YCM for vim
vim +PluginInstall +qall
cd ~/.vim/bundle/youcompleteme
python3 install.py --all --system-libclang
