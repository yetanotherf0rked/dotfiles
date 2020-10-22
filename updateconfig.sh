#!/bin/sh
mv ~/.bashrc ~/.bashrcbackup
mv ~/.vimrc ~/.vimrcbackup
ln -S .bashrc ~
ln -S .vimrc ~
ln -S .vimrc ~/.config/nvim/init.vim
mv
~/.local/lib/python3.8/site-packages/powerline/config_files/colorschemes/default.json
~/.local/lib/python3.8/site-packages/powerline/config_files/colorschemes/default.json.backup
mv
~/.local/lib/python3.8/site-packages/powerline/config_files/themes/shell/default.json
~/.local/lib/python3.8/site-packages/powerline/config_files/themes/shell/default.json.backup
ln -S .config/powerline/colorschemes/themes/shell/default.json
ln -S .config/powerline/themes/shell/default.json
