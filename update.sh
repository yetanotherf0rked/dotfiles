#!/bin/sh

DIR=`dirname $0`

# zsh & aliases
cp $HOME/.zshrc $HOME/.alias.zsh $DIR/zsh/

# nvim
cp $HOME/.config/nvim/init.vim $DIR/nvim/

# terminator
cp $HOME/.config/terminator/config $DIR/terminator/
