#!/bin/sh
mv ~/.bashrc ~/.bashrcbackup
mv ~/.vimrc ~/.vimrcbackup
ln -S .bashrc ~
ln -S .vimrc ~
ln -S .vimrc ~/.config/nvim/init.vim
