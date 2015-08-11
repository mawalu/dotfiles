#!/bin/sh
INSTALL=(.vim .vimrc .zshrc .tmuxinator)

if [ ! -d ~/.oh-my-zsh ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

for i in ${INSTALL[*]} ; do
    ln -s --force "$(pwd)/$i" $HOME
done

zsh
