#!/bin/bash

DIR=$( cd "$( dirname "$0" )" && pwd )

DOT_FILES=".ackrc .editrc .gitconfig .gitignore .gvimrc .vimrc .zshrc"
for file in $DOT_FILES; do
  ln -s $DIR/$file ~/$file
done

ln -s $DIR/config.fish ~/.config/fish/config.fish

rm -r ~/.oh-my-zsh/custom
ln -s $DIR/oh_my_zsh/ ~/.oh-my-zsh/custom
