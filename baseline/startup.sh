#!/bin/sh

cp .zshrc ~/
cp .tmux.conf ~/
cp .vimrc ~/
if [ ! -d "$HOME/abbatoir" ]; then
  mkdir $HOME/abbatoir
fi
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
(cd ~/.oh-my-zsh/plugins; git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins

