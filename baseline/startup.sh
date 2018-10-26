#!/bin/sh

if [ ! -d "$HOME/abbatoir" ]; then
  mkdir $HOME/abbatoir
fi
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

