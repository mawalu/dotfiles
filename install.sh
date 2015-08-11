#!/bin/sh
INSTALL=(.vim .vimrc .zshrc .tmuxinator)
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
for i in ${INSTALL[*]} ; do
    ln -s --force "$(pwd)/$i" $HOME
done
