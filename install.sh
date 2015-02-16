#!/bin/sh
INSTALL=(.vim .vimrc .zshrc .tmuxinator .oh-my-zsh)
for i in ${INSTALL[*]} ; do
    ln -s "$(pwd)/$i" $HOME
done
